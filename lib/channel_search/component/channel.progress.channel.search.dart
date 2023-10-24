
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
          Icon(
            Icons.abc_outlined,
            size: 40,
          ),
          SizedBox(width:10),
          if(searchedFlag)
            TextButton(
              onPressed: (){
                _searchController.text = "";
                searchChannelViewModel.changeKeyword("");
              }, 
              child:Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Palette.kToBlue[600],
                size:20
              ),
            ),
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
                suffixIcon: IconButton(
                  icon:const Icon(Icons.clear),
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    _searchController.clear();
                    searchChannelViewModel.changeKeyword(_searchController.text);
                  },
                ),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )
              ),
              style:const TextStyle(
                fontSize:18,
              ),
            ),
          ),
          

        ]
      )
      
      
    );
  }
}

