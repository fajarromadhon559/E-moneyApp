import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transaction});
  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 132, 187, 232),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              width: 35,
              height: 35,
              child: Center(
                child: Text(
                  transaction.to
                      .split(" ")
                      .map((e) => e.substring(0, 1))
                      .toList()
                      .join(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    transaction.to,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  transaction.date,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "-Rp. ${transaction.ammount}",
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                transaction.descriotion,
                style: const TextStyle(color: Colors.black, fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
