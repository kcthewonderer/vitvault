import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/comman_components/app_bar_component/app_bar_component_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'video_player_page_model.dart';
export 'video_player_page_model.dart';

class VideoPlayerPageWidget extends StatefulWidget {
  const VideoPlayerPageWidget({
    super.key,
    this.url,
    this.id,
    this.title,
  });

  final String? url;
  final int? id;
  final String? title;

  static String routeName = 'VideoPlayerPage';
  static String routePath = '/videoPlayerPage';

  @override
  State<VideoPlayerPageWidget> createState() => _VideoPlayerPageWidgetState();
}

class _VideoPlayerPageWidgetState extends State<VideoPlayerPageWidget> {
  late VideoPlayerPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoPlayerPageModel());

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
                  title: widget!.title,
                ),
              ),
              if ((widget!.id == 0) || (widget!.id == 2))
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: FlutterFlowVideoPlayer(
                    path: widget!.url!,
                    videoType: VideoType.network,
                    autoPlay: false,
                    looping: false,
                    showControls: true,
                    allowFullScreen: true,
                    allowPlaybackSpeedMenu: false,
                  ),
                ),
              if ((widget!.id == 1) || (widget!.id == 3))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: custom_widgets.FullScreenVideoPlayer(
                    width: double.infinity,
                    height: 80.0,
                    url:
                        'https://www.youtube.com/watch?v=8sAyPDLorek&ab_channel=Flutter',
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
