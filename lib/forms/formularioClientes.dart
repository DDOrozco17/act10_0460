import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:diaz0460/tablas/tabClientes.dart';

class FormCliente extends StatelessWidget {
  FormCliente({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final idClienteController = TextEditingController(text: "");
    final nombreClienteController = TextEditingController(text: "");
    final apellidoClienteController = TextEditingController(text: "");
    final direccionClienteController = TextEditingController(text: "");
    final ciudadClienteController = TextEditingController(text: "");
    final estadoClienteController = TextEditingController(text: "");
    final codigoPostalClienteController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff000000),
        title: const Text(
          "Formulario Cliente",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Scrollbar(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Gap(20),
                  TextField(
                    controller: idClienteController,
                    decoration: InputDecoration(
                      hintText: "ID Cliente",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: nombreClienteController,
                    decoration: InputDecoration(
                      hintText: "Nombre",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: apellidoClienteController,
                    decoration: InputDecoration(
                      hintText: "Apellido",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: direccionClienteController,
                    decoration: InputDecoration(
                      hintText: "Dirección",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: ciudadClienteController,
                    decoration: InputDecoration(
                      hintText: "Ciudad",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: estadoClienteController,
                    decoration: InputDecoration(
                      hintText: "Estado",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: codigoPostalClienteController,
                    decoration: InputDecoration(
                      hintText: "Código Postal",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TablaClientes(
                            idClienteController.text,
                            nombreClienteController.text,
                            apellidoClienteController.text,
                            direccionClienteController.text,
                            ciudadClienteController.text,
                            estadoClienteController.text,
                            codigoPostalClienteController.text,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff000000),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
