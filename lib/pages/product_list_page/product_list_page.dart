// import 'package:flutter/material.dart';
// import 'package:online_store/APIs/product_api.dart';
// import 'package:online_store/models/product.dart';
// import 'package:online_store/pages/widgets/product_element.dart';
//
// class ProductsListPage extends StatefulWidget {
//   const ProductsListPage({super.key});
//
//   @override
//   State<ProductsListPage> createState() => _ProductsListPageState();
// }
//
// class _ProductsListPageState extends State<ProductsListPage> {
//   String? categoryTitle;
//   // int? categoryId;
//   late Future<ProductsListModel> futureProducts;
//
//   @override
//   void initState() {
//     super.initState();
//     // final args = ModalRoute.of(context)?.settings.arguments as List;
//     // categoryId = args[1] as int;
//     futureProducts = fetchProductList(categoryId: 1773);
//   }
//
//   @override
//   void didChangeDependencies() {
//     final args = ModalRoute.of(context)?.settings.arguments as List;
//     categoryTitle = args[0] as String;
//     super.didChangeDependencies();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(categoryTitle ?? '...')),
//       body: FutureBuilder<ProductsListModel>(
//           future: futureProducts,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.separated(
//                   itemCount: snapshot.data!.data!.length,
//                   separatorBuilder: (context, index) => const Divider(),
//                   itemBuilder: (context, index) {
//                     return ProductItem(snapshot: snapshot, index: index);
//                   });
//             } else if (snapshot.hasError) {
//               return Text('${snapshot.error}');
//             }
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }),
//     );
//   }
// }
