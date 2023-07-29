

import 'package:flutter/material.dart';

class CardActivityDetails extends StatelessWidget {
  const CardActivityDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          CardActivityDetail(),
        ],
      ),
    );
  }
}

class CardActivityDetail extends StatelessWidget {
  const CardActivityDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardActivityDetailName(),
          CardActivityDetailDescs(),
        ]
      ),
    );
  }
}

class CardActivityDetailName extends StatelessWidget {
  const CardActivityDetailName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('國內平日消費滿NT\$９萬享居家清潔服務一次，達NT\$18萬享2次(每年上限２次)',
        style:TextStyle(
          color:Colors.cyan[900],
          overflow: TextOverflow.clip,
        ),
      )
    );
  }
}


class CardActivityDetailDescs extends StatelessWidget {
  const CardActivityDetailDescs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        CardActivityDetailDesc(desc: '活動日期: 2023/1/1~2023/9/30。',),
        CardActivityDetailDesc(desc:"權益內容:持卡年度期間１，國內平日消費累積達NT\$9萬享免費居家清潔服務一次(達NT\$18萬享2次)，每年上限2次。"),
        CardActivityDetailDesc(desc:"使用期限：居家清潔服務使用期限為累積消費的持卡年度迄日+1年的6月底。例如：持卡年度：2022/11/5~2023/11/30，並於此期間取得居家清潔服務權益次數，則需於2024/6/30前使用完畢。"),
        CardActivityDetailDesc(desc:"居家服務項目２: 提供直立式洗衣機、室內冷氣機、一般型抽油煙機、床墊(雙人床)之清洗服務4選1。"),
        CardActivityDetailDesc(desc:"*僅限預約以上四項服務，恕無法更換為其它服務類別、等值現金或其他商品。單次預約清洗數量為一件。"),
        CardActivityDetailDesc(desc:"*機型過於老舊、特殊機型、非標準服務地區、宜蘭、花蓮、台東和外島…等狀況將無法提供清洗服務，請務必先詳閱以下服務地區一覽表和注意事項或致電呼叫黃背心客服查詢。"),
      ]
    );  
  }
}


class CardActivityDetailDesc extends StatelessWidget {
  const CardActivityDetailDesc({super.key, required this.desc});
  final String desc;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child:Text(desc,
      style:TextStyle(
          color:Colors.cyan[900],
          overflow: TextOverflow.clip,
        ),
      )
    );
  }
}