import 'package:flutter/material.dart';
import 'package:diaz0460/forms/formularioClientes.dart';
import 'package:diaz0460/forms/formularioEmpleados.dart';
import 'package:diaz0460/forms/formularioProductos.dart';
import 'package:diaz0460/forms/formularioProvedores.dart';
import 'package:diaz0460/forms/formularioVentas.dart';

import 'package:diaz0460/tablas/tabClientes.dart';
import 'package:diaz0460/tablas/tabEmpleados.dart';
import 'package:diaz0460/tablas/tabProductos.dart';
import 'package:diaz0460/tablas/tabProvedores.dart';
import 'package:diaz0460/tablas/tabVentas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Formularios y Tablas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formularios y Tablas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormCliente()),
                );
              },
              child: const Text('Formulario Cliente'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormEmpleado()),
                );
              },
              child: const Text('Formulario Empleado'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormProducto()),
                );
              },
              child: const Text('Formulario Productos'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormProveedor()),
                );
              },
              child: const Text('Formulario Proveedores'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormVentas()),
                );
              },
              child: const Text('Formulario Ventas'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TablaClientes("", "", "", "", "", "", "")),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff273031),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              child: const Text(
                "Tabla Clientes",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TablaEmpleados("", "", "", "", "", "")),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff273031),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              child: const Text(
                "Tabla Empleados",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TablaProductos("", "", "", "", "", "")),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff273031),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              child: const Text(
                "Tabla Productos",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TablaProveedores("", "", "", "", "", "")),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff273031),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              child: const Text(
                "Tabla Provedores",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TablaVentas("", "", "", "", "", "", "")),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff273031),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              child: const Text(
                "Tabla Ventas",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
