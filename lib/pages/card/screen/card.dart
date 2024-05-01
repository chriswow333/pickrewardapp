
import 'package:flutter/cupertino.dart';
import 'package:pickrewardapp/pages/card/component/card.search.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';

import 'package:pickrewardapp/pages/card/component/card.dart';
import 'package:pickrewardapp/shared/config/palette.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor:Palette.kToBlack[0],
          transitionBetweenRoutes: false,
          border:Border(
            bottom: BorderSide(
            color: Palette.kToBlack[0]!,
            width: 0.0, // 0.0 means one physical pixel
            ),
          ),
          leading:Container(
            padding: EdgeInsets.only(left:12,),
            child:const Text('信用卡',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            )
          ),
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