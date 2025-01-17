import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mayomart_online_store/Data_Classes/order_model.dart';
import 'package:mayomart_online_store/Data_Classes/prodact_model.dart';
import 'package:mayomart_online_store/Data_Classes/user_model.dart';

FirebaseFirestore instance = FirebaseFirestore.instance;
final WriteBatch batch = FirebaseFirestore.instance.batch();

CollectionReference<ProductModel> getProductsCollection() {
  return instance.collection("products").withConverter(
        fromFirestore: (snapshot, options) =>
            ProductModel.fromJson(snapshot.data()!),
        toFirestore: (product, options) => product.toJson(),
      );
}

Future<QuerySnapshot<ProductModel>> getProduct() {
  return getProductsCollection().get();
}

CollectionReference<User> getUsersCollection() {
  return instance.collection("Users").withConverter(
        fromFirestore: (snapshot, options) => User.fromJson(snapshot.data()!),
        toFirestore: (user, options) => user.toJson(),
      );
}

Future<void> addUser(User user) {
  var collection = getUsersCollection();
  var docRef = collection.doc();
  user.id = docRef.id;
  return docRef.set(user);
}

Future<DocumentSnapshot<User>> getUser(String userId) {
  var collection = getUsersCollection();
  var docRef = collection.doc(userId);
  return docRef.get();
}

CollectionReference<OrderModel> getOrdersCollection() {
  return instance.collection("Orders").withConverter(
        fromFirestore: (snapshot, options) =>
            OrderModel.fromJson(snapshot.data()!),
        toFirestore: (order, options) => order.toJson(),
      );
}

Future<void> addOrderToFireStore(OrderModel order) {
  var collection = getOrdersCollection();
  var docRef = collection.doc();
  order.id = docRef.id;
  return docRef.set(order);
}

Future<void> updateProductQuantity(ProductModel oldProduct) {
  var collection = getProductsCollection();
  var docRef = collection.doc(oldProduct.id);
  return docRef.set(oldProduct);
}
