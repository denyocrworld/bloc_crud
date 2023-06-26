import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

/*
YT: Capek Ngoding
Join Kelas: capekngoding.com
https://tinyurl.com/berandal-groupz
*/

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter HyperExample',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultipleSelectionView(),
    );
  }
}
