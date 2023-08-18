class Transaction {
  final int id;
  final String to;
  final String ammount;
  final String date;
  final String descriotion;

  Transaction(this.id, this.to, this.ammount, this.date, this.descriotion);
}

final List<Transaction> transactions = [
  Transaction(1, 'Shoppe', '500.000', '17 Agustus 2022 12:33', 'Baju'),
  Transaction(2, 'Tokopedia', '1.000.000', '17 January 2023 12:33', 'Laptop'),
  Transaction(3, 'Traveloka', '350.000', '17 September 2023 12:33', 'Celana'),
  Transaction(4, 'Lazada', '20.000', '17 Maret 2023 12:33', 'Sabun'),
  Transaction(4, 'Lazada', '20.000', '17 Maret 2023 12:33', 'Sabun'),
  Transaction(4, 'Lazada', '20.000', '17 Maret 2023 12:33', 'Sabun'),
  Transaction(4, 'Lazada', '20.000', '17 Maret 2023 12:33', 'Sabun'),
  Transaction(4, 'Lazada', '20.000', '17 Maret 2023 12:33', 'Sabun'),
  Transaction(4, 'Lazada', '20.000', '17 Maret 2023 12:33', 'Sabun'),
  Transaction(4, 'Lazada', '20.000', '17 Maret 2023 12:33', 'Sabun'),
];
