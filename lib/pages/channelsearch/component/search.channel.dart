
import 'package:flutter/material.dart';
import 'package:pickrewardapp/pages/channelsearch/viewmodel/channel.search.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class SearchChannelBar extends StatefulWidget {

  const SearchChannelBar({ super.key, });

  @override
  _SearchChannelBarState createState() => _SearchChannelBarState();
}

class _SearchChannelBarState extends State<SearchChannelBar> {

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    SearchChannelViewModel searchChannelViewModel = Provider.of<SearchChannelViewModel>(context);
    
    bool searchedFlag = searchChannelViewModel.searchChannelFlag;

    return SizedBox(
      height:40,
      child:Row(
        children:[
          const SizedBox(width:10),
          Expanded(
            child:TextField(
              controller:_searchController,
              textAlign: TextAlign.start,
              textAlignVertical:TextAlignVertical.bottom,
              onChanged: (String value){
                searchChannelViewModel.changeKeyword(value);
              },
              onEditingComplete:(){
                searchChannelViewModel.searchChannel();
              },
              onTap:(){
                searchChannelViewModel.onFocusSearch();
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
                searchChannelViewModel.cancel();
              },
              child:Text('取消',
                style: TextStyle(
                  color:Palette.kToYellow[400],
                  fontSize: 17,
                ),
              ),
            ),
        ]
      )
    );
  }
}

