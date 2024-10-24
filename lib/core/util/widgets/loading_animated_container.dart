import 'package:flutter/material.dart';

import '../constants/color_grid.dart';

class LoadingAnimatedContainer extends StatefulWidget {
  final double height;
  final double width;
  final Color color;

  const LoadingAnimatedContainer({super.key, this.height = 120, this.width = 120, this.color = tGreyLight});

  @override
  _LoadingAnimatedContainerState createState() =>
      _LoadingAnimatedContainerState();
}

class _LoadingAnimatedContainerState extends State<LoadingAnimatedContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
      lowerBound: 0.4,
      upperBound: 0.8,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
