import 'package:flutter/material.dart';
import 'package:praktikum_pertemuan_10/TugasModel.dart';

class DaftarIkanPage extends StatelessWidget {
  final List<Tugas> daftarTugas;
  final Function(int) onDelete;

  DaftarIkanPage(this.daftarTugas, {required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: daftarTugas.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors
                  .white,
              border: Border.all(
                  color:
                      Colors.grey), 
              borderRadius: BorderRadius.circular(
                  8.0), 
            ),
            child: ListTile(
              title: Text(daftarTugas[index].judul),
              subtitle: Text(daftarTugas[index].deskripsi),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  onDelete(index);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
