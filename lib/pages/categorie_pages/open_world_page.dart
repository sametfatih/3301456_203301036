import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kgamepedia/models/game.dart';
import 'package:kgamepedia/services/firebase_firestore_helper.dart';
import 'package:kgamepedia/widgets/build_widgets.dart';
import 'package:kgamepedia/widgets/my_appbars.dart';
import 'package:kgamepedia/widgets/my_behavior.dart';

class OpenWorldCategory extends StatefulWidget {
  static String categorieName = 'açık dünya';
  OpenWorldCategory({Key? key}) : super(key: key);

  @override
  State<OpenWorldCategory> createState() => _OpenWorldCategoryState();
}

class _OpenWorldCategoryState extends State<OpenWorldCategory> {
  final FirebaseCategoryHelper _categoryHelper = FirebaseCategoryHelper();
  final BuildWidgets _buildWidgets = BuildWidgets();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: myAppBarB(context, OpenWorldCategory.categorieName),
        body: MySingleChildScrollView(
          Axis.vertical,
          StreamBuilder<List<Game?>>(
            stream: _categoryHelper.readGamesForCategory(OpenWorldCategory.categorieName),
            builder: (context, snapshot) => _buildWidgets.buildGameWidgetC(context, snapshot),
          ),
        ),
      ),
    );
  }
}
