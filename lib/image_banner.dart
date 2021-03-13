import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _path;
  final String _type;
  final double _height;

  ImageBanner(this._path, this._type, this._height);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: _height,
      ),
      decoration: BoxDecoration(color: Colors.green),
      child: _type == 'asset'
          ? Image.asset(
              _path,
              fit: BoxFit.cover,
            )
          : Image.network(
              _path,
              fit: BoxFit.cover,
            ),
    );
  }
}
