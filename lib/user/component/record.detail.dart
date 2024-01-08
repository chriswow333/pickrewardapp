

import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';

class UserEventDetail extends StatelessWidget {
  const UserEventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:10, right:10,),
      width:double.infinity,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          UserEventDetailTitle(),
          Expanded(
            child:SingleChildScrollView(
              child:UserEvents(),
            ),
          )
        ],
      ),
    );
  }
}



class UserEvents extends StatelessWidget {
  const UserEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          UserEventGroupByDate(),
          UserEventGroupByDate(),
          UserEventGroupByDate(),
          
        ]
      )
    );
  }
}


class UserEventGroupByDate extends StatelessWidget {
  const UserEventGroupByDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Container(
            child:Text('12月2日')
          ),
          UserEventItem(),
          UserEventItem(),
          UserEventItem(),

        ] 
      )
    );
  }
}



class UserEventItem extends StatelessWidget {
  const UserEventItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:5, bottom: 5),
      child:Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Palette.kToBlack[0],
        ),
        child:Container(
          padding: EdgeInsets.only(top:20,bottom: 20, left:10, right:10),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text('遠東SOGO'),
                  Text('NT\$1000'),
                ],
              ),

              Container(
                child:Text('2023/12/02 CUBE卡')
              ),
              Container(
                child:Row(
                  children:[
                    Text('回饋3%'),
                    Text('|'),
                    Text('省下'),
                    Text('NT\$66'),
                  ]
                )
              )
            ]
          )
        )
        
      )
    );
  }
}


class UserEventDetailTitle extends StatelessWidget {
  const UserEventDetailTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Text('消費紀錄',
            style: TextStyle(
              color: Palette.kToBlack[900],
              fontSize: 20,
            ),
          ),
          Text('+',
            style: TextStyle(
              color: Palette.kToYellow[300],
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        ]
      )
    );
  }
}
