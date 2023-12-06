// ignore: file_names
import 'package:flutter/material.dart';
import 'package:praktikum_pertemuan_10/TugasModel.dart';

class TambahIkanPage extends StatelessWidget {
  final Function(Tugas) onSubmit;

  // ignore: use_key_in_widget_constructors
  TambahIkanPage({required this.onSubmit});

  final TextEditingController _judulController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 163, 206, 241) ,
        title: Text('Tambah Tugas'),
      ),
      body: Container(
        decoration: BoxDecoration(color: const Color.fromARGB(255, 114, 168, 212)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _judulController,
                decoration: InputDecoration(labelText: 'Nama Ikan'),
              ),
              TextField(
                controller: _deskripsiController,
                decoration: InputDecoration(labelText: 'Deskripsi'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Tugas tugas =
                      Tugas(_judulController.text, _deskripsiController.text);
                  onSubmit(tugas);
                  Navigator.pop(context);
                },
                child: Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
