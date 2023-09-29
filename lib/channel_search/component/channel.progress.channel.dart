import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.item.dart';

import 'channel.progress.channel.categorytype.dart';


class ChannelProgress extends StatelessWidget {
  const ChannelProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:[
        SearchChannelBar(),
        SizedBox(height:20), 
        ChannelCategoryTypes(),
        SizedBox(height:20), 
        Expanded(
          child:ChannelItemGroups(),
        ),
      ]
    );
  }
}



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
    return SizedBox(
      height:40,
      child:TextField(
        controller:_searchController,
        textAlign: TextAlign.start,
        textAlignVertical:TextAlignVertical.bottom,
        onChanged: (String value){
          // creditCardViewModel.searchKeyword(value);
        },
        decoration: InputDecoration(
          hintText: '消費通路',
          prefixIcon:const Icon(Icons.search),
          suffixIcon: IconButton(
            icon:const Icon(Icons.clear),
            onPressed: () {
              _searchController.clear();
              // creditCardViewModel.searchKeyword('');
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






