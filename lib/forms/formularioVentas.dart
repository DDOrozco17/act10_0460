import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:diaz0460/tablas/tabVentas.dart';

class FormVentas extends StatelessWidget {
  FormVentas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final idClienteController = TextEditingController(text: "");
    final idVentaController = TextEditingController(text: "");
    final idVendedorController = TextEditingController(text: "");
    final idProductoController = TextEditingController(text: "");
    final fechaVentaController = TextEditingController(text: "");
    final cantidadController = TextEditingController(text: "");
    final precioUnitarioController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff000000),
        title: const Text(
          "Formulario Ventas",
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
                      hintText: "id_cliente",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: idVentaController,
                    decoration: InputDecoration(
                      hintText: "id_venta",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: idVendedorController,
                    decoration: InputDecoration(
                      hintText: "id_vendedor",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: idProductoController,
                    decoration: InputDecoration(
                      hintText: "id_producto",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: fechaVentaController,
                    decoration: InputDecoration(
                      hintText: "fecha_venta",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: cantidadController,
                    decoration: InputDecoration(
                      hintText: "cantidad",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: precioUnitarioController,
                    decoration: InputDecoration(
                      hintText: "precio_unitario",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TablaVentas(
                            idClienteController.text,
                            idVentaController.text,
                            idVendedorController.text,
                            idProductoController.text,
                            fechaVentaController.text,
                            cantidadController.text,
                            precioUnitarioController.text,
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
                      "Tabla Ventas",
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
