import 'package:brainy_tasks/features/about/AboutViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: ChangeNotifierProvider(
        builder: (context) => AboutViewModel(),
        child: Consumer<AboutViewModel>(
          builder: (context, model, child) => Center(
            child: model.busy
                ? CircularProgressIndicator()
                : RaisedButton(
                    onPressed: () => model.goBack(),
                    child: Text('Go Back '),
                  ),
          ),
        ),
      ),
    );
  }
}
