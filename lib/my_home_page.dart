import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/JLuqueBarber.jpg'),
              fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[
            Container(
              color: Colors.black87,
              child: ButtonBar(
              mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.facebookSquare),
                    color: Colors.blue.shade900,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.instagram),
                    color: Colors.pink.shade900,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.whatsapp),
                    color: Colors.green.shade400,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.white,),
                label: Text('COGE CITA AQUI !',style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black.withOpacity(0.7))
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}