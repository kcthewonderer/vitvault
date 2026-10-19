import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/comman_components/app_bar_component/app_bar_component_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'save_recipe_from_image_page_widget.dart'
    show SaveRecipeFromImagePageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SaveRecipeFromImagePageModel
    extends FlutterFlowModel<SaveRecipeFromImagePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBarComponent component.
  late AppBarComponentModel appBarComponentModel;
  bool isDataUploading_uploadDataGds = false;
  FFUploadedFile uploadedLocalFile_uploadDataGds =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  @override
  void initState(BuildContext context) {
    appBarComponentModel = createModel(context, () => AppBarComponentModel());
  }

  @override
  void dispose() {
    appBarComponentModel.dispose();
  }
}
