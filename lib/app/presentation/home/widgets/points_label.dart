import 'package:flutter/material.dart';

Widget pointsLabel(int pts, BuildContext context) => Text(
      '$pts ${pts == 1 ? 'pt' : 'pts'}',
      style: Theme.of(context)
          .textTheme
          .headlineMedium
          ?.copyWith(fontWeight: FontWeight.w600),
    );
