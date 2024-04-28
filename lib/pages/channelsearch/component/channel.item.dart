
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pickrewardapp/pages/channelsearch/model/channel.dart';
import 'package:pickrewardapp/pages/channelsearch/viewmodel/channel.dart';
import 'package:pickrewardapp/pages/channelsearch/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/repo/image/viewmodel/image.dart';
import 'package:provider/provider.dart';


class ChannelItemGroups extends StatefulWidget {
  const ChannelItemGroups({super.key});

  @override
  State<ChannelItemGroups> createState() => _ChannelItemGroupsState();
}

class _ChannelItemGroupsState extends State<ChannelItemGroups> {

  final ScrollController _controller = ScrollController();

  @override 
  void initState(){
    _controller.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
      
    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
    List<ShowLabelModel> showLabelModels = channelViewModel.showLabelModels;
    List<ShowLabelGlobalKeyModel> keyModels = channelViewModel.getAllShowLabelGlobalKeyModels();

    return Container(
      child:NotificationListener(
        onNotification: (ScrollNotification notification){
          if (notification is UserScrollNotification) {
            // _onUserScrolled(notification.metrics.pixels);
            double totalItemHeight = 0;
            for(ShowLabelGlobalKeyModel k in keyModels) {
              totalItemHeight += k.channelItem.currentContext!.size!.height;
              if(notification.metrics.pixels < totalItemHeight) {
                channelViewModel.selectedShowLabel = k.id;
                Scrollable.ensureVisible(channelViewModel.getChannelCategoryGlobalKeys(k.id).currentContext!,
                  duration:const Duration(milliseconds: 300),
                );
                break;
              }
            }
          }
          return false;
        },
        child: SingleChildScrollView(
          controller: _controller,
          child:Wrap(
            runSpacing: 25,
            children:[
              for(ShowLabelModel c in showLabelModels)
                ChannelItemGroup(channelCategoryTypeModel: c, channelViewModel: channelViewModel,),
            ]
          )
        )
      )
    );
  }
}


class ChannelItemGroup extends StatefulWidget {
  const ChannelItemGroup({super.key, required this.channelCategoryTypeModel, required this.channelViewModel,});
  
  final ShowLabelModel channelCategoryTypeModel;
  final ChannelViewModel channelViewModel;
  
  @override
  State<ChannelItemGroup> createState() => _ChannelItemGroupState();
}

class _ChannelItemGroupState extends State<ChannelItemGroup> {

  @override
  void initState(){
    widget.channelViewModel.initChannelModels(widget.channelCategoryTypeModel.label,widget.channelCategoryTypeModel.order);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    String showLabel = widget.channelCategoryTypeModel.label;
    
    List<ChannelItemModel> channelItemModels = widget.channelViewModel.getChannelsByShowLabel(showLabel);

    bool hasMore = widget.channelViewModel.hasMoreChannels(showLabel);

    return Container(
      padding: const EdgeInsets.only(left:10, right:10),
      child:Container(
        padding: const EdgeInsets.all(10),
        key: widget.channelViewModel.getShowItemGlobalKeys(showLabel),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color:Palette.kToBlack[0],
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(widget.channelCategoryTypeModel.name,
              style:TextStyle(
                color:Palette.kToBlack[600],
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10,),
            GridView.builder(
              shrinkWrap:true,
              physics:const NeverScrollableScrollPhysics(),
              itemCount: channelItemModels.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 15,
                crossAxisSpacing: 10,
                // childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index){
                return ChannelItem(channelItemModel:channelItemModels[index]);
              }
            ),
            if(hasMore)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                AddMore(showLabel: showLabel,),
              ],
            ),
          ]
        ),
      )
    );
  }
}


class AddMore extends StatelessWidget {
  const AddMore({super.key, required this.showLabel});
  
  final String showLabel;

  @override
  Widget build(BuildContext context) {
    ChannelViewModel channelViewModel = Provider.of<ChannelViewModel>(context);
    
    return InkWell(
      onTap: (){
        channelViewModel.addMoreChannelsByShowLabel(showLabel);
      },
      child:Container(
        padding: const EdgeInsets.only(top:20),
        child:Container(
          width: 70,
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(
              color:Palette.kToBlack[200]!,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child:Text("查看更多",
            style: TextStyle(
              fontSize: 12,
              color:Palette.kToBlack[500],
              fontWeight: FontWeight.bold,
            ),
          )
        )
      )
    );
  }
}


class ChannelItem extends StatelessWidget {
  const ChannelItem({super.key, required this.channelItemModel});

  final ChannelItemModel channelItemModel;

  @override
  Widget build(BuildContext context) {

    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left:2, right:2),
        child:Column(
          children:[
            Expanded(
              child:ChannelItemIcon(channelItemModel:channelItemModel),
            ),
            ChannelItemName(name:channelItemModel.name),
          ],
        ),
      );
  }
}


class ChannelItemIcon extends StatelessWidget {
  const ChannelItemIcon({super.key, required this.channelItemModel});
  
  final ChannelItemModel channelItemModel;
  
  @override
  Widget build(BuildContext context) {


    if(ImageService().hasImage("channel",channelItemModel.imageName)){
      return Stack(
      alignment:Alignment.center,
      children:[
        CircleAvatar(
          radius:14,
          backgroundColor:Palette.kToBlack[0],
          child:Image.memory(ImageService().getImage("channel",channelItemModel.imageName))
        ),
        ChannelItemIconSelected(channelItemModel: channelItemModel,),
      ]
    );
    }

    Future<Uint8List?> data = ImageService().downloadImage("channel", channelItemModel.imageName);
    return Stack(
      alignment:Alignment.center,
      children:[
        CircleAvatar(
          radius:14,
          backgroundColor:Palette.kToBlack[0],
          child:FutureBuilder(
            future: data,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // While waiting for the future to complete, show a placeholder
                return Text('');
              } else if (snapshot.hasError) {
                // If an error occurs, display an error message
                return Text('');
              } else {
                // If the future has completed successfully, display the image
                return Image.memory(snapshot.data!);
              }
            },
          ),
        ),
        ChannelItemIconSelected(channelItemModel: channelItemModel,),
      ]
    );
  }
}

class ChannelItemIconSelected extends StatelessWidget {
  const ChannelItemIconSelected({super.key, required this.channelItemModel});
  final ChannelItemModel channelItemModel;

  @override
  Widget build(BuildContext context) {


    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    bool selected = criteriaViewModel.existChannel(channelItemModel.id);
    
    return TextButton(
      style:const ButtonStyle(
        alignment: Alignment.center,
        splashFactory:NoSplash.splashFactory,
        padding: MaterialStatePropertyAll(
          EdgeInsets.zero,
        )
      ),
      onPressed: (){
        criteriaViewModel.channel = channelItemModel;
      },
      child:Container(
        decoration: selected ? BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: Palette.kToYellow[300]!,
          ),
          shape: BoxShape.circle,
        ):null,
        width: 50,
        height: 50,
      )
    );
  }
}



class ChannelItemName extends StatelessWidget {
  const ChannelItemName({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height:20,
      child:FittedBox(
        fit: BoxFit.fitWidth, 
        child:Text(
          name,
          style:TextStyle(
            color: Palette.kToBlack[600],
          ),
        )
      )
    );
  }
}

