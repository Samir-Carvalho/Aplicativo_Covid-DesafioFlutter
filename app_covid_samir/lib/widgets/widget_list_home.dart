import 'package:app_covid_samir/model/model_api.dart';

import 'package:app_covid_samir/pages/continent_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetListHome extends StatelessWidget {
  final ToModel model;
  const WidgetListHome({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final String continen = model.getContinent();
    //String icon;
    //if (continen == 'Asia') {
    //   icon = 'asia';
    // } else {
    //   icon = 'North America';
    // }

    final int population = model.Population();
    return ListTile(
      onTap: () {
        Navigator.of(context).push(CupertinoPageRoute<void>(
          title: (model.continent), //titulo da proxima pagina
          builder: (context) => SecondPage(
            model: model,
          ),
        ));
      },
      title: Text(model.continent),
      subtitle: Text('$population paises'),
      leading: Icon(
        //model.completed ?
        //Icons.check_box :
        Icons.circle,
        size: 30,
        //color: model.completed ? Colors.green : Colors.red,
      ),
      trailing: const Icon(Icons.dashboard),
    );
  }
}
//
