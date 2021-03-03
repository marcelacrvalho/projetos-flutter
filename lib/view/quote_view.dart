import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanye_app/controller/api_controller.dart';
import 'package:kanye_app/widget/button_flat_widget.dart';
import 'package:kanye_app/widget/container_shadow_widget.dart';
import 'package:kanye_app/widget/text_widget.dart';

final ApiController c = Get.put(ApiController());

class QuoteView extends StatefulWidget {
  @override
  _QuoteViewState createState() => _QuoteViewState();
}

class _QuoteViewState extends State<QuoteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: _bodyView(),
    );
  }

  Widget _bodyView() {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: Get.size.height * 1.0,
            child:
                Image.asset('assets/images/Kanye-BG.png', fit: BoxFit.fitWidth),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ContainerShadowWidget(
              width: double.infinity,
              height: Get.size.height - 100.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: updateText(),
                  textColor: Colors.white,
                  isCenter: true,
                ),
                ButtonFlatWidget(
                  onTap: onClick,
                  buttonText: 'give me more',
                  buttonColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String updateText() {
    setState(() {
      return c.currentQuote;
    });
  }
  void onClick() async {
     await c.getQuote();
  }
}
