
import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.search.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class SearchChannelBar extends StatefulWidget {
  const SearchChannelBar({ Key? key }) : super(key: key);

  @override
  _SearchChannelBarState createState() => _SearchChannelBarState();
}

class _SearchChannelBarState extends State<SearchChannelBar> {

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SearchChannelViewModel searchChannelViewModel = Provider.of<SearchChannelViewModel>(context);
    bool searchedFlag = searchChannelViewModel.searchChannelFlag;
    return Container(
      height:40,
      child:Row(
        children:[
          Container(
            child:Image.asset(
              'images/logo.png',
            ),
          ),
          SizedBox(width:10),
          Expanded(
            child:TextField(
              controller:_searchController,
              textAlign: TextAlign.start,
              textAlignVertical:TextAlignVertical.bottom,
              onChanged: (String value){
                searchChannelViewModel.changeKeyword(value);
              },
              onEditingComplete: (){
                searchChannelViewModel.searchChannel();
                searchChannelViewModel.setLoading();
              },
              decoration: InputDecoration(
                hintText: '搜尋通路',
                prefixIcon:const Icon(Icons.search),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )
              ),
              style:const TextStyle(
                fontSize:18,
              ),
            ),
          ),
          if(searchedFlag)
            TextButton(
              onPressed: (){
                FocusScope.of(context).unfocus();
                _searchController.clear();
                searchChannelViewModel.changeKeyword(_searchController.text);
              },
              child:Text('取消')
            )
        ]
      )
    );
  }
}

