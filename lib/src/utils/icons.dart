import 'package:flutter/material.dart';

final _icons = <String, IconData> {
  'group_outlined': Icons.group_outlined,
  'animation': Icons.animation,
  'list': Icons.list,
  'list_alt_outlined': Icons.list_alt_outlined,
  'folder_open': Icons.folder_open,
  'image': Icons.image,
  'input': Icons.input,
  'hourglass_empty_rounded': Icons.hourglass_empty_rounded,
  'accessibility': Icons.accessibility,
  'keyboard_arrow_right': Icons.keyboard_arrow_right,
  'text_fields_sharp': Icons.text_fields_sharp,
  'toggle_off_outlined': Icons.toggle_off_outlined,
  'home': Icons.home,
  'settings': Icons.settings
};

Icon getIcon({
  String iconName,
  Color color = Colors.blueGrey
}) => Icon(
  _icons.containsKey(iconName) ?
    _icons[iconName]
  :
    _icons['hourglass_empty_rounded'],
  color: color
);