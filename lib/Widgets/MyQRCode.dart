import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:queuing_system/Variables/size.dart';

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
      child: Container(
        padding: EdgeInsets.all(5),
        width: PhoneSize(context).width,
        height: (PhoneSize(context).height / 2.5) + 54,
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
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4.0,
              child: Container(
                width: (PhoneSize(context).width / 1.5), height: (PhoneSize(context).height / 2.5) - 16,
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
            ),
            SizedBox(height: 10,),
          ],
        )
      ),
      elevation: 8.0,
    );
  }
}
