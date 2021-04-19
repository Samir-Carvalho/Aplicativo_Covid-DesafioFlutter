import 'package:app_covid_samir/model/model_api.dart';
import 'package:flutter/material.dart';

class ContinentDetailsWidget extends StatelessWidget {
  final ToModel model;
  const ContinentDetailsWidget({Key key, @required this.model})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        color: Color(0XFFECEFF1),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 1.0, left: 40, right: 40),
              ),
              Card(
                //color: Colors.green,
                elevation: 12,
                child: Container(
                  width: 400,
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        height: 21,
                      ),
                      Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Ubuntu-Bold',
                        ),
                      ),
                      Container(
                        height: 25,
                      ),
                      Text(
                        'Total de casos ',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'Ubuntu-Regular',
                        ),
                      ),
                      Text(
                        model.cases.toString(),
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Ubuntu-Regular',
                        ),
                      ),

                      Container(
                          height: 100,
                          //color: Colors.blue,
                          child: Center(
                              child: Row(
                            children: [
                              Text(
                                'Ativos',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Ubuntu-Regular',
                                ),
                              ),
                              Container(
                                width: 37,
                              ),
                              Text(
                                'Curados ',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Ubuntu-Regular',
                                ),
                              ),
                              Container(
                                width: 37,
                              ),
                              Text(
                                'Óbito',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Ubuntu-Regular',
                                ),
                              ),
                            ],
                          ))),
                      Container(
                          //color: Colors.blue,
                          child: Center(
                              child: Row(
                        children: [
                          Text(
                            model.percentageActive().toStringAsFixed(2) + '%',
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.blue,
                              fontFamily: 'Ubuntu-Bold',
                            ),
                          ),
                          Container(
                            width: 37,
                          ),
                          Text(
                            model.percentagerecovered().toStringAsFixed(2) +
                                '%',
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.green,
                              fontFamily: 'Ubuntu-Bold',
                            ),
                          ),
                          Container(
                            width: 37,
                          ),
                          Text(
                            model.percentagedeaths().toStringAsFixed(2) + '%',
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.red,
                              fontFamily: 'Ubuntu-Bold',
                            ),
                          ),
                        ],
                      )))
                      //],
                      //)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 1.0),
              ),
              Card(
                elevation: 12,
                child: Container(
                  width: 400,
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        height: 21,
                      ),
                      Text(
                        'Hoje',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Ubuntu-Bold',
                        ),
                      ),

                      Container(
                          height: 100,
                          child: Center(
                              child: Row(
                            children: [
                              Text(
                                'Casos',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Ubuntu-Regular',
                                ),
                              ),
                              Container(
                                width: 37,
                              ),
                              Text(
                                'Óbito',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Ubuntu-Regular',
                                ),
                              ),
                            ],
                          ))),
                      Container(
                          child: Center(
                              child: Row(
                        children: [
                          Text(
                            '+ ' + model.cases.toString(),
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Ubuntu-Bold',
                            ),
                          ),
                          Container(
                            width: 37,
                          ),
                          Text(
                            '+' + model.deaths.toString(),
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16.0,
                              fontFamily: 'Ubuntu-Bold',
                            ),
                          ),
                          Container(
                            width: 37,
                          ),
                        ],
                      )))
                      //],
                      //)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 60.0,
                  vertical: 12.0,
                ),
              ),
              Card(
                //color: Colors.green,
                elevation: 12,
                child: Container(
                  width: 400,
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        height: 21,
                      ),
                      Text(
                        'Testes',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Ubuntu-Bold',
                        ),
                      ),
                      Container(
                          height: 100,
                          child: Center(
                              child: Row(
                            children: [
                              Text(
                                'Realizados',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Ubuntu-Regular',
                                ),
                              ),
                              Container(
                                width: 37,
                              ),
                              Text(
                                'População',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Ubuntu-Regular',
                                ),
                              ),
                            ],
                          ))),
                      Container(
                          child: Center(
                              child: Row(
                        children: [
                          Text(
                            model.cases.toString(),
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.blue,
                              fontFamily: 'Ubuntu-Bold',
                            ),
                          ),
                          Container(
                            width: 37,
                          ),
                          Text(
                            model.population.toString(),
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Ubuntu-Bold',
                            ),
                          ),
                          Container(
                            width: 37,
                          ),
                        ],
                      )))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
