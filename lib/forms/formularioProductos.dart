import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:diaz0460/tablas/tabProductos.dart';

class FormProducto extends StatelessWidget {
  FormProducto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final idProductoController = TextEditingController(text: "");
    final nombreProductoController = TextEditingController(text: "");
    final descripcionController = TextEditingController(text: "");
    final precioUnitarioController = TextEditingController(text: "");
    final stockDisponibleController = TextEditingController(text: "");
    final categoriaController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff000000),
        title: const Text(
          "Formulario Productos",
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
                    controller: idProductoController,
                    decoration: InputDecoration(
                      hintText: "ID Producto",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: nombreProductoController,
                    decoration: InputDecoration(
                      hintText: "Nombre Producto",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: descripcionController,
                    decoration: InputDecoration(
                      hintText: "Descripción",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: precioUnitarioController,
                    decoration: InputDecoration(
                      hintText: "Precio Unitario",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: stockDisponibleController,
                    decoration: InputDecoration(
                      hintText: "Stock Disponible",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: categoriaController,
                    decoration: InputDecoration(
                      hintText: "Categoría",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TablaProductos(
                            idProductoController.text,
                            nombreProductoController.text,
                            descripcionController.text,
                            precioUnitarioController.text,
                            stockDisponibleController.text,
                            categoriaController.text,
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
                      "Tabla Productos",
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
