import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/brand.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/product.dart';
import 'package:projeto_dashboard/modules/product/domain/usecases/create_product.dart';
import 'package:projeto_dashboard/modules/product/view/create_product_controller.dart';
import 'package:projeto_dashboard/modules/widgets/drawer_custom.dart';
import 'package:projeto_dashboard/modules/widgets/input_custom.dart';
import 'package:projeto_dashboard/modules/widgets/row_product.dart';
import '../../../globals/globals.dart' as globals;

class CreateProductView extends StatefulWidget {
  @override
  _CreateProductViewState createState() => _CreateProductViewState();
}

class _CreateProductViewState extends State<CreateProductView> {
  final usecase = Modular.get<CreateProductImpl>();
  var list = globals.brands;
  TextEditingController textEditingControllerId = TextEditingController();
  TextEditingController textEditingControllerName = TextEditingController();
  TextEditingController textEditingControllerQuantity = TextEditingController();
  TextEditingController textEditingControllerPrice = TextEditingController();
  TextEditingController textEditingControllerPriceCust = TextEditingController();
  TextEditingController textEditingControllerIdBrand = TextEditingController();
  TextEditingController textEditingControllerNameBrand = TextEditingController();
  TextEditingController textEditingControllerUrl= TextEditingController();
  Brand dropDownBrandValue = globals.brands[0]; 
  

  CreateProductController createProductController = CreateProductController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Aplicativo de vendas - Uniguaçu"),),
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
                    label: "id",
                    textEditingController: textEditingControllerId
                  ),
                  InputCustom(
                    height: 100,
                    width: 200,
                    margin: 10.0,
                    label: "Nome",
                    textEditingController: textEditingControllerName
                  ),
                  InputCustom(
                    height: 100,
                    width: 200,
                    margin: 10.0,
                    label: "Quantidade",
                    textEditingController: textEditingControllerQuantity
                  ),
                  InputCustom(
                    height: 100,
                    width: 200,
                    margin: 10.0,
                    label: "Preço",
                    textEditingController: textEditingControllerPrice
                  ),
                  InputCustom(
                    height: 100,
                    width: 200,
                    margin: 10.0,
                    label: "Preço de Custo",
                    textEditingController: textEditingControllerPriceCust
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    child: DropdownButton<Brand>(
                        value: dropDownBrandValue,
                        onChanged: (Brand? newValue){
                          print(newValue!.name);
                          dropDownBrandValue = newValue;
                          setState(() {});
                        },
                        items: globals.brands
                            .map<DropdownMenuItem<Brand>>(
                                (Brand value) => DropdownMenuItem<Brand>(
                                      value: value,
                                      child: Text(value.name),
                                    ))
                            .toList(),

                        // add extra sugar..
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 42,
                        underline: SizedBox(),
                    ),
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
                      int id = globals.products.isEmpty ? 1 : globals.products.last.id + 1;
                      Product product = Product(id, textEditingControllerName.text, int.parse(textEditingControllerQuantity.text), double.parse(textEditingControllerPrice.text), double.parse(textEditingControllerPriceCust.text), dropDownBrandValue);
                      usecase(product);
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
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 100,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("ID"),
                        const Text("Nome"),
                        const Text("Marca"),
                        const Text("Venda"),
                        const Text("Custo"),
                        const Text("Quantidade"),
                        const Text("Editar"),
                        const Text("Excluir")
                      ],
                    ),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: globals.products.length,
                      itemBuilder: (context, i){
                        return RowProduct(globals.products[i]);
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