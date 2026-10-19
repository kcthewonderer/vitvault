import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/comman_components/recipe_component/recipe_component_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'video_component_model.dart';
export 'video_component_model.dart';

class VideoComponentWidget extends StatefulWidget {
  const VideoComponentWidget({super.key});

  @override
  State<VideoComponentWidget> createState() => _VideoComponentWidgetState();
}

class _VideoComponentWidgetState extends State<VideoComponentWidget> {
  late VideoComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Builder(
            builder: (context) {
              if (FFAppState().IsSkip == false) {
                return ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final videoList = FFAppState()
                              .WishlistList
                              .where((e) => e.type == 'Video')
                              .toList();

                          return Wrap(
                            spacing: 16.0,
                            runSpacing: 16.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: List.generate(videoList.length,
                                (videoListIndex) {
                              final videoListItem = videoList[videoListIndex];
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        VideoPlayerPageWidget.routeName,
                                        queryParameters: {
                                          'url': serializeParam(
                                            'https://www.youtube.com/watch?v=8sAyPDLorek&ab_channel=Flutter',
                                            ParamType.String,
                                          ),
                                          'id': serializeParam(
                                            videoListIndex,
                                            ParamType.int,
                                          ),
                                          'title': serializeParam(
                                            videoListItem.title,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            810.0) {
                                          return ((MediaQuery.sizeOf(context)
                                                      .width -
                                                  48) *
                                              1 /
                                              2);
                                        } else if ((MediaQuery.sizeOf(context)
                                                    .width >=
                                                810.0) &&
                                            (MediaQuery.sizeOf(context).width <
                                                1280.0)) {
                                          return ((MediaQuery.sizeOf(context)
                                                      .width -
                                                  80) *
                                              1 /
                                              4);
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            1280.0) {
                                          return ((MediaQuery.sizeOf(context)
                                                      .width -
                                                  112) *
                                              1 /
                                              6);
                                        } else {
                                          return ((MediaQuery.sizeOf(context)
                                                      .width -
                                                  112) *
                                              1 /
                                              6);
                                        }
                                      }(),
                                      decoration: BoxDecoration(),
                                      child: Stack(
                                        children: [
                                          wrapWithModel(
                                            model: _model.recipeComponentModels
                                                .getModel(
                                              '4',
                                              videoListIndex,
                                            ),
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: RecipeComponentWidget(
                                              key: Key(
                                                'Keyfij_${'4'}',
                                              ),
                                              backIcon: false,
                                              title: videoListItem.title,
                                              image: videoListItem.image,
                                              min: videoListItem.time,
                                              isfav:
                                                  videoListItem.isfav == true,
                                              ontap: () async {
                                                if (videoListItem.isfav ==
                                                    true) {
                                                  FFAppState()
                                                      .updateWishlistListAtIndex(
                                                    videoListItem.id,
                                                    (e) => e..isfav = false,
                                                  );
                                                  safeSetState(() {});
                                                } else {
                                                  FFAppState()
                                                      .updateWishlistListAtIndex(
                                                    videoListItem.id,
                                                    (e) => e..isfav = true,
                                                  );
                                                  safeSetState(() {});
                                                }
                                              },
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 50.0, 0.0, 0.0),
                                              child: Container(
                                                width: 30.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: SvgPicture.asset(
                                                  'assets/images/play-1.svg',
                                                  width: 24.0,
                                                  height: 24.0,
                                                  fit: BoxFit.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  ],
                );
              } else {
                return Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: SvgPicture.asset(
                            'assets/images/Frame_(2).svg',
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'ifxsmouw' /* No favourite recipe yet */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
