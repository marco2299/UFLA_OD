import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'E-mail inválido';
    }
    return null;
  }

  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfControllerValidator;
  String? _cpfControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for nascimento widget.
  FocusNode? nascimentoFocusNode;
  TextEditingController? nascimentoController;
  final nascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? nascimentoControllerValidator;
  // State field(s) for passwd widget.
  FocusNode? passwdFocusNode;
  TextEditingController? passwdController;
  late bool passwdVisibility;
  String? Function(BuildContext, String?)? passwdControllerValidator;
  String? _passwdControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 6) {
      return 'Defina uma senha com no mínimo 6 caracteres';
    }

    return null;
  }

  // State field(s) for ConfirmPasswd widget.
  FocusNode? confirmPasswdFocusNode;
  TextEditingController? confirmPasswdController;
  late bool confirmPasswdVisibility;
  String? Function(BuildContext, String?)? confirmPasswdControllerValidator;
  String? _confirmPasswdControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    cpfControllerValidator = _cpfControllerValidator;
    passwdVisibility = false;
    passwdControllerValidator = _passwdControllerValidator;
    confirmPasswdVisibility = false;
    confirmPasswdControllerValidator = _confirmPasswdControllerValidator;
  }

  void dispose() {
    nameFocusNode?.dispose();
    nameController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    cpfFocusNode?.dispose();
    cpfController?.dispose();

    nascimentoFocusNode?.dispose();
    nascimentoController?.dispose();

    passwdFocusNode?.dispose();
    passwdController?.dispose();

    confirmPasswdFocusNode?.dispose();
    confirmPasswdController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
