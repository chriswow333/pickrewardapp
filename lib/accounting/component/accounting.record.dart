

import 'package:flutter/material.dart';
import 'package:pickrewardapp/accounting/model/user_record.dart';
import 'package:pickrewardapp/accounting/viewmodel/record.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class AccountingRecordDetail extends StatelessWidget {
  const AccountingRecordDetail({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(left:10, right:10,),
      width:double.infinity,
      child:const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          AccountingRecordDetailTitle(),
          Expanded(
            child:SingleChildScrollView(
              child:AccountingRecords(),
            ),
          )
        ],
      ),
    );
  }
}

 
class AccountingRecords extends StatelessWidget {
  const AccountingRecords({super.key});

  @override
  Widget build(BuildContext context) {
    
    RecordViewModel recordViewModel = Provider.of<RecordViewModel>(context);
    
    return FutureBuilder(
      future: recordViewModel.fetchUserRecords(), // Call fetchUserRecords() here
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Show loading indicator while fetching data
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          
          Map<DateTime, List<UserRecord>> userRecords = snapshot.data as Map<DateTime, List<UserRecord>>;

          if (userRecords.isEmpty) return Container();
          
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (DateTime dateTime in userRecords.keys)
                  AccountingRecordGroupByDate(
                    dateTime: dateTime,
                    userRecords: userRecords[dateTime] ?? [],
                  ),
              ],
            ),
          );
        }
      },
    );
  }
}


class AccountingRecordGroupByDate extends StatelessWidget {
  const AccountingRecordGroupByDate({super.key, required this.userRecords, required this.dateTime});

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
    var date = DateTime.fromMillisecondsSinceEpoch(userRecord.recordTime!);

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
                child:Text('${date.year}/${date.month}/${date!.day} ${userRecord.cardName}')
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


class AccountingRecordDetailTitle extends StatelessWidget {
  const AccountingRecordDetailTitle({super.key});

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
              Navigator.pushNamed(context, '/record/edit');
            },
            child:const Icon(
              Icons.add_circle_outline_rounded,
            )
          ),
        ]
      )
    );
  }
}
