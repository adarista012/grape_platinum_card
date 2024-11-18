import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:grape_platinum_card/app/app_colors.dart';

Widget pointsTextField(Function(String string) onChanged) => Padding(
      padding: const EdgeInsets.all(16.0),
      child: CupertinoTextField(
        onChanged: onChanged,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(48),
        ),
        placeholder: 'Points',
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
    );
