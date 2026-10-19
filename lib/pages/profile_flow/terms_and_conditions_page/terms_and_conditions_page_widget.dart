import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/comman_components/about_us_component/about_us_component_widget.dart';
import '/pages/comman_components/app_bar_component/app_bar_component_widget.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'terms_and_conditions_page_model.dart';
export 'terms_and_conditions_page_model.dart';

class TermsAndConditionsPageWidget extends StatefulWidget {
  const TermsAndConditionsPageWidget({super.key});

  static String routeName = 'TermsAndConditionsPage';
  static String routePath = '/termsAndConditionsPage';

  @override
  State<TermsAndConditionsPageWidget> createState() =>
      _TermsAndConditionsPageWidgetState();
}

class _TermsAndConditionsPageWidgetState
    extends State<TermsAndConditionsPageWidget> {
  late TermsAndConditionsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsAndConditionsPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF4F4F4),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.appBarComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: AppBarComponentWidget(
                  backIcon: false,
                  title: 'Terms and conditions',
                ),
              ),
              Expanded(
                child: wrapWithModel(
                  model: _model.aboutUsComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: AboutUsComponentWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
