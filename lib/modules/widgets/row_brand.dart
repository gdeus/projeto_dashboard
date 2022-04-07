import 'package:flutter/material.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/brand.dart';

Widget RowBrand(Brand brand){
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Text(brand.id.toString() + "    "),
              Text(brand.name + "    "),
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