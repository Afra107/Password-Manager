import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_account_widget.dart' show LoginAccountWidget;
import 'package:flutter/material.dart';

class LoginAccountModel extends FlutterFlowModel<LoginAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Custom Action - getDeviceSalt] action in Button-Login widget.
  String? deviceSalt;
  // Stores action output result for [Custom Action - hashWithDeviceSalt] action in Button-Login widget.
  String? hashedPassword;
  // Stores action output result for [Firestore Query - Query a collection] action in Button-Login widget.
  AccountInfoRecord? userAccount;
  // Stores action output result for [Custom Action - decryptKey] action in Button-Login widget.
  String? symmetricKey;
  // Stores action output result for [Custom Action - decrypt2FASetupKey] action in Button-Login widget.
  String? setupKey;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
