import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/bottom_flow_components/home_component/home_component_widget.dart';
import '/pages/bottom_flow_components/profile_component/profile_component_widget.dart';
import '/pages/bottom_flow_components/video_component/video_component_widget.dart';
import '/pages/bottom_flow_components/wish_list_component/wish_list_component_widget.dart';
import '/pages/sheets_components/add_recipe_bottom_sheet/add_recipe_bottom_sheet_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HomeComponent component.
  late HomeComponentModel homeComponentModel;
  // Model for VideoComponent component.
  late VideoComponentModel videoComponentModel;
  // Model for WishListComponent component.
  late WishListComponentModel wishListComponentModel;
  // Model for ProfileComponent component.
  late ProfileComponentModel profileComponentModel;

  @override
  void initState(BuildContext context) {
    homeComponentModel = createModel(context, () => HomeComponentModel());
    videoComponentModel = createModel(context, () => VideoComponentModel());
    wishListComponentModel =
        createModel(context, () => WishListComponentModel());
    profileComponentModel = createModel(context, () => ProfileComponentModel());
  }

  @override
  void dispose() {
    homeComponentModel.dispose();
    videoComponentModel.dispose();
    wishListComponentModel.dispose();
    profileComponentModel.dispose();
  }
}
