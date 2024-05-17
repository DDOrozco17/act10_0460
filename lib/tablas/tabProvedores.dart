import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TablaProveedores extends StatelessWidget {
  final String idProveedor;
  final String nombreProveedor;
  final String direccion;
  final String ciudad;
  final String codigoPostal;
  final String telefono;

  TablaProveedores(
    this.idProveedor,
    this.nombreProveedor,
    this.direccion,
    this.ciudad,
    this.codigoPostal,
    this.telefono, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff354649),
        title: const Text(
          "Tabla Proveedores",
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
      DataColumn(label: Text("ID Proveedor")),
      DataColumn(label: Text("Nombre")),
      DataColumn(label: Text("Dirección")),
      DataColumn(label: Text("Ciudad")),
      DataColumn(label: Text("Código Postal")),
      DataColumn(label: Text("Teléfono")),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text(idProveedor)),
        DataCell(Text(nombreProveedor)),
        DataCell(Text(direccion)),
        DataCell(Text(ciudad)),
        DataCell(Text(codigoPostal)),
        DataCell(Text(telefono)),
      ]),
    ];
  }
}
