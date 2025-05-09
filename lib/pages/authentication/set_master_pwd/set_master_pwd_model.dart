import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'set_master_pwd_widget.dart' show SetMasterPwdWidget;
import 'package:flutter/material.dart';

class SetMasterPwdModel extends FlutterFlowModel<SetMasterPwdWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for confirm-password widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  // Stores action output result for [Custom Action - getDeviceSalt] action in Button-Signup widget.
  String? deviceSalt;
  // Stores action output result for [Custom Action - hashWithDeviceSalt] action in Button-Signup widget.
  String? hashedPassword;
  // Stores action output result for [Custom Action - generateSymmetricKey] action in Button-Signup widget.
  String? symmetricKey;
  // Stores action output result for [Custom Action - generateIV] action in Button-Signup widget.
  String? initVector;
  // Stores action output result for [Custom Action - encryptKey] action in Button-Signup widget.
  String? encryptedSymKey;
  // Stores action output result for [Backend Call - Create Document] action in Button-Signup widget.
  AccountInfoRecord? userDocument;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();
  }
}
