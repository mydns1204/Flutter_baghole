import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Mail_F widget.
  TextEditingController? mailFController;
  String? Function(BuildContext, String?)? mailFControllerValidator;
  // State field(s) for Pass_F widget.
  TextEditingController? passFController;
  late bool passFVisibility;
  String? Function(BuildContext, String?)? passFControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passFVisibility = false;
  }

  void dispose() {
    mailFController?.dispose();
    passFController?.dispose();
  }

  /// Additional helper methods are added here.

}
