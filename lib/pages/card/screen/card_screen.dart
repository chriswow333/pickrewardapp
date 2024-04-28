
import 'package:flutter/cupertino.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';

import 'package:pickrewardapp/pages/card/component/card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          border:null,
          transitionBetweenRoutes: false,
          leading:Container(
            child:const Text('信用卡',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
          ),
          // middle: SearchCardBar(),
        ),
        child:SizedBox.expand(
          child:SafeArea(
            child:Center(
              child:LayoutBuilder(
                builder:((context, constraints) {
                  double screenWidth = MediaQuery.of(context).size.width;
                  double tabletWidthThreshold = GlobalSize.MAX_WIDTH;
                  if (screenWidth > tabletWidthThreshold) {
                    return SizedBox(
                      width: tabletWidthThreshold,
                      child: const CardComponent(),
                    );
                  } else {
                    // 屏幕较小，不限制应用宽度
                    return  const CardComponent();
                  }
                }),
              ),
            ),
          ),
        )
      );
  }
}