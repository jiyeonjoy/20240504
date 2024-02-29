import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ZoomWidget extends StatefulWidget {
  final Widget child;
  final EdgeInsets? boundaryMargin;
  final double minScale;
  final double maxScale;
  final bool doubleTapEnabled; //default : true
  final bool panActionEnabled;
  Rx<bool>? zoomStatus;

  ZoomWidget({
    super.key,
    required this.child,
    this.boundaryMargin = const EdgeInsets.all(0.0),
    this.minScale = 1.0,
    this.maxScale = 3.5,
    this.doubleTapEnabled = true,
    this.panActionEnabled = true,
    this.zoomStatus,
  });

  @override
  State<ZoomWidget> createState() => _ZoomWidgetState();
}

class _ZoomWidgetState extends State<ZoomWidget> {
  final _transformationController = TransformationController();
  var _lastTapDownPos = TapDownDetails();

  TapDownDetails get lastTapDownPos => _lastTapDownPos;
  set lastTapDownPos(TapDownDetails tapDownDetails) =>
      {_lastTapDownPos = tapDownDetails};

  @override
  void initState() {
    super.initState();
    _transformationController.addListener(() {
      bool isZoomed = (Matrix4.identity() - _transformationController.value)
          .infinityNorm() >
          0.000001;
      if (isZoomed) {
        widget.zoomStatus?.value = true;
      } else {
        widget.zoomStatus?.value = false;
      }
    });
  }

  @override
  void dispose() {
    _transformationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.minScale != 1.0) {
      _transformationController.value = Matrix4.identity()
        ..translate(-20.0, -10.0)
        ..scale(widget.minScale);
    }

    return GestureDetector(
      onDoubleTapDown: (TapDownDetails details) {
        lastTapDownPos = details;
      },
      onDoubleTap: () {
        if (widget.doubleTapEnabled) {
          setState(() {
            if (_transformationController.value != Matrix4.identity()) {
              _transformationController.value = Matrix4.identity();
            } else {
              final position = lastTapDownPos.localPosition;
              _transformationController.value = Matrix4.identity()
                ..translate(
                  -position.dx * (widget.maxScale - 1.0),
                  -position.dy * 3,
                )
                ..scale(widget.maxScale);
            }
          });
        }
      },
      child: InteractiveViewer(
        transformationController: _transformationController,
        boundaryMargin: widget.boundaryMargin ?? const EdgeInsets.all(0.0),
        minScale: widget.minScale,
        maxScale: widget.maxScale,
        panEnabled: widget.panActionEnabled,
        child: widget.child,
      ),
    );
  }
}
