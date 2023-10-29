



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

    return SizedBox(
      height:40,
      child:Row(
        children:[
          Container(
            child:Image.asset(
              'images/logo.png'
            ),
            height: 40,
          ),
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
                searchCardViewModel.setLoading();
                searchCardViewModel.searchCard();
              },
              decoration: InputDecoration(
                hintText: '信用卡',
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
          
          if(searchCardViewModel.searchCardFlag) 
            Container(
              child:TextButton(
                onPressed: (){ 
                  FocusScope.of(context).unfocus();
                  _searchController.clear();
                  searchCardViewModel.changeKeyword(_searchController.text);
                },
                child:Text('取消')
              )
            )
            


        ]
      )
      
      
    );
  }
}





