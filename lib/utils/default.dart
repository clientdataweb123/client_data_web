import 'package:client_data/utils/Navbar.dart';
import 'package:flutter/material.dart';

class defaultWidget extends StatelessWidget {
  defaultWidget(this.widget, [this.showimage = false, this.showlogout = true]);
  Widget widget;
  bool showimage;
  bool showlogout;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.black, Colors.black87, Colors.blueGrey.shade900,
              Colors.deepPurple
              // Color.fromRGBO(90, 20, 120, 1.0),
              // Color.fromRGBO(36, 11, 54, 1.0)
            ]),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Navbar(showlogout),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 22.0, horizontal: 40.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          pageChildren(constraints.biggest.width / 2, context),
                    );
                  } else {
                    return Column(
                      children:
                          pageChildren(constraints.biggest.width, context),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> pageChildren(double width, BuildContext context) {
    return <Widget>[
      showimage
          ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Image.asset(
                "assets/images/lp_image.png",
                width: width,
                //fit: BoxFit.cover,
              ),
            )
          : Text(''),
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: widget,
            )
          ],
        ),
      ),
      Spacer(),
    ];
  }
}
