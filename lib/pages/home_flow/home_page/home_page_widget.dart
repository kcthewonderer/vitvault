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
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'floatingActionButtonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF4F4F4),
        floatingActionButton: Visibility(
          visible:
              (FFAppState().PageIndex != 3) && (FFAppState().PageIndex != 2),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 119.0),
            child: FloatingActionButton(
              onPressed: () async {
                if (FFAppState().IsSkip == false) {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: AddRecipeBottomSheetWidget(
                            exe1: () async {
                              Navigator.pop(context);

                              context.pushNamed(
                                  GenerateRecipePageWidget.routeName);
                            },
                            exe2: () async {
                              Navigator.pop(context);

                              context.pushNamed(
                                  SaveRecipeFromImagePageWidget.routeName);
                            },
                          ),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Login first to add your first recipe',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).info,
                        ),
                      ),
                      duration: Duration(milliseconds: 4000),
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                    ),
                  );
                }
              },
              backgroundColor: FlutterFlowTheme.of(context).primary,
              elevation: 0.0,
              child: Icon(
                Icons.add_rounded,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
            ).animateOnPageLoad(
                animationsMap['floatingActionButtonOnPageLoadAnimation']!),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (FFAppState().PageIndex != 3)
                Container(
                  height: 157.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).info,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Logo.png',
                                width: 44.0,
                                height: 44.0,
                                fit: BoxFit.contain,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation']!),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ra0msf7d' /* AI recipe */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation']!),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                    NotificationPageWidget.routeName);
                              },
                              child: Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF4F4F4),
                                  borderRadius: BorderRadius.circular(8.0),
                                  shape: BoxShape.rectangle,
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: SvgPicture.asset(
                                      'assets/images/notification-1.svg',
                                      width: 22.0,
                                      height: 22.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 1.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F4F4),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(SearchPageWidget.routeName);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF4F4F4),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: SvgPicture.asset(
                                      'assets/images/search.svg',
                                      width: 22.0,
                                      height: 22.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '0jy2pwdq' /* Search recipe */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .black40,
                                              fontSize: 17.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ].addToStart(SizedBox(width: 16.0)),
                            ),
                          ),
                        ),
                      ),
                    ].addToStart(SizedBox(height: 16.0)),
                  ),
                ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    if (FFAppState().PageIndex == 0) {
                      return wrapWithModel(
                        model: _model.homeComponentModel,
                        updateCallback: () => safeSetState(() {}),
                        child: HomeComponentWidget(),
                      );
                    } else if (FFAppState().PageIndex == 1) {
                      return wrapWithModel(
                        model: _model.videoComponentModel,
                        updateCallback: () => safeSetState(() {}),
                        child: VideoComponentWidget(),
                      );
                    } else if (FFAppState().PageIndex == 2) {
                      return wrapWithModel(
                        model: _model.wishListComponentModel,
                        updateCallback: () => safeSetState(() {}),
                        child: WishListComponentWidget(),
                      );
                    } else {
                      return wrapWithModel(
                        model: _model.profileComponentModel,
                        updateCallback: () => safeSetState(() {}),
                        child: ProfileComponentWidget(),
                      );
                    }
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 18.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                      spreadRadius: 0.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().PageIndex = 0;
                        safeSetState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Builder(
                              builder: (context) {
                                if (FFAppState().PageIndex == 0) {
                                  return Container(
                                    width: 59.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE6F8EE),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/recipe.png',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.contain,
                                        alignment: Alignment(0.0, 0.0),
                                      ),
                                    ),
                                  );
                                } else {
                                  return Container(
                                    width: 59.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Group_26086143.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '8yihyi0m' /* Recipe */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FFAppState().PageIndex == 0
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().PageIndex = 1;
                        safeSetState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Builder(
                              builder: (context) {
                                if (FFAppState().PageIndex == 1) {
                                  return Container(
                                    width: 59.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE6F8EE),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/video.png',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.contain,
                                        alignment: Alignment(0.0, 0.0),
                                      ),
                                    ),
                                  );
                                } else {
                                  return Container(
                                    width: 59.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Icon-1.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'bbecyrr6' /* Videos */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FFAppState().PageIndex == 1
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().PageIndex = 2;
                        safeSetState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Builder(
                              builder: (context) {
                                if (FFAppState().PageIndex == 2) {
                                  return Container(
                                    width: 59.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE6F8EE),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/fav.png',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  );
                                } else {
                                  return Container(
                                    width: 59.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Icon.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ikl3vrcg' /* Wishlist */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FFAppState().PageIndex == 2
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().PageIndex = 3;
                        safeSetState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Builder(
                              builder: (context) {
                                if (FFAppState().PageIndex == 3) {
                                  return Container(
                                    width: 59.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE6F8EE),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/profile-1.png',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.contain,
                                        alignment: Alignment(0.0, 0.0),
                                      ),
                                    ),
                                  );
                                } else {
                                  return Container(
                                    width: 59.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Group_26086144.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ssip81xg' /* Profile */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FFAppState().PageIndex == 3
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
