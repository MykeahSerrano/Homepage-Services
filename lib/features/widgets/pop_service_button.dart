import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopServiceButton extends StatelessWidget {
  final IconData? icon;
  final String label;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final String? svgAsset;

  const PopServiceButton({
    Key? key,
    this.icon,
    required this.label,
    required this.onTap,
    this.backgroundColor,
    this.svgAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(14),
            child:
                svgAsset != null
                    ? SvgPicture.asset(svgAsset!, height: 24, width: 24)
                    : Icon(icon, size: 24, color: Colors.black87),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 13,
              fontWeight: FontWeight.w400,
              letterSpacing: 0,
            ),
          ),
        ],
      ),
    );
  }
}
