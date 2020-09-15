import 'dart:async';
import 'package:bytebank/models/transfer.dart';
import 'file:///C:/git/mo-20/bytebank-9428/lib/screens/transfer/form.dart';
import 'package:flutter/material.dart';

const _appBarTitle = 'Transfers';

class TransfersList extends StatefulWidget {
  final List<Transfer> _transfers = List();

  @override
  State<StatefulWidget> createState() {
    return TransfersListState();
  }
}

class TransfersListState extends State<TransfersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: ListView.builder(
        itemCount: widget._transfers.length,
        itemBuilder: (context, index) {
          final transfer = widget._transfers[index];
          return ItemTransfer(transfer);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TransferForm(),
            ),
          ).then(
            (transferReceived) => _updates(transferReceived),
          );
        },
      ),
    );
  }

  FutureOr<dynamic> _updates(transferReceived) {
    if (transferReceived != null) {
      setState(() {
        widget._transfers.add(transferReceived);
      });
    }
  }
}

class ItemTransfer extends StatelessWidget {
  final Transfer _transfer;

  ItemTransfer(this._transfer);

  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transfer.value.toString()),
        subtitle: Text(_transfer.accountNumber.toString()),
      ),
    );
  }
}
