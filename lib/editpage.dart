import 'package:flutter/services.dart';
import 'package:test_flutter_flow/apiservice/apiservice.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

import 'navdrawer/navdrawer.dart';

class EditPageWidget extends StatefulWidget {
  EditPageWidget({Key key}) : super(key: key);

  @override
  _EditPageWidgetState createState() => _EditPageWidgetState();
}

class _EditPageWidgetState extends State<EditPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Color safeAreaColor = const Color(0xFFEBEBEB);

  bool _editorReadOnly = true;

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
              'Edit your note: ',
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
                Icons.save,
                color: Color(0xFF6E6E6E),
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        constraints: const BoxConstraints(
          maxWidth: double.infinity,
          maxHeight: double.infinity,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFA1F195),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFF8F8F8),
          ),
          padding: EdgeInsets.only(left: 20, right: 20),
          constraints: BoxConstraints(maxHeight: 300),
          child: SingleChildScrollView(
            child: TextField(
              autofocus: false,
              readOnly: _editorReadOnly,
              maxLines: null,
              style: FlutterFlowTheme.subtitle2.override(
                fontFamily: 'Poppins',
                color: const Color(0xFF111111),
                fontWeight: FontWeight.normal,
              ),
              onTap: () {
                setState(() {
                  _editorReadOnly = false;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
