import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'reset_password_dialog_model.dart';
export 'reset_password_dialog_model.dart';

class ResetPasswordDialogWidget extends StatefulWidget {
  const ResetPasswordDialogWidget({
    super.key,
    this.exe,
  });

  final Future Function()? exe;

  @override
  State<ResetPasswordDialogWidget> createState() =>
      _ResetPasswordDialogWidgetState();
}

class _ResetPasswordDialogWidgetState extends State<ResetPasswordDialogWidget> {
  late ResetPasswordDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResetPasswordDialogModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Container(
          width: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return (MediaQuery.sizeOf(context).width - 32);
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return 428.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 428.0;
            } else {
              return 428.0;
            }
          }(),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                16.0,
                valueOrDefault<double>(
                  () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 44.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 30.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 30.0;
                    } else {
                      return 30.0;
                    }
                  }(),
                  0.0,
                ),
                16.0,
                valueOrDefault<double>(
                  () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 44.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 30.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 30.0;
                    } else {
                      return 30.0;
                    }
                  }(),
                  0.0,
                )),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/jsons/5CeJyXS8q8.json',
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.contain,
                  animate: true,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 28.0, 0.0, 12.0),
                  child: AutoSizeText(
                    FFLocalizations.of(context).getText(
                      'cvtmpxpa' /* Password reset success */,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    minFontSize: 18.0,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'SF Pro Display',
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          lineHeight: 1.5,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 28.0),
                  child: AutoSizeText(
                    FFLocalizations.of(context).getText(
                      '5sco53ma' /* You have successfully change y... */,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    minFontSize: 15.0,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'SF Pro Display',
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          lineHeight: 1.5,
                        ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    await widget.exe?.call();
                  },
                  text: FFLocalizations.of(context).getText(
                    'qjp1kboy' /* Go to login */,
                  ),
                  options: FFButtonOptions(
                    width: 250.0,
                    height: 54.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'SF Pro Display',
                          color: Colors.white,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          lineHeight: 1.0,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
