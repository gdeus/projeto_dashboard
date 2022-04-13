import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/brand.dart';
import 'package:projeto_dashboard/modules/product/domain/usecases/create_brand.dart';
import 'package:projeto_dashboard/modules/widgets/drawer_custom.dart';
import 'package:projeto_dashboard/modules/widgets/input_custom.dart';
import 'package:projeto_dashboard/modules/widgets/row_brand.dart';
import '../../../globals/globals.dart' as globals;

class CreateBrandScreen extends StatefulWidget {
  @override
  _CreateBrandScreenState createState() => _CreateBrandScreenState();
}

class _CreateBrandScreenState extends State<CreateBrandScreen> {
  TextEditingController textEditingControllerId = TextEditingController();
  TextEditingController textEditingControllerName = TextEditingController();
  final usecase = Modular.get<CreateBrandImpl>();
  var list = globals.brands;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Criar Marca"),),
      drawer: CustomDrawer(),
      body: Column(
          children: [
            Card(
              elevation: 100,
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  InputCustom(
                    height: 100,
                    width: 200,
                    margin: 10.0,
                    label: "Nome",
                    textEditingController: textEditingControllerName
                  ),
                  // InputCustom(
                  //   height: 100,
                  //   width: 200,
                  //   margin: 10.0,
                  //   label: "Id da Marca",
                  //   textEditingController: textEditingControllerIdBrand
                  // ),
                  // InputCustom(
                  //   height: 100,
                  //   width: 200,
                  //   margin: 10.0,
                  //   label: "Nome da Marca",
                  //   textEditingController: textEditingControllerNameBrand
                  // ),
                  Container(
                    height: 100,
                    width: 200,
                    color: Colors.red,
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                    onPressed: (){
                      int id = globals.brands.isEmpty ? 1 : globals.brands.last.id + 1;
                      Brand brand = Brand(id, textEditingControllerName.text);
                      usecase(brand);
                      print(list.length);
                      setState(() {});
                    }, 
                      child: const Text("Cadastrar")
                    ),
                  ),
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                elevation: 100,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text("ID" + "    "),
                              Text("Nome" + "    "),
                              Text("Marca" + "    "),
                            ],
                          )
                        ),
                      ],
                    ),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: globals.brands.length,
                      itemBuilder: (context, i) {
                        return RowBrand(globals.brands[i]);
                      },
                    ),
                  ],
                ),
              )
            )
          ],
        ),
    );
  }
}