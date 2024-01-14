


import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';



class RecordEditDateChannel extends StatelessWidget {
  const RecordEditDateChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.kToBlack[0],
        borderRadius: BorderRadius.circular(10),
      ),
      child:Container(
        padding: EdgeInsets.all(10),
        child:Column(
          children:[
            DateField(),
            Divider(),
            ChannelField(),
          ]
        )
      )
    );
  }
}



class ChannelField extends StatelessWidget {
  const ChannelField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:40,
      child:GestureDetector(
        onTap: (){
          CupertinoScaffold.showCupertinoModalBottomSheet(
            context: context,
            expand: true,
            // shape: const RoundedRectangleBorder(
            //     borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
            //   ),
            builder: (context) {
              return ChannelItemsPage();
            },
          );
        },
        child:Container(
          // alignment: Alignment.centerRight,
          child:Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text("消費通路",
                style:TextStyle(
                  fontSize: 14,
                  color:Palette.kToBlack[300],
                )
              ),
              Expanded(
                child:Container(
                  decoration: const BoxDecoration(),
                ),
              ),
              Text('MOMO',
                style:TextStyle(
                  fontSize: 14,
                  color:Palette.kToBlack[600],
                ),
              ),
            ]
          )
        ),
      )
    );
  }
}


class ChannelItemsPage extends StatelessWidget {
  const ChannelItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoScaffold(
      overlayStyle:SystemUiOverlayStyle(
        statusBarColor: Colors.white, 
        statusBarBrightness:
            Brightness.light 
      ),
      body: Scaffold(
        body: SafeArea(
          child:Container(
            padding: EdgeInsets.all(10),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                ChannelItemsTitle(),
                SizedBox(
                  height:20,
                ),
                Expanded(
                  child:ChannelItemGroup(),
                ),
              ]
            )
          )
        )
      )
    );
  }
}

class ChannelItemGroup extends StatelessWidget {
  const ChannelItemGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          SelfFillInChannel(),
          SizedBox(height:10),
          Expanded(
            child:ChannelItemsByCategory(),
          ),
        ]
      )
    );
  }
}

class ChannelItemsByCategory extends StatelessWidget {
  const ChannelItemsByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:SingleChildScrollView(
        child:Column(
          children:[
            ChannelItems(),
            ChannelItems(),
          ]
        )
      )
    );
  }
}

class ChannelItems extends StatelessWidget {
  const ChannelItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10, bottom: 10),
      child:Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color:Palette.kToBlack[0],
          borderRadius: BorderRadius.circular(10),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child:Text('網購',
                style: TextStyle(
                  fontSize: 18,
                ),
              )
            ),
            GridView.builder(
              shrinkWrap:true,
              physics:const NeverScrollableScrollPhysics(),
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 15,
                crossAxisSpacing: 10,
                // childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index){
                return ChannelItem();
              }
            ),
          ]
        ),
        
        
      )
    );
  }
}


class ChannelItem extends StatelessWidget {
  const ChannelItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          CircleAvatar(
            child:Text('Ava'),
          ),
          Text('hello'),
        ]
      )
    );
  }
}





class SelfFillInChannel extends StatelessWidget {
  const SelfFillInChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Palette.kToBlack[0],
        borderRadius: BorderRadius.circular(10),
      ),
      height:40,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(10),
      child:TextField(
        // controller:_searchController,
        // textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        // textAlignVertical:TextAlignVertical.bottom,
        onChanged: (String value){
          // searchCardViewModel.changeKeyword(value);
        },
        onEditingComplete: (){
          // searchCardViewModel.searchCard();
        },
        onTap:(){
          // searchCardViewModel.onFocusSearch();
        },
        decoration: InputDecoration.collapsed(
          hintText: '自行輸入',
          // prefixIcon:const Icon(Icons.search),
          // border:OutlineInputBorder(
            // borderRadius: BorderRadius.circular(20.0),
          // )
        ),
        style:const TextStyle(
          fontSize:14,
        ),
      )
    );
  }
}

class ChannelItemsTitle extends StatelessWidget {
  const ChannelItemsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child:Text('選擇一個消費通路',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color:Palette.kToBlack[600],
        ),
      )
    );
  }
}


final DateFormat formatter = DateFormat('yyyy-MM-dd');

class DateField extends StatelessWidget {
  const DateField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:40,
      child:GestureDetector(
        onTap: (){
          Future<DateTime?> future = showDialog<DateTime>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
              title: Text('消費日期',
                style:TextStyle(
                  fontSize: 16,
                  color:Palette.kToBlack[400],
                ),
              ),
              content:SizedBox(
                  height: 350,
                  width:100,
                  child:SfDateRangePicker(
                    view: DateRangePickerView.month,
                    selectionMode: DateRangePickerSelectionMode.single,
                    showNavigationArrow:true,
                    showActionButtons:true,
                    initialSelectedDate:DateTime.now(),
                    onSubmit:(Object? obj){
                      Navigator.pop(context, obj);
                    },
                    onCancel:() {
                      Navigator.pop(context);
                    }
                  )
                ),
              );
            }
          );
          future.then((data){
            // criteriaViewModel.date = data as DateTime;
          });
        },
        child:Container(
          // alignment: Alignment.centerRight,
          child:Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text("消費日期",
                style:TextStyle(
                  fontSize: 14,
                  color:Palette.kToBlack[300],
                )
              ),
              Expanded(
                child:Container(
                  decoration: BoxDecoration(),
                ),
              ),
              Text(formatter.format(DateTime.now()),
                style:TextStyle(
                  fontSize: 14,
                  color:Palette.kToBlack[600],
                ),
              ),
            ]
          )
        ),
      )
    );
  }
}



