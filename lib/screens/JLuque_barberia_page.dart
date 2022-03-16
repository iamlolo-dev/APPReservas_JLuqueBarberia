import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';

import '../state/state_management.dart';

class JLuqueBarberia extends StatefulWidget {
  const JLuqueBarberia({Key? key}) : super(key: key);

  @override
  State<JLuqueBarberia> createState() => _JLuqueBarberiaState();
}

class _JLuqueBarberiaState extends State<JLuqueBarberia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/JLuqueBarber.jpg'),
              fit: BoxFit.cover)), // fondo pantalla
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        buttonsWidget(context),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          alignment: Alignment.topLeft,
          width: MediaQuery.of(context).size.width,
          color: Colors.black.withOpacity(0.6),
          child: Column(
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade800,
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: IconButton(
                    icon: const FaIcon(FontAwesomeIcons.facebookSquare),
                    color: Colors.white,
                    onPressed: () async {
                      Share.share(
                          "https://www.facebook.com/Peluquer%C3%ADa-caballeros-Jorge-Luque-793466670736679/");
                    },
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.purple, Colors.pink, Colors.yellow],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: IconButton(
                    icon: const FaIcon(FontAwesomeIcons.instagram),
                    color: Colors.white,
                    onPressed: () async {
                      Share.share(
                          "https://www.instagram.com/jl.barber_/?hl=es");
                    },
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.green.shade900,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25))),
                  child: IconButton(
                    icon: const FaIcon(FontAwesomeIcons.whatsapp),
                    color: Colors.white,
                    onPressed: () async {
                      Share.share(
                          "https://api.whatsapp.com/send/?phone=%2B34689272003&text&app_absent=0");
                    },
                  ),
                ),
              ]),
            ],
          ),
        ),
      ]),
    ));
  }

  Widget buttonsWidget(BuildContext context) {
    return Expanded(
        child: Column(
      children: <Widget>[
        Expanded(
            child: Container(
                //contenedor central black semitransparente
                color: Colors.black.withOpacity(0.6),
                margin: const EdgeInsets.only(top: 330),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      color: Colors.black.withOpacity(0.8),
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        ' Información.',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: <Widget>[
                          Row(children: const [
                            Icon(
                              Icons.access_time_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'LMMJV de 9:30 a 13:30 y de 16:00 a 20:00.',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ]),
                          const SizedBox(height: 5),
                          Row(children: const [
                            Icon(
                              Icons.access_time_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Sabados de 9:30 a 14:00.",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ]),
                          const SizedBox(height: 5),
                          Row(children: const [
                            Icon(
                              Icons.phone_android,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "689 27 20 03",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ]),
                          const SizedBox(height: 5),
                          Row(children: const [
                            Icon(
                              Icons.home_work_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Av. Alemanya, 1, 12540 Vila-real, Castelló. ",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    const SizedBox(height: 35),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(8),
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.calendar_today_outlined,
                          color: Colors.white,
                        ),
                        label: const Text('PIDE TU CITA',
                            style: TextStyle(color: Colors.white)),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.red.withOpacity(0.8))),
                        onPressed: () => processLogin(context),
                      ),
                    ) // Boton Coger cita
                  ],
                ))), // Text Bottom
      ],
    ));
  }

  processLogin(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser;
    if(user == null) { // user not login, show login
      FirebaseAuthUi.instace()
          .launchAuth([
            AuthProvider.phone()
      ]).then((firebaseUser){
        //Refresh state
        context.read(userLogged).state = firebaseUser;
      });
    }
    else { // user already login, state home page

    }
  }
}
