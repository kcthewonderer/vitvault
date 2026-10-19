// Automatic FlutterFlow imports
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
import 'package:soft_edge_blur/soft_edge_blur.dart';

class SoftEdgeBlurWidget extends StatefulWidget {
  const SoftEdgeBlurWidget({
    super.key,
    this.width,
    this.height,
    required this.blurEdgeType,
    required this.blurSize,
    required this.blurSigma,
    required this.tileMode,
    this.tintColor,
    required this.visiblePosition,
    required this.transparentPosition,
    this.widgetName,
    this.backgroundColor,
  });

  final double? width;
  final double? height;
  final String blurEdgeType;
  final double blurSize;
  final double blurSigma;
  final String tileMode;
  final Color? tintColor;
  final double visiblePosition;
  final double transparentPosition;
  final Widget Function()? widgetName;
  final Color? backgroundColor;

  @override
  State<SoftEdgeBlurWidget> createState() => _SoftEdgeBlurWidgetState();
}

class _SoftEdgeBlurWidgetState extends State<SoftEdgeBlurWidget> {
  EdgeType _getEdgeType() {
    switch (widget.blurEdgeType.toLowerCase()) {
      case 'top':
        return EdgeType.topEdge;
      case 'bottom':
        return EdgeType.bottomEdge;
      case 'left':
        return EdgeType.leftEdge;
      case 'right':
        return EdgeType.rightEdge;
      default:
        return EdgeType.bottomEdge;
    }
  }

  TileMode _getTileMode() {
    switch (widget.tileMode.toLowerCase()) {
      case 'clamp':
        return TileMode.clamp;
      case 'repeated':
        return TileMode.repeated;
      case 'mirror':
      default:
        return TileMode.mirror;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Default placeholder if no widget is provided
    final contentWidget = widget.widgetName != null
        ? widget.widgetName!()
        : Container(
            width: widget.width ?? 300,
            height: widget.height ?? 200,
            color: Colors.grey[300],
            child: const Center(
              child: Text('Add a widget function'),
            ),
          );

    // Match the exact structure and approach of WallpapersGrid
    return Container(
      width: widget.width,
      height: widget.height,
      color: widget.backgroundColor ?? Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SoftEdgeBlur(
            edges: [
              EdgeBlur(
                type: _getEdgeType(),
                size: widget.blurSize,
                sigma: widget.blurSigma,
                tileMode: _getTileMode(),
                tintColor: widget.tintColor,
                controlPoints: [
                  ControlPoint(
                    position: 0.5, // Fixed at 0.5 like in WallpapersGrid
                    type: ControlPointType.visible,
                  ),
                  ControlPoint(
                    position: 1.0, // Fixed at 1.0 like in WallpapersGrid
                    type: ControlPointType.transparent,
                  )
                ],
              ),
            ],
            child: Container(
              color: widget.backgroundColor ?? Colors.transparent,
              child: contentWidget,
            ),
          ),
        ],
      ),
    );
  }
}
