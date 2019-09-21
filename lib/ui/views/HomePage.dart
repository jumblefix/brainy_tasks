import 'package:brainy_tasks/features/home/HomeViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: ChangeNotifierProvider<HomeViewModel>(
        builder: (context) => HomeViewModel(),
        child: Center(
          child: Consumer<HomeViewModel>(
            builder: (context, model, child) => model.busy
                ? CircularProgressIndicator()
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () => model.goToAbout(),
                        child: model.busy ? Text('Loading') : Text('About'),
                      ),
                      RaisedButton(
                        onPressed: () => model.goToContact(),
                        child: model.busy ? Text('Loading') : Text('Contact'),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
