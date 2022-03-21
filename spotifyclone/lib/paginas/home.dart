import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../constantes/const.dart';

class PaginaPrincipal extends StatefulWidget {
  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  int activoMenu1 = 0;
  int activoMenu2 = 0;
  int activoMenu3 = 0;
  int activoMenu4 = 0;
  int activoMenu5 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 0, 255),
      appBar: AppBar(
        title: mostrarAppBar(),
      ),
      body: bodyAppSpf(),
      //: mostrarAppBar(),
    );
  }

  Widget mostrarAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Animales Paisaje",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 89, 0, 255),
                  fontWeight: FontWeight.bold),
            ),
            Icon(Entypo.list),
          ],
        ),
      ),
    );
  }

  Widget bodyAppSpf() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            //crossAxisAlignment: CrossAxisAlignment.start,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                  children: List.generate(song_type_1.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        activoMenu1 = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song_type_1[index],
                          style: TextStyle(
                              //color: Colors.grey,
                              fontSize: 15,
                              color: activoMenu1 == index
                                  ? Color.fromARGB(255, 139, 76, 175)
                                  : Color.fromARGB(255, 255, 0, 242),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        activoMenu1 == index
                            ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5)),
                              )
                            : Container()
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(song.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 900,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(song[index]['img']),
                                  fit: BoxFit.cover),
                              color: Color.fromARGB(255, 255, 0, 0),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          song[index]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 0, 0),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            song[index]['descriptions'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 30, 255, 0),
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          //Categoria paisajes
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            //crossAxisAlignment: CrossAxisAlignment.start,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                  children: List.generate(song_type_2.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        activoMenu1 = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song_type_2[index],
                          style: TextStyle(
                              //color: Colors.grey,
                              fontSize: 15,
                              color: activoMenu2 == index
                                  ? Color.fromARGB(255, 0, 255, 255)
                                  : Color.fromARGB(255, 243, 75, 75),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        activoMenu2 == index
                            ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 102, 255),
                                    borderRadius: BorderRadius.circular(5)),
                              )
                            : Container()
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 20,
          ),

//segundo bloque Carrucel Paisajes

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(song2.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(song2[index]['img']),
                                  fit: BoxFit.cover),
                              color: Color.fromARGB(255, 229, 255, 0),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          song2[index]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 0, 0),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            song2[index]['descriptions'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //Tercer Bloque Categorias
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            //crossAxisAlignment: CrossAxisAlignment.start,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                  children: List.generate(song_type_3.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        activoMenu3 = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song_type_3[index],
                          style: TextStyle(
                              //color: Colors.grey,
                              fontSize: 15,
                              color: activoMenu3 == index
                                  ? Color.fromARGB(255, 77, 255, 83)
                                  : Colors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        activoMenu1 == index
                            ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5)),
                              )
                            : Container()
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //Tercer Bloque Carrucel
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(song3.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(song3[index]['img']),
                                  fit: BoxFit.cover),
                              color: Color.fromARGB(255, 49, 78, 50),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          song3[index]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 0, 47, 255),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            song3[index]['descriptions'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 148, 0, 0),
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //Cuarta categoria
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            //crossAxisAlignment: CrossAxisAlignment.start,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                  children: List.generate(song_type_4.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        activoMenu3 = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song_type_4[index],
                          style: TextStyle(
                              //color: Colors.grey,
                              fontSize: 15,
                              color: activoMenu3 == index
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        activoMenu1 == index
                            ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 163, 240, 166),
                                    borderRadius: BorderRadius.circular(5)),
                              )
                            : Container()
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //Cuarta Categoria Carrucel
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(song4.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(song4[index]['img']),
                                  fit: BoxFit.cover),
                              color: Color.fromARGB(255, 17, 0, 255),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          song4[index]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 98, 0, 255),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            song4[index]['descriptions'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 140, 0, 255),
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //Quinta Categoria
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            //crossAxisAlignment: CrossAxisAlignment.start,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                  children: List.generate(song_type_5.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        activoMenu3 = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song_type_5[index],
                          style: TextStyle(
                              //color: Colors.grey,
                              fontSize: 15,
                              color: activoMenu3 == index
                                  ? Color.fromARGB(255, 174, 0, 255)
                                  : Color.fromARGB(255, 255, 0, 200),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        activoMenu1 == index
                            ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 98, 0, 255),
                                    borderRadius: BorderRadius.circular(5)),
                              )
                            : Container()
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //Quinta Categoria Carrucel
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(song5.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(song5[index]['img']),
                                  fit: BoxFit.cover),
                              color: Color.fromARGB(255, 0, 66, 2),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          song5[index]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 0, 43),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            song5[index]['descriptions'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 255, 0, 140),
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
