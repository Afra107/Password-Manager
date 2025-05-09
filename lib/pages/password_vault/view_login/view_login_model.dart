import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'view_login_widget.dart' show ViewLoginWidget;
import 'package:flutter/material.dart';

class ViewLoginModel extends FlutterFlowModel<ViewLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
