import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel/component/channel.showlabel.dart';
import 'package:pickrewardapp/channel/component/channel.item.dart';
import 'package:pickrewardapp/channel/component/search.channel.dart';
import 'package:pickrewardapp/channel/component/search.channel.item.dart';
import 'package:pickrewardapp/channel/widgets/selected.bar.dart';
import 'package:pickrewardapp/channel/viewmodel/channel.search.dart';
import 'package:provider/provider.dart';



class ChannelProgress extends StatelessWidget {
  const ChannelProgress({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    SearchChannelViewModel searchChannelViewModel = Provider.of<SearchChannelViewModel>(context);
    return Container(
      padding: const EdgeInsets.only(right:5),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          if(searchChannelViewModel.searchChannelFlag)
            SearchChannelItems(controller:controller),
          if(!searchChannelViewModel.searchChannelFlag)
            Expanded(
              child:NormalChannelGroup(controller: controller,),
            ),
          const SizedBox(
            height:20
          ),
          SizedBox(
           child:SelectedChannelResult(controller: controller,),
          )
        ]
      )
    );
  }
}

class ChannelHeaderTitle extends StatelessWidget {
  const ChannelHeaderTitle({super.key,});

  @override
  Widget build(BuildContext context) {

    SearchChannelViewModel searchChannelViewModel = Provider.of<SearchChannelViewModel>(context);
    return Container(
      child:Column(
        children:[
          Container(
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                if(!searchChannelViewModel.searchChannelFlag)
                  SizedBox(
                    height: 50,
                    child:Container(
                      padding: const EdgeInsets.only(right:20),
                      child:Image.asset(
                        'images/logo.png',
                      ),
                    )
                  ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top:5),
                    child:const SearchChannelBar(),
                  ),
                ),
              ]
            ),
          ),
        ]
      )
    );
  }
}


class NormalChannelGroup extends StatelessWidget {
  const NormalChannelGroup({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const ShowLabelItems(),
          const SizedBox(height:20), 
          Expanded(
            child:Stack(
              children:[
                Container(
                  child:const ChannelItemGroups(),
                )
              ]
            )
          ),
        ]
      )
    );
  }
}