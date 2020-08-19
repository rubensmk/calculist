import 'package:calcu_list/ui/values/values.dart';
import 'package:flutter/material.dart';

class AddPopup extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  String title;
  int index;

  AddPopup({
    @required this.title,
    @required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(DEFAULT_PADDING),
        children: [
          Text(
            "Digite o valor para $title",
            style: TextStyle(
              fontSize: 16 / MediaQuery.of(context).textScaleFactor,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "R\$",
                style: TextStyle(
                  fontSize: 16 / MediaQuery.of(context).textScaleFactor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width:
                    MediaQuery.of(context).size.width * 0.65 - DEFAULT_PADDING,
                padding: EdgeInsets.symmetric(horizontal: DEFAULT_PADDING / 2),
                child: TextField(
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          ButtonBar(
            children: [
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancelar'),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Confirmar"),
              )
            ],
          )
        ],
      ),
    );
  }
}
