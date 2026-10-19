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
import 'home_component_model.dart';
export 'home_component_model.dart';

class HomeComponentWidget extends StatefulWidget {
  const HomeComponentWidget({super.key});

  @override
  State<HomeComponentWidget> createState() => _HomeComponentWidgetState();
}

class _HomeComponentWidgetState extends State<HomeComponentWidget> {
  late HomeComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeComponentModel());

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

    return Container(
      decoration: BoxDecoration(),
      child: Column(
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final wish = FFAppState()
                                .WishlistList
                                .where((e) => e.type == 'wish')
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
                              children: List.generate(wish.length, (wishIndex) {
                                final wishItem = wish[wishIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      RecipeDetailPageWidget.routeName,
                                      queryParameters: {
                                        'title': serializeParam(
                                          wishItem.title,
                                          ParamType.String,
                                        ),
                                        'image': serializeParam(
                                          wishItem.image,
                                          ParamType.String,
                                        ),
                                        'min': serializeParam(
                                          wishItem.time,
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
                                    child: wrapWithModel(
                                      model:
                                          _model.recipeComponentModels.getModel(
                                        '1',
                                        wishIndex,
                                      ),
                                      updateCallback: () => safeSetState(() {}),
                                      child: RecipeComponentWidget(
                                        key: Key(
                                          'Keyj1f_${'1'}',
                                        ),
                                        backIcon: false,
                                        title: wishItem.title,
                                        image: wishItem.image,
                                        min: wishItem.time,
                                        isfav: wishItem.isfav == true,
                                        ontap: () async {
                                          if (wishItem.isfav == true) {
                                            FFAppState()
                                                .updateWishlistListAtIndex(
                                              wishItem.id,
                                              (e) => e..isfav = false,
                                            );
                                            safeSetState(() {});
                                          } else {
                                            FFAppState()
                                                .updateWishlistListAtIndex(
                                              wishItem.id,
                                              (e) => e..isfav = true,
                                            );
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                  ),
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
                              'assets/images/Group_1171275071_(1).svg',
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
                                'moss8bdj' /* Add your first recipe */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
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
      ),
    );
  }
}
