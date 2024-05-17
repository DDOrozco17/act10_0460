import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:diaz0460/tablas/tabEmpleados.dart';

class FormEmpleado extends StatelessWidget {
  FormEmpleado({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final idEmpleadoController = TextEditingController(text: "");
    final nombreEmpleadoController = TextEditingController(text: "");
    final apellidoEmpleadoController = TextEditingController(text: "");
    final direccionEmpleadoController = TextEditingController(text: "");
    final ciudadEmpleadoController = TextEditingController(text: "");
    final codigoPostalController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff000000),
        title: const Text(
          "Formulario Empleados",
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
                    controller: idEmpleadoController,
                    decoration: InputDecoration(
                      hintText: "id_empleado",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: nombreEmpleadoController,
                    decoration: InputDecoration(
                      hintText: "nombre_empleado",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: apellidoEmpleadoController,
                    decoration: InputDecoration(
                      hintText: "apellido_empleado",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: direccionEmpleadoController,
                    decoration: InputDecoration(
                      hintText: "direccion",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: ciudadEmpleadoController,
                    decoration: InputDecoration(
                      hintText: "ciudad",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: codigoPostalController,
                    decoration: InputDecoration(
                      hintText: "codigo_postal",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TablaEmpleados(
                            idEmpleadoController.text,
                            nombreEmpleadoController.text,
                            apellidoEmpleadoController.text,
                            direccionEmpleadoController.text,
                            ciudadEmpleadoController.text,
                            codigoPostalController.text,
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
                      "Tabla Empleados",
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
