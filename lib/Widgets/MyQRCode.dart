import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyQRCode extends StatelessWidget {
  const MyQRCode({
    @required this.data
  });
  final String data;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My QR Code",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
            SizedBox(height: 10,),
            Expanded(child: Container()),
            Container(
              width: 240, height: 240,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: "https://qrcode-image-generator.herokuapp.com/generate?height=500&width=500&data=" + data,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    width: 240, height: 240,
                    child: Center(
                      child: Text("Reading QR Code..."),
                    )
                  ),
                  errorWidget: (context, url, error) => new Icon(Icons.error),
                ),
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
      elevation: 8.0,
    );
  }
}
