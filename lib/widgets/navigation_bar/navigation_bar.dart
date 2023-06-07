import "package:flutter/material.dart";

class NavigatorBar extends StatelessWidget {
  const NavigationBar({Key key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(children: <Widget>[
        SizedBox( Image.asset('assets/logoo.png'),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _NavBarItem('Projects'),
            SizedBox(width: 60,),
            _NavBarItem('About')
          ],)

      ],)
    )
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontSize: 18), 
    );
  
  }
}