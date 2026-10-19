import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/comman_components/recipe_component/recipe_component_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'video_component_widget.dart' show VideoComponentWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VideoComponentModel extends FlutterFlowModel<VideoComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for RecipeComponent dynamic component.
  late FlutterFlowDynamicModels<RecipeComponentModel> recipeComponentModels;

  @override
  void initState(BuildContext context) {
    recipeComponentModels =
        FlutterFlowDynamicModels(() => RecipeComponentModel());
  }

  @override
  void dispose() {
    recipeComponentModels.dispose();
  }
}
