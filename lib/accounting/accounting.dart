

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pickrewardapp/accounting/component/record.detail.dart';
import 'package:pickrewardapp/accounting/component/summary.dart';
import 'package:pickrewardapp/accounting/screen/accounting.dart';
import 'package:pickrewardapp/accounting/viewmodel/record.dart';
import 'package:pickrewardapp/accounting/viewmodel/summary.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/user_info.dart';
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
      child: AccountingScreen()
    );
  }
}

