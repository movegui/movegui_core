import 'package:flutter/material.dart';
import 'package:movegui_core/l10n/app_localizations.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    super.key,
    required this.isActive,
    required this.activColor,
    required this.disabledColor,
    this.textAlign = TextAlign.center,
    this.icon,
  });
  final bool isActive;
  final TextAlign? textAlign;
  final IconData? icon;
  final Color activColor;
  final Color disabledColor;

  @override
  Widget build(BuildContext context) {
    final color = isActive ? activColor : disabledColor;
    final alignment = switch (textAlign) {
      TextAlign.center => Alignment.center,
      TextAlign.end => AlignmentDirectional.centerEnd,
      TextAlign.left => Alignment.centerLeft,
      TextAlign.right => Alignment.centerRight,
      _ => AlignmentDirectional.centerStart,
    };

    return Align(
      alignment: alignment,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon ?? Icons.work, color: color),
          const SizedBox(width: 8),
          Text(
            isActive
                ? AppLocalizations.of(context)!.employe_status_actf
                : AppLocalizations.of(context)!.employe_status_non_actf,
            style: TextStyle(color: color),
            textAlign: textAlign,
          ),
        ],
      ),
    );
  }
}
