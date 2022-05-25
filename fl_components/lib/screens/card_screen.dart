import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);
// para usar los assets se descomenta la carpeta assets en pubspec.yaml
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                imageUrl: 'https://images5.alphacoders.com/564/564931.jpg',
                name: 'Imagen 1'),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageUrl:
                    'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg',
                name: 'Imagen 2'),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
