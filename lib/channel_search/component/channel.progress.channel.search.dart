
import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.search.dart';
import 'package:provider/provider.dart';

class SearchChannelBar extends StatefulWidget {
  const SearchChannelBar({ Key? key, required this.searchChannelViewModel }) : super(key: key);
  final SearchChannelViewModel searchChannelViewModel;

  @override
  _SearchChannelBarState createState() => _SearchChannelBarState();
}

class _SearchChannelBarState extends State<SearchChannelBar> {

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool searchedFlag = widget.searchChannelViewModel.searchChannelFlag;
    return Container(
      height:40,
      child:Row(
        children:[
          SizedBox(width:10),
          Expanded(
            child:TextField(
              controller:_searchController,
              textAlign: TextAlign.start,
              textAlignVertical:TextAlignVertical.bottom,
              onChanged: (String value){
                widget.searchChannelViewModel.changeKeyword(value);
              },
              onEditingComplete: (){
                widget.searchChannelViewModel.searchChannel();
                widget.searchChannelViewModel.setLoading();
              },
              onTap: (){
                widget.searchChannelViewModel.onFocusSearch();
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
                _searchController.clear();
                FocusScope.of(context).unfocus();
                widget.searchChannelViewModel.cancel();
              },
              child:Text('取消')
            )
        ]
      )
    );
  }
}

