



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

    SearchCardViewModel cardSearchViewModel = Provider.of<SearchCardViewModel>(context, listen:false);

    return SizedBox(
      height:40,
      child:TextField(
        controller:_searchController,
        textAlign: TextAlign.start,
        textAlignVertical:TextAlignVertical.bottom,
        onChanged: (String value){
          _searchController.text = value;
          cardSearchViewModel.changeKeyword(value);
        },
        onEditingComplete: (){
          cardSearchViewModel.setLoading();
          cardSearchViewModel.searchCard();
        },
        decoration: InputDecoration(
          hintText: '信用卡',
          prefixIcon:const Icon(Icons.search),
          suffixIcon: IconButton(
            icon:const Icon(Icons.clear),
            onPressed: () {
              _searchController.clear();
              cardSearchViewModel.changeKeyword(_searchController.text);
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
    );
  }
}





