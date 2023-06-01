import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Name_F widget.
  TextEditingController? nameFController;
  String? Function(BuildContext, String?)? nameFControllerValidator;
  // State field(s) for Mail_F widget.
  TextEditingController? mailFController;
  String? Function(BuildContext, String?)? mailFControllerValidator;
  // State field(s) for Pass_F widget.
  TextEditingController? passFController;
  late bool passFVisibility;
  String? Function(BuildContext, String?)? passFControllerValidator;
  // State field(s) for CFPass_F widget.
  TextEditingController? cFPassFController;
  late bool cFPassFVisibility;
  String? Function(BuildContext, String?)? cFPassFControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passFVisibility = false;
    cFPassFVisibility = false;
  }

  void dispose() {
    nameFController?.dispose();
    mailFController?.dispose();
    passFController?.dispose();
    cFPassFController?.dispose();
  }

  /// Additional helper methods are added here.

}
