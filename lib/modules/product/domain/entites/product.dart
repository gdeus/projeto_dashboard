import 'brand.dart';

class Product{
  final int id;
  final String name;
  final int quantity;
  final double price;
  final double cust;
  final Brand brand;

  Product(this.id, this.name, this.quantity, this.price, this.cust, this.brand);
}