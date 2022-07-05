import 'package:flutter/material.dart';
import './transaction_list.dart';
import './new_transactions.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      tittle: 'New shoes',
      amount: 45.14,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      tittle: 'Weekly Groceries',
      amount: 18.74,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTittle, double txAmount) {
    final newTx = Transaction(
      tittle: txTittle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(), // TODO: fix to normal unique value
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
