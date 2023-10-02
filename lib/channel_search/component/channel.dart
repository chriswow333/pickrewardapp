import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.channel.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.findcard.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.result.dart';
import 'package:pickrewardapp/channel_search/viewmodel/channel.progress.dart';

import 'package:provider/provider.dart';


class ChannelComponent extends StatefulWidget {
  const ChannelComponent({super.key});

  @override
  State<ChannelComponent> createState() => _ChannelComponentState();
}

class _ChannelComponentState extends State<ChannelComponent> with SingleTickerProviderStateMixin {

  late PageController _controller;
  int _page = ChannelProgressPage.channel;

  @override
  void initState(){
    super.initState();
     _controller = PageController();
  }



  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

   _handleChangePage(int page) {
    setState(() {
      _page = page;
    });
  }

  _changePage(int page){
    _controller.jumpToPage(page);
  }


  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(10),
      child:Column(
        children:[
          RewardProgressBar(page:_page, changePage: _changePage,),
          const SizedBox(height: 20),
          Expanded(
            child:PageView(
              controller:_controller,
              allowImplicitScrolling:true,
              onPageChanged:_handleChangePage,
              children:[
                ChannelProgress(),
                FindCardProgress(changePage: _changePage,),
                CardResultsProgress(),
              ]
            )
          ),
          
        ]
      ),
      
    );
  }
}

//     return Container(
//       child:  DefaultTabController(
//       initialIndex:0,
//       length: 1,
//       child: Container(
//         child:Column(
//           children:[
//             Container(
//               padding: EdgeInsets.all(10),
//               child:RewardProgressBar(),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child:TabBarView(
//                 viewportFraction: 20,
//                 controller: _controller,
                
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.all(10),
//                     child:const ChannelProgress(),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(10),
//                     child:const FindCardProgress(),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(10),
//                     child:const CardResultsProgress(),
//                   )
//                 ],
//               ),
//             ),
//           ]
//         )
//       ),
      
//     )
//     );
//   }
// }

// class ChannelComponent extends StatelessWidget {
//   const ChannelComponent({super.key});

//   @override
//   Widget build(BuildContext context) {
    

//     return Container(
//       padding: EdgeInsets.all(10),
//       child: Column(children: [
//         const RewardProgressBar(),
//         const SizedBox(height: 20),
//         if (channelProgressViewModel.progress == ChannelProgressEnum.Channel)
//           const Expanded(
//             child: ChannelProgress(),
//           ),
//         if (channelProgressViewModel.progress == ChannelProgressEnum.FindCard)
//           const Expanded(
//             child: FindCardProgress(),
//           ),
//         if (channelProgressViewModel.progress == ChannelProgressEnum.FindResult)
//           const Expanded(
//             child: CardResultsProgress(),
//           ),
//       ]),
//     );
//   }
// }
