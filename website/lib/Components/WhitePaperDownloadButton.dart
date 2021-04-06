
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WhitePaperDownloadButton extends StatefulWidget {
  final String text;
  const WhitePaperDownloadButton(this.text);

  @override
  _WhitePaperDownloadButtonState createState() => _WhitePaperDownloadButtonState();
}

class _WhitePaperDownloadButtonState extends State<WhitePaperDownloadButton> {
  bool copied = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 5, left: 5),
      child: MaterialButton(
        onPressed: (){
          showDialog(context: context, builder: (context) => AlertDialog(
            title: Text("复制下载链接"),
            content: SelectableText("复制这段内容后打开百度网盘App，操作更方便哦。\n"
            "链接：https://pan.baidu.com/s/1lAjlwCg3xTPR1n4_pY_lfg\n"
            "提取码：N1t2"),
            actions: [
              TextButton(
                child: copied? Text("已复制！"):Text("复制到剪贴板"),
                onPressed: copied ? null : () {
                setState(() {
                  copied = !copied;
                });
                Clipboard.setData(new ClipboardData(text:
                "复制这段内容后打开百度网盘App，操作更方便哦。链接：https://pan.baidu.com/s/1lAjlwCg3xTPR1n4_pY_lfg提取码：N1t2 ")
                );
                Navigator.of(context).pop();
                },
              )
            ],
          ));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white12
              ),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(widget.text, style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                  )
              )
          ),
        ),
      ),
    );
  }
}




