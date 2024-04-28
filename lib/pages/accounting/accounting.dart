

import 'package:flutter/material.dart';
import 'package:pickrewardapp/pages/accounting/screen/accounting.dart';
import 'package:pickrewardapp/pages/accounting/viewmodel/record.dart';
import 'package:pickrewardapp/pages/accounting/viewmodel/summary.dart';
import 'package:provider/provider.dart';



class AccountingPage extends StatelessWidget {
  const AccountingPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RecordViewModel>(create:(_)=>RecordViewModel()),
        ChangeNotifierProvider<UserRecordSummaryViewModel>(create:(_)=>UserRecordSummaryViewModel()),
      ],
      child: const AccountingScreen()
    );
  }
}

