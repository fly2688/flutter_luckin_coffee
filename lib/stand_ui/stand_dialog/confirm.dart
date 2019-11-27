import 'package:color_dart/color_dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_luckin_coffee/stand_ui/stand_dialog/normal_dialog.dart';
import 'package:flutter_luckin_coffee/utils/global.dart';

class Confirm extends NormalDialog {
  Confirm({
    BuildContext context,
    String title,
    String message,
    this.onOk,
    this.onCancel
  }): super(
    context: context,
    title: title,
    message: message
  );

  @override
  Widget get bottom => _bottom();

  /// 点击确认回调
  final VoidCallback onOk;

  /// 点击取消回调
  final VoidCallback onCancel;

  Widget _bottom() {
    return Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(right: BorderSide(color: hex('#ebedf0')))
                ),
                height: 50,
                child: Text('取消', style: TextStyle(
                  color: hex('#323233'),
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
              ),

              onTap: () {
                if(onCancel != null) onCancel();
                G.pop();
              },
            ),
          ),

          Expanded(
            child: InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                child: Text('确认', style: TextStyle(
                  color: hex('#1989fa'),
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
              ),

              onTap: () {
                if(onOk != null) onOk();

                G.pop();
              },
            ),
          ),
        ],
    );
  }
}