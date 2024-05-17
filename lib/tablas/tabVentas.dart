import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TablaVentas extends StatelessWidget {
  final String idCliente;
  final String idVenta;
  final String idVendedor;
  final String idProducto;
  final String fechaVenta;
  final String cantidad;
  final String precioUnitario;

  TablaVentas(
    this.idCliente,
    this.idVenta,
    this.idVendedor,
    this.idProducto,
    this.fechaVenta,
    this.cantidad,
    this.precioUnitario, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff354649),
        title: const Text(
          "Tabla Ventas",
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
      DataColumn(label: Text("ID Venta")),
      DataColumn(label: Text("ID Vendedor")),
      DataColumn(label: Text("ID Producto")),
      DataColumn(label: Text("Fecha Venta")),
      DataColumn(label: Text("Cantidad")),
      DataColumn(label: Text("Precio Unitario")),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text(idCliente)),
        DataCell(Text(idVenta)),
        DataCell(Text(idVendedor)),
        DataCell(Text(idProducto)),
        DataCell(Text(fechaVenta)),
        DataCell(Text(cantidad)),
        DataCell(Text(precioUnitario)),
      ]),
    ];
  }
}
