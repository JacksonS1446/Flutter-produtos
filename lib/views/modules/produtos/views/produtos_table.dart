import 'package:flutter/material.dart';

class ProdutoPage extends StatefulWidget {
  const ProdutoPage({super.key});

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  final DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
            child: PaginatedDataTable(
              header: const Text('Produtos Cadastrados'),
              actions: [
                // ModalCadastrarUsuario(),
              ],
              columns: const [
                DataColumn(label: Text('Nome')),
                DataColumn(label: Text('Última compra')),
                DataColumn(label: Text('Último preço')),
                DataColumn(label: Text('Actions')),
              ],
              source: _data,
              columnSpacing: 100,
              horizontalMargin: 10,
              rowsPerPage: 15,
              showCheckboxColumn: false,
            ),
          ),
        ),
      ),
    );
  }
}

// The "soruce" of the table
class MyData extends DataTableSource {
  // Generate some made-up data
  final List<Map<String, dynamic>> _data = List.generate(
      200,
      (index) => {
            "id": index,
            "Nomes": "Tem um nome aqui",
            "Última compra": "Tem uma data aqui",
            "Último preço" : "Tem um preço aqui",
          });

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => _data.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(
      cells: [
        // DataCell(Text(_data[index]['id'].toString())),
        DataCell(Text(_data[index]["Nomes"])),
        DataCell(Text(_data[index]["Última compra"])),
        DataCell(Text(_data[index]["Último preço"])),
        DataCell(
          Row(
            children: [
              IconButton(
                onPressed: () {},
                color: Colors.orange,
                icon: Icon(Icons.edit),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Colors.red,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
