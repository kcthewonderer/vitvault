import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/comman_components/about_us_component/about_us_component_widget.dart';
import '/pages/comman_components/app_bar_component/app_bar_component_widget.dart';
import 'dart:ui';
import 'privacy_policy_page_widget.dart' show PrivacyPolicyPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PrivacyPolicyPageModel extends FlutterFlowModel<PrivacyPolicyPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBarComponent component.
  late AppBarComponentModel appBarComponentModel;
  // Model for AboutUsComponent component.
  late AboutUsComponentModel aboutUsComponentModel;

  @override
  void initState(BuildContext context) {
    appBarComponentModel = createModel(context, () => AppBarComponentModel());
    aboutUsComponentModel = createModel(context, () => AboutUsComponentModel());
  }

  @override
  void dispose() {
    appBarComponentModel.dispose();
    aboutUsComponentModel.dispose();
  }
}
