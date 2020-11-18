import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyQRCode extends StatelessWidget {
  const MyQRCode({
    Key key,
  }) : super(key: key);

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
              // color: Colors.green,
              width: 240, height: 240,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  // imageUrl: "",
                  imageUrl: "https://briantjackett.files.wordpress.com/2019/08/qrcodesample.png?w=700", //Note* this is for sample only
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
