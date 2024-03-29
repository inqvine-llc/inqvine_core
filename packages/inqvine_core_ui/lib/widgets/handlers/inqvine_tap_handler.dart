// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InqvineTapHandler extends StatefulWidget {
  const InqvineTapHandler({
    required this.child,
    required this.onTap,
    this.isEnabled = true,
    this.opacityTarget = 0.0,
  });

  final Widget child;
  final bool isEnabled;
  final VoidCallback onTap;

  // change the change in opacity used during the on tap animation
  final double opacityTarget;

  @override
  _InqvineTapHandlerState createState() => _InqvineTapHandlerState();
}

class _InqvineTapHandlerState extends State<InqvineTapHandler> with SingleTickerProviderStateMixin {
  // Eyeballed values. Feel free to tweak.
  static const Duration kFadeOutDuration = Duration(milliseconds: 10);
  static const Duration kFadeInDuration = Duration(milliseconds: 100);
  final Tween<double> _opacityTween = Tween<double>(begin: 1.0);

  AnimationController? _animationController;
  Animation<double>? _opacityAnimation;

  bool _isHovering = false;
  bool get isHovering => _isHovering;
  set isHovering(bool value) {
    if (value != _isHovering) {
      _isHovering = value;
      if (mounted) {
        setState(() {});
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      value: 0.0,
      vsync: this,
    );

    _opacityAnimation = _animationController!.drive(CurveTween(curve: Curves.decelerate)).drive(_opacityTween);
    _setTween();
  }

  @override
  void didUpdateWidget(InqvineTapHandler old) {
    super.didUpdateWidget(old);
    _setTween();
  }

  void _setTween() {
    _opacityTween.end = 0.4;
  }

  @override
  void dispose() {
    _animationController?.dispose();
    _animationController = null;
    super.dispose();
  }

  bool _buttonHeldDown = false;

  void _handleTapDown(TapDownDetails event) {
    if (!_buttonHeldDown) {
      _buttonHeldDown = true;
      _animate();
    }
  }

  void _handleTapUp(TapUpDetails event) {
    if (_buttonHeldDown) {
      HapticFeedback.heavyImpact();
      _buttonHeldDown = false;
      _animate();
    }
  }

  void _handleTapCancel() {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _animate();
    }
  }

  void _animate() {
    if (_animationController!.isAnimating) {
      return;
    }

    final bool wasHeldDown = _buttonHeldDown;
    final TickerFuture ticker = _buttonHeldDown
        ? _animationController!.animateTo(1.0, duration: kFadeOutDuration)
        : _animationController!.animateTo(
            widget.opacityTarget,
            duration: kFadeInDuration,
          );
    ticker.then<void>((void value) {
      if (mounted && wasHeldDown != _buttonHeldDown) {
        _animate();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: isHovering ? SystemMouseCursors.click : SystemMouseCursors.basic,
      onEnter: (PointerEnterEvent event) => isHovering = true,
      onExit: (PointerExitEvent details) => isHovering = false,
      child: IgnorePointer(
        ignoring: !widget.isEnabled,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapDown: _handleTapDown,
          onTapUp: _handleTapUp,
          onTapCancel: _handleTapCancel,
          onTap: widget.onTap,
          child: Semantics(
            button: true,
            child: FadeTransition(
              opacity: _opacityAnimation!,
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
