import 'package:alphagoing/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AlphaGoingSwitch extends StatefulWidget {
  final Function(bool value) onChanged;
  final bool value;
  final Color activeColor;
  final Color inactiveTrackColor;

  const AlphaGoingSwitch({
    super.key,
    required this.onChanged,
    required this.value,
    this.activeColor = AppColors.primary,
    this.inactiveTrackColor = AppColors.gray300,
  });

  @override
  State<AlphaGoingSwitch> createState() => _AlphaGoingSwitchState();
}

class _AlphaGoingSwitchState extends State<AlphaGoingSwitch> {
  bool _isSwitched = false;

  @override
  void initState() {
    super.initState();

    _isSwitched = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSwitched = !_isSwitched;
        });
        widget.onChanged.call(_isSwitched);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 44,
            height: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color:
                  _isSwitched ? widget.activeColor : widget.inactiveTrackColor,
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.ease,
            left: _isSwitched ? 19 : 1,
            child: GestureDetector(
              onHorizontalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  double newPosition = details.localPosition.dx;
                  if (newPosition < -16.0) {
                    newPosition = -16.0;
                  } else if (newPosition > 16.0) {
                    newPosition = 16.0;
                  }
                  _isSwitched = newPosition > 0.0;
                });
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
