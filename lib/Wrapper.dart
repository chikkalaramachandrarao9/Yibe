import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yibe_final_ui/model/user.dart';
import 'package:yibe_final_ui/pages/LogInPage.dart';
import 'package:yibe_final_ui/pages/PageHandler.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserDetails user = Provider.of<UserDetails>(context);
    if (user == null) {
      return LogInPage();
    } else {
      return PageHandler();
    }
  }
}
