import 'package:ecom_catalog/models/cart.dart';
import 'package:ecom_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore{
  CatalogModel catalog;
  CartModel cart;

  MyStore(){
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }

}