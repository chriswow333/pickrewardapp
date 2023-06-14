import 'package:flutter/material.dart';


class BankItems extends StatelessWidget {
  const BankItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          BankItem(),
          BankItem(),
          BankItem(),
          BankItem(),
          BankItem(),
          BankItem(),
          BankItem(),
          BankItem(),
          
        ]
      )
    );
  }
}




class BankItem extends StatelessWidget {
  const BankItem({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      style: ButtonStyle(
        padding:MaterialStatePropertyAll(EdgeInsets.fromLTRB(5, 0, 5, 0),),
      ),
      child:Column(
        children:[
          BankIcon(),
          BankName(),
        ]
      ),
    );
  }
}

class BankIcon extends StatelessWidget {
  const BankIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Icon(Icons.access_alarm_outlined,
        size: 30,
        color:Colors.cyan[900],
      ),
    );
  }
}

class BankName extends StatelessWidget {
  const BankName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('國泰世華銀行',
      style:TextStyle(
        fontSize: 12,
        color:Colors.cyan[900],
      ),
    );
  }
}


class SearchCardBar extends StatefulWidget {
  const SearchCardBar({ Key? key }) : super(key: key);

  @override
  _SearchCardBarState createState() => _SearchCardBarState();
}

class _SearchCardBarState extends State<SearchCardBar> {

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState(){
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:40,
      child:TextField(
        controller:_searchController,
        textAlign: TextAlign.start,
        textAlignVertical:TextAlignVertical.bottom,
        onChanged: (String value){
          // creditCardViewModel.searchKeyword(value);
        },
        decoration: InputDecoration(
          hintText: '信用卡',
          prefixIcon:const Icon(Icons.search),
          suffixIcon: IconButton(
            icon:const Icon(Icons.clear),
            onPressed: () {
              _searchController.clear();
              // creditCardViewModel.searchKeyword('');
            },
          ),
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          )
        ),
        style:const TextStyle(
          fontSize:18,
        ),
      ),
    );
  }
}
