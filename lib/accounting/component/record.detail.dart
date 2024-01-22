

import 'package:flutter/material.dart';
import 'package:pickrewardapp/accounting/component/record.edit.dart';
import 'package:pickrewardapp/accounting/model/user_record.dart';
import 'package:pickrewardapp/accounting/viewmodel/record.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class AccountingEventDetail extends StatelessWidget {
  const AccountingEventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:10, right:10,),
      width:double.infinity,
      child:const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          AccountingEventDetailTitle(),
          Expanded(
            child:SingleChildScrollView(
              child:AccountingEvents(),
            ),
          )
        ],
      ),
    );
  }
}



class AccountingEvents extends StatelessWidget {
  const AccountingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    
    RecordViewModel recordViewModel = Provider.of<RecordViewModel>(context);
    Map<DateTime, List<UserRecord>> userRecordMapper = recordViewModel.getUserRecords();

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(DateTime dateTime in  userRecordMapper.keys)
            AccountingEventGroupByDate(dateTime: dateTime, userRecords: userRecordMapper[dateTime] ?? [],),
        ]
      )
    );
  }
}


class AccountingEventGroupByDate extends StatelessWidget {
  const AccountingEventGroupByDate({super.key, required this.userRecords, required this.dateTime});

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
            AccountingEventItem(userRecord: userRecord,),

        ] 
      )
    );
  }
}



class AccountingEventItem extends StatelessWidget {
  const AccountingEventItem({super.key, required this.userRecord});

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


class AccountingEventDetailTitle extends StatelessWidget {
  const AccountingEventDetailTitle({super.key});

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
