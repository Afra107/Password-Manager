import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'register_account_widget.dart' show RegisterAccountWidget;
import 'package:flutter/material.dart';

class RegisterAccountModel extends FlutterFlowModel<RegisterAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name-Create widget.
  FocusNode? nameCreateFocusNode;
  TextEditingController? nameCreateTextController;
  String? Function(BuildContext, String?)? nameCreateTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
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
    nameCreateFocusNode?.dispose();
    nameCreateTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();
  }
}
