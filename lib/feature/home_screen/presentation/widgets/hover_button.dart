import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_/feature/home_screen/riverpod/hover_provider.dart';
import 'package:sprung/sprung.dart';

class HoverButton extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  final String id;

  const HoverButton({super.key, required this.builder, required this.id});

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final isHovered = ref.watch(onHoveredProvider(widget.id));

        final hoveredTransform = Matrix4.identity()
          ..translate(0, -5, 0)
          ..scale(1.0);
        final transform = isHovered ? hoveredTransform : Matrix4.identity();
        return MouseRegion(
          onEnter: (event) {
            ref
                .read(onHoveredProvider(widget.id).notifier)
                .update((state) => !state);
          },
          onExit: (event) {
            ref.read(onHoveredProvider(widget.id).notifier).state = false;
          },
          child: AnimatedContainer(
            curve: Sprung.underDamped,
            duration: Duration(microseconds: 200),
            transform: transform,
            child: widget.builder(isHovered),
          ),
        );
      },
    );
  }
}
