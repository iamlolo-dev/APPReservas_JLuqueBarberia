import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            buttonsWidget(context),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(15),
              child: ElevatedButton.icon(
                icon: const Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.white,
                ),
                label: const Text('! COGE CITA ONLINE AQUI !',
                    style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.red.withOpacity(0.8))),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buttonsWidget(BuildContext context) {
    return Expanded(
        child: Column(
      children: <Widget>[
        Expanded(
            child: Container(
                color: Colors.black.withOpacity(0.8),
                margin: const EdgeInsets.only(top: 300),
                width: MediaQuery.of(context).size.width,
                height: 400,
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      color: Colors.grey.shade800,
                      child: Column(children: const <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Vila-Real (Castellón)",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Avd. Alemania, Nº 1",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white)),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("12540",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white)),
                        ),
                      ]),
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.topLeft,
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: Column(children: const <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("LA AUTÉNTICA BARBERÍA EN VILA-REAL",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                                "Cuidamos a nuestros clientes bajo el espirítu tradicional de barberia y les tratamos con los mejores productos especialmente indicados para el hombre.",
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.white)),
                          ),
                        ])),
                    const SizedBox(height: 5),
                    const Divider(height: 2.0, color: Colors.red),
                    const SizedBox(height: 10),
                    Container(
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      height: 75,
                      child: Column(
                        children: <Widget>[
                          Row(children: const [
                            Icon(
                              Icons.access_time_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'LMMJV de 9:30 a 13:30 y de 16:00 a 20:00.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                          Row(children: const [
                            Icon(
                              Icons.access_time_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Sabados de 9:30 a 14:00.",
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                          Row(children: const [
                            Icon(
                              Icons.phone_android,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "689 27 20 03",
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade800,
                                      borderRadius:
                                          const BorderRadius.all(Radius.circular(5))),
                                  child: IconButton(
                                    icon: const FaIcon(
                                        FontAwesomeIcons.facebookSquare),
                                    color: Colors.white,
                                    onPressed: () {},
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
                                        colors: [
                                          Colors.purple,
                                          Colors.pink,
                                          Colors.yellow
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: IconButton(
                                    icon: const FaIcon(
                                        FontAwesomeIcons.instagram),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                      color: Colors.green.shade900,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(25))),
                                  child: IconButton(
                                    icon:
                                        const FaIcon(FontAwesomeIcons.whatsapp),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ))), // Text Bottom
      ],
    ));
  }
}