import 'package:flutter/cupertino.dart';

class ImageBills extends StatelessWidget {
  final image;
  const ImageBills({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: image(Image.asset(""))
    );
  }
}
