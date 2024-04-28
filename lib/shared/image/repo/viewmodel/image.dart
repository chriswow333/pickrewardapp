

import 'dart:typed_data';

import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/shared/config/logger.dart';
import 'package:pickrewardapp/shared/image/repo/v1/image.dart';
import 'package:pickrewardapp/shared/image/repo/v1/proto/generated/image.pb.dart';

class ImageViewModel{
  
  ImageViewModel._internal();
  
  static final ImageViewModel _instance = ImageViewModel._internal();
  static ImageViewModel get instance => _instance;
  factory ImageViewModel(){
    ImageService().init();
    return _instance;
  }

  final Map<String, Uint8List?> _image = {};

  bool hasImage(String type, String id) {
    return _image.containsKey(type+id);
  }

  Uint8List getImage(String type, String id) {
    return _image[type+id]!;
  }



  Future<Uint8List?> downloadImage(String type, String id) async {
    
    if(_image.containsKey(type+id)) {
      return _image[type+id];
    }

    try {
      ImageReq req = ImageReq();
      req.type = type;
      req.id = id;
      ImageReply imageReply = await ImageService().imageClient.downloadImage(req);
      if (imageReply.reply.status != 0){
        logger.e("error reply");
      }

      final image = imageReply.image;

      _image[type+id] = Uint8List.fromList(image.data);
      return  _image[type+id];
     
    } on GrpcError catch (e) {
      logger.e(e);
    } catch (e) {
      logger.e(e);
    }

    _image[type+id] = null;
    return null;

  }
}