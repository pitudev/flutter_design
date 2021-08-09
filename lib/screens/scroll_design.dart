import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [
        Page1(),
        Page2(),
      ],
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Background(), MainContent()],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              '34º',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
            Text('Dilluns',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                    fontWeight: FontWeight.bold)),
            Expanded(child: Container()),
            Icon(
              Icons.keyboard_arrow_down,
              size: 70,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30BAD6),
        child: Image(
          image: AssetImage('assets/scroll-1.png'),
          height: double.infinity,
          alignment: Alignment.topCenter,
        ));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 22),),
          ),
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder()
          ),
          
        ),
      ),
    );
  }
}
