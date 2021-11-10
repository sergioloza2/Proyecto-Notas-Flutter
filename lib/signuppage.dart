// ignore_for_file: file_names

import 'package:test_flutter_flow/enumSignUp.dart';
import 'package:test_flutter_flow/verifyTextFields/verifySignUpField.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

import 'apiservice/apiservice.dart';

class SignUpPageWidget extends StatefulWidget {
  const SignUpPageWidget({Key key}) : super(key: key);

  @override
  _SignUpPageWidgetState createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget> {
  TextEditingController usernameTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility1;
  TextEditingController passwordConfirmTextController;
  bool passwordVisibility2;
  bool switchPolicyAndTermsValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  String statusSignUpText;
  Color statusSignUpColor;

  @override
  void initState() {
    super.initState();
    usernameTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility1 = false;
    passwordConfirmTextController = TextEditingController();
    passwordVisibility2 = false;
    statusSignUpText = '';
    statusSignUpColor = const Color(0xFFFF3939);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF5F5F5),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFEEEEEE),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/fondo-login.png',
            ).image,
          ),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: const BoxDecoration(
                color: Color(0x00EEEEEE),
                shape: BoxShape.rectangle,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/logo-sample-resized.png',
                    ).image,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.16,
              decoration: const BoxDecoration(
                color: Color(0x00EEEEEE),
                shape: BoxShape.rectangle,
              ),
            ),
            Text(
              'Sign Up',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.title1.override(
                fontFamily: 'Poppins',
                color: const Color(0xFF303030),
              ),
            ),
            Text(
              statusSignUpText,
              style: FlutterFlowTheme.bodyText1.override(
                fontSize: 17,
                fontFamily: 'Roboto',
                color: statusSignUpColor,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 26, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.height * 0.083,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  alignment: const AlignmentDirectional(0, 0),
                  child: TextFormField(
                    controller: usernameTextController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 19,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFF2F2F2),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color(0xFFE23D3D),
                      ),
                    ),
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.083,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                ),
                alignment: const AlignmentDirectional(0, 0),
                child: TextFormField(
                  controller: passwordTextController,
                  obscureText: !passwordVisibility1,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 19,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF2F2F2),
                    prefixIcon: const Icon(
                      Icons.lock_rounded,
                      color: Color(0xFFE23D3D),
                    ),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility1 = !passwordVisibility1,
                      ),
                      child: Icon(
                        passwordVisibility1
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: const Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 19,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.083,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                ),
                alignment: const AlignmentDirectional(0, 0),
                child: TextFormField(
                  controller: passwordConfirmTextController,
                  obscureText: !passwordVisibility2,
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                    hintStyle: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 19,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF2F2F2),
                    prefixIcon: const Icon(
                      Icons.lock_rounded,
                      color: Color(0xFFE23D3D),
                    ),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility2 = !passwordVisibility2,
                      ),
                      child: Icon(
                        passwordVisibility2
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: const Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 19,
                  ),
                ),
              ),
            ),
            SwitchListTile.adaptive(
              value: switchPolicyAndTermsValue ??= false,
              onChanged: (newValue) =>
                  setState(() => switchPolicyAndTermsValue = newValue),
              title: Text(
                'Policy and Terms',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.title3.override(
                  color: const Color(0xFF303030),
                  fontFamily: 'Poppins',
                  fontSize: 15,
                ),
              ),
              subtitle: Text(
                'I accept the policy and terms',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                ),
              ),
              tileColor: const Color(0xFF626262),
              activeColor: const Color(0xFF57E854),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        print('Button pressed ...');
                        String username = usernameTextController.text;
                        String password = passwordTextController.text;
                        String passwordConfirm =
                            passwordConfirmTextController.text;

                        bool policyValue = switchPolicyAndTermsValue;
                        SignUpStatus status = verifySignUpInformation(
                            username, password, passwordConfirm, policyValue);

                        if (status == SignUpStatus.formFilledOutCorrectly) {
                          print("Forma se lleno bien");
                          Map apiResponse = await ServiceApi.postCreateUser2(
                              username, password);
                          status = verifySignUpRequest(apiResponse);
                        }

                        String newText = updatedTextByStatus(status);

                        setState(() {
                          statusSignUpText = newText;

                          if (status == SignUpStatus.success) {
                            statusSignUpColor = const Color(0xFF57E854);
                          } else {
                            statusSignUpColor = const Color(0xFFFF3939);
                          }
                        });

                        if (status == SignUpStatus.success) {
                          await Future.delayed(const Duration(seconds: 5));
                          Navigator.pop(context);
                        }
                      },
                      text: 'Create account',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 50,
                        color: const Color(0xFFEF1A20),
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontSize: 21,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                        elevation: 3,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 15,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
