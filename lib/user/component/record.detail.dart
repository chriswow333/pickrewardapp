

import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/component/record.edit.dart';
import 'package:pickrewardapp/user/model/user_record.dart';
import 'package:pickrewardapp/user/viewmodel/user_record.dart';
import 'package:provider/provider.dart';

class UserEventDetail extends StatelessWidget {
  const UserEventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:10, right:10,),
      width:double.infinity,
      child:const Column(
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
    
    UserRecordViewModel userRecordViewModel = Provider.of<UserRecordViewModel>(context);
    Map<DateTime, List<UserRecord>> userRecordMapper = userRecordViewModel.getUserRecords();
    print(userRecordMapper);

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(DateTime dateTime in  userRecordMapper.keys)
            UserEventGroupByDate(dateTime: dateTime, userRecords: userRecordMapper[dateTime] ?? [],),
        ]
      )
    );
  }
}


class UserEventGroupByDate extends StatelessWidget {
  const UserEventGroupByDate({super.key, required this.userRecords, required this.dateTime});

  final DateTime dateTime;
  final List<UserRecord> userRecords;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Container(
            child:Text('${dateTime.month}月${dateTime.day}日')
          ),

          for (UserRecord userRecord in userRecords)
            UserEventItem(userRecord: userRecord,),

        ] 
      )
    );
  }
}



class UserEventItem extends StatelessWidget {
  const UserEventItem({super.key, required this.userRecord});

  final UserRecord userRecord;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:5, bottom: 5),
      child:Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Palette.kToBlack[0],
        ),
        child:Container(
          padding: const EdgeInsets.only(top:20,bottom: 20, left:10, right:10),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text('${userRecord.channelName}'),
                  Text('NT\$${userRecord.cost}'),
                ],
              ),
              const SizedBox(height:3,),
              Container(
                child:Text('${userRecord.recordTime!.year}/${userRecord.recordTime!.month}/${userRecord.recordTime!.day} ${userRecord.cardName}')
              ),
              const SizedBox(height:3,),
              Container(
                child:Text('回饋${userRecord.getPercentage}% | 省下NT\$${userRecord.getReturn}')
              ),
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
      padding: const EdgeInsets.only(top:10),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Text('消費紀錄',
            style: TextStyle(
              color: Palette.kToBlack[900],
              fontSize: 20,
            ),
          ),
          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RecordEditPage()));
            },
            child:Text('+',
              style: TextStyle(
                color: Palette.kToYellow[300],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
        ]
      )
    );
  }
}
