import 'package:parking_app/models/reserve.dart';
import 'package:parking_app/models/reserve.dart';
import 'package:parking_app/screens/reservation/reserve_tile.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class ReserveList extends StatefulWidget {
  const ReserveList({Key? key}) : super(key: key);

  @override
  State<ReserveList> createState() => _ReserveListState();
}

class _ReserveListState extends State<ReserveList> {
  @override
  Widget build(BuildContext context) {
    final reserve = Provider.of<List<String>?>(context);

    return ListView.builder(
      itemCount: reserve?.length ?? 0,
      itemBuilder: (context, index) {
        // print(reserve![index]);
        return ReserveTile(doc_id: reserve![index], index: index + 1);
      },
    );
  }
}
