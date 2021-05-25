import 'package:ecom_catalog/models/catalog.dart';

class CartModel {
  
  //catalog feild
  CatalogModel _catalog;
  //collection of IDs - store IDs of each item
  final List<int> _itemIds = [];

  //get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //Get Total Price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  //Remove item

  void delete(Item item) {
    _itemIds.remove(item.id);
  }
}
