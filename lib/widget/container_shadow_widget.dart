import 'package:flutter/material.dart';

class ContainerShadowWidget extends StatelessWidget {

  final double width;
  final double height;

  ContainerShadowWidget({@required this.width,
    @required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0)),
          color: Colors.black,
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 10.0, offset: Offset(1, 5))
          ]
      ),
    );
  }
}
