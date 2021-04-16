import 'dart:js';

import 'package:app_covid_samir/model/model_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contries_details_page.dart';

/*
class SecondPage extends StatelessWidget {
  final ToModel model;
  const SecondPage({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(model.countries[1])),
      body: Center(),
    );
  }
}

*/

class SecondPage extends StatelessWidget {
  final ToModel model;
  const SecondPage({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print(model.countries);
    //return CupertinoPageScaffold(
    //navigationBar: const CupertinoNavigationBar(),

    //navigationBar: const CupertinoNavigationBar(),

    //child: MyStatelessWidget(),
    return Scaffold(
      appBar: AppBar(title: Text(model.continent)),

      body: MyStatelessWidget(model: model),

      //body: Center(),

      //child: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  final ToModel model;
  const MyStatelessWidget({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //int sizeCountries = model.SizeCountries();
    //final int population = model.SizeCountries();
    int sizcountries = model.countries.length;

    print(model.countries);
    print(sizcountries);
    int numItems = sizcountries - 1;
    const _biggerFont = TextStyle(fontSize: 18.0);

    Widget _buildRow(int idx) {
      return ListTile(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute<void>(
            title: (model.countries[idx]), //titulo da proxima pagina
            builder: (context) => ContriesDatailsPage(
              model: model,
            ),
          ));
        },
        title: Text(
          model.countries[idx],
          style: _biggerFont,
        ),
        trailing: const Icon(Icons.dashboard),
      );
    }

    return ListView.builder(
      itemCount: numItems * 2,
      itemBuilder: (BuildContext context, int i) {
        if (i.isOdd) return const Divider();
        final index = i ~/ 2 + 1;
        return _buildRow(index);
      },
    );
  }
}

/*

const List<Tab> tabs = <Tab>[
  Tab(text: 'Detalhes'),
  Tab(text: 'Países'),
];

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  final ToModel model;
  const MyStatelessWidget(BuildContext context, {key, this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: tabs.map((Tab tab) {
              return ListTile(
                /*
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute<void>(
                    title: (model.continent),
                    builder: (context) => ContriesDatailsPage(
                      model: model,
                    ),
                  ));
                },
                */
                title: Text('model.continent'),
              );

              /*
              return Center(
                child: Text(
                  
                  tab.text + ' Tab', // + countries,
                  style: Theme.of(context).textTheme.headline5,
                ),


              );
              
            }).toList(),
          ),
        );
      }),
    );
  }
}
*/*/
