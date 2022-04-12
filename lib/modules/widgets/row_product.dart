import 'package:flutter/material.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/product.dart';

Widget RowProduct(Product product){
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(product.id.toString()),
        Text(product.name),
        Text(product.brand.name),
        Text(product.price.toString()),
        Text(product.cust.toString()),
        Text(product.quantity.toString()),
        IconButton(onPressed:() => print("Excluir"), icon: const Icon(Icons.delete)),
        IconButton(onPressed:() => print("Editar"), icon: const Icon(Icons.edit)),
      ],
    );
}