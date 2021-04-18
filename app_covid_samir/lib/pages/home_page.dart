import 'package:app_covid_samir/request_api/get_request_api_continent.dart';
import 'package:app_covid_samir/widgets/widget_list_home.dart';
import 'package:flutter/material.dart';

import '../model/model_api.dart';

class HomePage extends StatelessWidget {
  final _request = RequestApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Image.asset('assets/logo/MaskGroup216.png'),
          title: Center(
            child: Text(
              'Covid-19',
              style: TextStyle(
                fontFamily: 'Ubuntu-Bold',
                fontSize: 16,
                color: Colors.black,
                //color: new Color(Colors.black),
              ),
            ),
          )),
      body: FutureBuilder<List<ToModel>>(
        future: _request.getHttp(),
        builder: (_, snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (_, idx) {
                    return WidgetListHome(model: snapshot.data[idx]);
                  },
                )
              : snapshot.hasError
                  ? Center(
                      child: Text(
                        snapshot.error.toString(),
                        style: TextStyle(fontSize: 50),
                      ),
                    )
                  : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
