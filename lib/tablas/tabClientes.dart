import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TablaClientes extends StatelessWidget {
  final String idCliente;
  final String nombreCliente;
  final String apellidoCliente;
  final String direccionCliente;
  final String ciudadCliente;
  final String estadoCliente;
  final String codigoPostalCliente;

  TablaClientes(
    this.idCliente,
    this.nombreCliente,
    this.apellidoCliente,
    this.direccionCliente,
    this.ciudadCliente,
    this.estadoCliente,
    this.codigoPostalCliente, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff354649),
        title: const Text(
          "Tabla Clientes",
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
      DataColumn(label: Text("ID Cliente")),
      DataColumn(label: Text("Nombre")),
      DataColumn(label: Text("Apellido")),
      DataColumn(label: Text("Dirección")),
      DataColumn(label: Text("Ciudad")),
      DataColumn(label: Text("Estado")),
      DataColumn(label: Text("Código Postal")),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text(idCliente)),
        DataCell(Text(nombreCliente)),
        DataCell(Text(apellidoCliente)),
        DataCell(Text(direccionCliente)),
        DataCell(Text(ciudadCliente)),
        DataCell(Text(estadoCliente)),
        DataCell(Text(codigoPostalCliente)),
      ]),
    ];
  }
}
