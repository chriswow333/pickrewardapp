

import 'package:flutter/material.dart';


class ChannelCategoryTypes extends StatelessWidget {
  const ChannelCategoryTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:Axis.horizontal,
      child:Row(
        children:[
          ChannelCategoryType(),
          ChannelCategoryType(),
          ChannelCategoryType(),
        ]
      ),
    );
  }
}

class ChannelCategoryType extends StatelessWidget {
  const ChannelCategoryType({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ChannelItems extends StatelessWidget {
  const ChannelItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}