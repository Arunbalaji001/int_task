import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';

class ScannerWidget extends StatefulWidget {
  const ScannerWidget({super.key});

  @override
  State<ScannerWidget> createState() => _ScannerWidgetState();
}

class _ScannerWidgetState extends State<ScannerWidget> {

  // final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  // Barcode? result;
  // QRViewController? controller;


  // void _onQRViewCreated(QRViewController controller) {
  //   this.controller = controller;
  //   controller.scannedDataStream.listen((scanData) {
  //     setState(() {
  //       result = scanData;
  //     });
  //   });
  // }


  // @override
  // Future<void> initState() async {
  //   var status = await Permission.camera.status;
  //   if(status.isGranted){
  //     print('AS :: Camera Available');
  //   }
  //   else{
  //     print('AS :: Camera Denied');
  //   }
  //
  //   super.initState();
  // }


  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 320,
      // width: 320,
      // color: Colors.blueGrey.shade2,
      // child: Column(
      //   children: <Widget>[
      //     Expanded(
      //       flex: 5,
      //       child: QRView(
      //         key: qrKey,
      //         onQRViewCreated: _onQRViewCreated,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 1,
      //       child: Center(
      //         child: (result != null)
      //             ? Text(
      //             'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
      //             : Text('Scan a code'),
      //       ),
      //     )
      //   ],
      // ),
    );
  }


  // @override
  // void dispose() {
  //   controller?.dispose();
  //   super.dispose();
  // }
}
