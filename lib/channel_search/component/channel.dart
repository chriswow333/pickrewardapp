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

  @override
  Widget build(BuildContext context) {

    ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context, listen:false);
    return Container(
      padding: const EdgeInsets.all(10),
      child:Column(
        children:[
          RewardProgressBar(controller:_controller),
          const SizedBox(height: 20),
          Expanded(
            child:PageView(
              physics: ClampingScrollPhysics(),
              controller:_controller,
              // allowImplicitScrolling:true,
              onPageChanged:(int page){
                channelProgressSelectedPage.changePage(page);
              },
              children:[
                ChannelProgress(),
                FindCardProgress(controller:_controller),
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
    
//     ChannelProgressSelectedPage channelProgressSelectedPage = Provider.of<ChannelProgressSelectedPage>(context);

//     return Container(
//       padding: EdgeInsets.all(10),
//       child: Column(children: [
//         RewardProgressBar(page: channelProgressSelectedPage.page,changePage: (int page) {
//           channelProgressSelectedPage.changePage(page);
//         }),
//         const SizedBox(height: 20),
//         if (channelProgressSelectedPage.page == ChannelProgressPage.channel)
//           const Expanded(
//             child: ChannelProgress(),
//           ),
//         if (channelProgressSelectedPage.page == ChannelProgressPage.findCard)
//           Expanded(
//             child: FindCardProgress(changePage: (int page){
//                 channelProgressSelectedPage.changePage(page);

//             }),
//           ),
//         if (channelProgressSelectedPage.page == ChannelProgressPage.result)
//           const Expanded(
//             child: CardResultsProgress(),
//           ),
//       ]),
//     );
//   }
// }
