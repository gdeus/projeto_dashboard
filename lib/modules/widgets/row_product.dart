import 'package:flutter/material.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/product.dart';

Widget RowProduct(Product product){
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Text(product.id.toString() + "    "),
              Text(product.name + "    "),
              Text(product.brand.name + "    "),
            ],
          )
        ),
        Container(
          child: Row(
            children: [
              IconButton(onPressed:() => print("Excluir"), icon: const Icon(Icons.delete)),
              IconButton(onPressed:() => print("Editar"), icon: const Icon(Icons.edit)),
            ],
          )
        ),
      ],
    ),
  );
}