import 'package:app_covid_samir/model/model_api.dart';

import 'package:app_covid_samir/pages/continent_countries_page.dart';
import 'package:app_covid_samir/pages/continent_details_page.dart';
//import 'package:app_covid_samir/pages/continent_details_page.dart';
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

    print(model.continent);
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute<void>(
            title: (model.continent), //titulo da proxima pagina
            builder: (context) => //ContinentCountriesPage(
                ContinentDetailsPage(
              //ContinentCountriesPage(
              model: model,
            ),
          ));
        },

        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12.0,
        ),
        title: Text(
          model.continent,
          style: TextStyle(
            fontSize: 13.0,
            fontFamily: 'Ubuntu-Regular',
          ),
        ),

        subtitle: Text(
          '$population paises',
          style: TextStyle(
            fontSize: 12.0,
            fontFamily: 'Ubuntu-Regular',
          ),
        ),

        leading: Image.asset(
          //model.completed ?
          //Icons.check_box :
          //Icons.circle,
          //Image.asset(name)

          'assets/images/' + model.continent + '.png', //Asia2.png',
          width: 44,

          //size: 30,
          //color: model.completed ? Colors.green : Colors.red,
        ),
        //trailing: const Icon(Icons.dashboard),//'assets/logo/MaskGroup216.png'
        trailing: Image.asset('assets/images/SmallArrowFw.png'),
      ),
    );
  }
}
//
