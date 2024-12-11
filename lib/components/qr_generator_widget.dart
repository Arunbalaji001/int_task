import 'package:flutter/material.dart';
import 'package:inttask/components/button_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class QrGeneratorWidget extends StatefulWidget {
  const QrGeneratorWidget({super.key});

  @override
  State<QrGeneratorWidget> createState() => _QrGeneratorWidgetState();
}

class _QrGeneratorWidgetState extends State<QrGeneratorWidget> {

  final TextEditingController textController=  TextEditingController();

  String? dataText = 'Some Random Text';




  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        const SizedBox(height: 12),
        const Text(
          'Enter Text to generate QR Code'
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: MediaQuery.of(context).size.width*0.72,
          child: TextField(
            controller: textController,
          ),
        ),
        const SizedBox(height: 12),
        ButtonWidget(
            name: 'Create QR',
            paddings: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            onTapped: () {
          String? currentData= textController.value.text;
          if(currentData.isNotEmpty &&currentData.length>6 ) {
            setState(() {
              dataText = textController.value.text;
            });
          }
          else{
            showToast("Text is Empty! kindly enter text",context:context);
          }
        }),
        const SizedBox(height: 16),
       (dataText!=null && dataText!.isNotEmpty)?
        QrImageView(
          data: dataText!,
          version: QrVersions.auto,
          size: 200.0,
        ):Container(
         height: 200,
         width: 200,
         alignment: Alignment.center,
         child: const Text(
           'Enter Text to generate QR'
         )
       ),

      ]
    );
  }


}
