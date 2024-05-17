import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:diaz0460/tablas/tabProvedores.dart';

class FormProveedor extends StatelessWidget {
  FormProveedor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final idProveedorController = TextEditingController(text: "");
    final nombreProveedorController = TextEditingController(text: "");
    final direccionController = TextEditingController(text: "");
    final ciudadController = TextEditingController(text: "");
    final codigoPostalController = TextEditingController(text: "");
    final telefonoController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff000000),
        title: const Text(
          "Formulario Proveedores",
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
                    controller: idProveedorController,
                    decoration: InputDecoration(
                      hintText: "ID Proveedor",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: nombreProveedorController,
                    decoration: InputDecoration(
                      hintText: "Nombre Proveedor",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: direccionController,
                    decoration: InputDecoration(
                      hintText: "Dirección",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: ciudadController,
                    decoration: InputDecoration(
                      hintText: "Ciudad",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: codigoPostalController,
                    decoration: InputDecoration(
                      hintText: "Código Postal",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: telefonoController,
                    decoration: InputDecoration(
                      hintText: "Teléfono",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TablaProveedores(
                            idProveedorController.text,
                            nombreProveedorController.text,
                            direccionController.text,
                            ciudadController.text,
                            codigoPostalController.text,
                            telefonoController.text,
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
                      "Tabla Proveedores",
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
