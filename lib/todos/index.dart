import 'package:flutter/material.dart';
import 'package:todosapp/data/asignaturas.dart';

class Todos extends StatefulWidget {
  const Todos({super.key});

  @override
  State<Todos> createState() => _TodosState();
}

class _TodosState extends State<Todos> {
  List<Asignatura> asignaturas = [
    Asignatura(codigo: '4864564564', nombre: "Fisica", curso: 1)
  ];
  int number = 0;

  void addSignature(){
    asignaturas.add(Asignatura(codigo: "$number", nombre: "$number", curso: number));
    setState(() {
      asignaturas;
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lista de todos",
          style: TextStyle(color: Colors.blue),
        ),
        actions: [
          IconButton(onPressed: addSignature, icon: Icon(Icons.add), color: Colors.blue,),
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
        child: ListView.builder(
          itemCount: asignaturas.length,
          itemBuilder: (context, idx) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  asignaturas[idx].nombre,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        //aqui van las funciones de tipo editar
                      },
                      icon: Icon(Icons.edit),
                      color: Colors.orange,
                    ),
                    IconButton(
                      onPressed: () {
                        //aqui va la funcion de tipo borrar
                      },
                      icon: Icon(Icons.delete),
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
