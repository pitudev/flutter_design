import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
              image: NetworkImage(
                  'https://images.photowall.com/products/60869/azores-mountain-landscape-1.jpg?h=699&q=85')),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: [Title(), Actions(), Description()],
            ),
          )
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        'Nulla enim Lorem aute aliquip voluptate. Eiusmod Lorem veniam quis incididunt sint commodo quis Lorem ullamco velit. Mollit Lorem sit mollit dolor. Nisi aliquip mollit nulla ea mollit ad fugiat est Lorem eiusmod duis labore. Proident dolore ut proident consequat quis aliqua sint. Aliquip laborum voluptate esse aliqua labore dolore aute amet minim laboris duis pariatur excepteur dolor. Velit velit consequat ea ad elit irure consectetur labore voluptate anim pariatur eu.');
  }
}

class Actions extends StatelessWidget {
  const Actions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.map_outlined, text: 'ROUTES'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          color: Colors.blue,
          icon: Icon(this.icon),
          onPressed: () {},
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Campament de la victòria',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Alcúdia, Espanya',
              style: TextStyle(color: Colors.black45),
            )
          ],
        ),
        Expanded(child: Container()),
        Icon(
          Icons.star,
          color: Colors.red,
        ),
        Text('18'),
      ],
    );
  }
}
