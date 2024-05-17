import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TablaEmpleados extends StatelessWidget {
  final String idEmpleado;
  final String nombreEmpleado;
  final String apellidoEmpleado;
  final String direccionEmpleado;
  final String ciudadEmpleado;
  final String codigoPostalEmpleado;

  TablaEmpleados(
    this.idEmpleado,
    this.nombreEmpleado,
    this.apellidoEmpleado,
    this.direccionEmpleado,
    this.ciudadEmpleado,
    this.codigoPostalEmpleado, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff354649),
        title: const Text(
          "Tabla Empleados",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: _createColumns(),
          rows: _createRows(),
        ),
      ),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text("ID Empleado")),
      DataColumn(label: Text("Nombre")),
      DataColumn(label: Text("Apellido")),
      DataColumn(label: Text("Dirección")),
      DataColumn(label: Text("Ciudad")),
      DataColumn(label: Text("Código Postal")),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text(idEmpleado)),
        DataCell(Text(nombreEmpleado)),
        DataCell(Text(apellidoEmpleado)),
        DataCell(Text(direccionEmpleado)),
        DataCell(Text(ciudadEmpleado)),
        DataCell(Text(codigoPostalEmpleado)),
      ]),
    ];
  }
}
