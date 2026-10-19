import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/comman_components/app_bar_component/app_bar_component_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'video_player_page_widget.dart' show VideoPlayerPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VideoPlayerPageModel extends FlutterFlowModel<VideoPlayerPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBarComponent component.
  late AppBarComponentModel appBarComponentModel;

  @override
  void initState(BuildContext context) {
    appBarComponentModel = createModel(context, () => AppBarComponentModel());
  }

  @override
  void dispose() {
    appBarComponentModel.dispose();
  }
}
