



import 'package:flutter/material.dart';
import 'package:pickrewardapp/card/viewmodel/card.search.dart';
import 'package:provider/provider.dart';



class SearchCardBar extends StatefulWidget {
  const SearchCardBar({ Key? key }) : super(key: key);

  @override
  _SearchCardBarState createState() => _SearchCardBarState();
}

class _SearchCardBarState extends State<SearchCardBar> {

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    SearchCardViewModel searchCardViewModel = Provider.of<SearchCardViewModel>(context, listen:false);
    bool searchedFlag = searchCardViewModel.searchCardFlag;


    return SizedBox(
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
                searchCardViewModel.changeKeyword(value);
              },
              onEditingComplete: (){
                searchCardViewModel.searchCard();
              },
              onTap:(){
                searchCardViewModel.onFocusSearch();
              },
              decoration: InputDecoration(
                hintText: '搜尋',
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
            Container(
              child:TextButton(
                onPressed: (){ 
                  _searchController.clear();
                  FocusScope.of(context).unfocus();
                  searchCardViewModel.cancel();
                },
                child:Text('取消')
              )
            )
        ]
      )
    );
  }
}





