import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/comman_components/recipe_component/recipe_component_widget.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wish_list_component_model.dart';
export 'wish_list_component_model.dart';

class WishListComponentWidget extends StatefulWidget {
  const WishListComponentWidget({super.key});

  @override
  State<WishListComponentWidget> createState() =>
      _WishListComponentWidgetState();
}

class _WishListComponentWidgetState extends State<WishListComponentWidget> {
  late WishListComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WishListComponentModel());

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
              if (FFAppState()
                  .WishlistList
                  .where((e) => e.isfav == true)
                  .toList()
                  .isNotEmpty) {
                return ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final wishList = FFAppState()
                              .WishlistList
                              .where((e) => e.isfav == true)
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
                            children:
                                List.generate(wishList.length, (wishListIndex) {
                              final wishListItem = wishList[wishListIndex];
                              return Container(
                                width: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      810.0) {
                                    return ((MediaQuery.sizeOf(context).width -
                                            48) *
                                        1 /
                                        2);
                                  } else if ((MediaQuery.sizeOf(context)
                                              .width >=
                                          810.0) &&
                                      (MediaQuery.sizeOf(context).width <
                                          1280.0)) {
                                    return ((MediaQuery.sizeOf(context).width -
                                            80) *
                                        1 /
                                        4);
                                  } else if (MediaQuery.sizeOf(context).width <
                                      1280.0) {
                                    return ((MediaQuery.sizeOf(context).width -
                                            112) *
                                        1 /
                                        6);
                                  } else {
                                    return ((MediaQuery.sizeOf(context).width -
                                            112) *
                                        1 /
                                        6);
                                  }
                                }(),
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.recipeComponentModels.getModel(
                                    '3',
                                    wishListIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: RecipeComponentWidget(
                                    key: Key(
                                      'Keyc3l_${'3'}',
                                    ),
                                    backIcon: false,
                                    title: wishListItem.title,
                                    image: wishListItem.image,
                                    min: wishListItem.time,
                                    isfav: wishListItem.isfav == true,
                                    ontap: () async {
                                      if (wishListItem.isfav == true) {
                                        FFAppState().updateWishlistListAtIndex(
                                          wishListItem.id,
                                          (e) => e..isfav = false,
                                        );
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().updateWishlistListAtIndex(
                                          wishListItem.id,
                                          (e) => e..isfav = true,
                                        );
                                        safeSetState(() {});
                                      }
                                    },
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/emty.png',
                                  width: 200.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'n5mqrjlc' /* No favourite recipe yet */,
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
