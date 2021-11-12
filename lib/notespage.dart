import 'package:flutter/services.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

import 'navdrawer/navdrawer.dart';

class NotesPageWidget extends StatefulWidget {
  const NotesPageWidget({Key key}) : super(key: key);

  @override
  _NotesPageWidgetState createState() => _NotesPageWidgetState();
}

class _NotesPageWidgetState extends State<NotesPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Color safeAreaColor = Color(0xFFEBEBEB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: NavDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home_outlined,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(
              Icons.group,
              size: 35,
            ),
          ),
        ],
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0), //FFebebeb
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: const Color(0xFF000000),
            systemNavigationBarDividerColor: null,
            statusBarColor: safeAreaColor,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
          backgroundColor: const Color(0xFFebebeb),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: const Icon(
              Icons.menu,
              color: Color(0xFF2F2F2F),
              size: 30,
            ),
            onPressed: () {
              print('IconButton pressed ...');

              setState(() {
                safeAreaColor = Color(0x757575);
              });
              scaffoldKey.currentState.openDrawer();
            },
          ),
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'All notes:',
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Poppins',
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: const Icon(
                Icons.settings,
                color: Color(0xFF2F2F2F),
                size: 30,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            )
          ],
          centerTitle: true,
          elevation: 4,
        ),
      ),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: const Color(0xFFF0F0F0),
        child: const Icon(
          Icons.add,
          color: Color(0xFFAEAEAE),
          size: 40,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        constraints: const BoxConstraints(
          maxWidth: double.infinity,
          maxHeight: double.infinity,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFF8F8F8),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: const BoxDecoration(
                    color: Color(0x00EEEEEE),
                  ),
                  child: FFButtonWidget(
                    autoSize: false,
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text:
                        'Vitae venenatis justo turpis quis ante                                   ',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50,
                      color: Colors.white,
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: const Color(0xFF111111),
                        fontWeight: FontWeight.normal,
                      ),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: const BoxDecoration(
                    color: Color(0x00EEEEEE),
                  ),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text:
                        'Lorem ipsum dolor sit amet                                                   ',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50,
                      color: Colors.white,
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: const Color(0xFF111111),
                        fontWeight: FontWeight.normal,
                      ),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: const BoxDecoration(
                    color: Color(0x00EEEEEE),
                  ),
                  child: FFButtonWidget(
                    autoSize: false,
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text:
                        'Sed cursus vulputate metus. Aliqu faucibus                                                  ',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50,
                      color: Colors.white,
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: const Color(0xFF111111),
                        fontWeight: FontWeight.normal,
                      ),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
