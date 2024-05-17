import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TablaProductos extends StatelessWidget {
  final String idProducto;
  final String nombreProducto;
  final String descripcion;
  final String precioUnitario;
  final String stockDisponible;
  final String categoria;

  TablaProductos(
    this.idProducto,
    this.nombreProducto,
    this.descripcion,
    this.precioUnitario,
    this.stockDisponible,
    this.categoria, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff354649),
        title: const Text(
          "Tabla Productos",
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
      DataColumn(label: Text("ID Producto")),
      DataColumn(label: Text("Nombre")),
      DataColumn(label: Text("Descripción")),
      DataColumn(label: Text("Precio Unitario")),
      DataColumn(label: Text("Stock Disponible")),
      DataColumn(label: Text("Categoría")),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text(idProducto)),
        DataCell(Text(nombreProducto)),
        DataCell(Text(descripcion)),
        DataCell(Text(precioUnitario)),
        DataCell(Text(stockDisponible)),
        DataCell(Text(categoria)),
      ]),
    ];
  }
}
