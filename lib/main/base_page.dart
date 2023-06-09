import 'package:flutter/material.dart';

import 'app_styles.dart';

abstract class BasePageState<T> extends State {
  Widget textArea(TextEditingController controller, String label,
      {bool enabled = true}) {
    return Container(
        decoration: BoxDecoration(
            color: AppStyles.textAreaBackgroundColor,
            borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.symmetric(
            vertical: AppStyles.appHorizontalPadding / 4),
        padding: const EdgeInsets.all(AppStyles.appHorizontalPadding),
        child: TextField(
            style: Theme.of(context).textTheme.caption,
            maxLines: 2,
            enabled: enabled,
            textAlign: TextAlign.start,
            controller: controller,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: label,
              labelStyle: const TextStyle(color: AppStyles.lightTextColor),
              // focusedBorder: InputBorder.none,
              // enabledBorder: InputBorder.none,
            )));
  }
}
