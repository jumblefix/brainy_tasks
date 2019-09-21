import 'package:brainy_tasks/features/common/ConnectivityService.dart';
import 'package:brainy_tasks/features/home/HomeViewModel.dart';
import 'package:brainy_tasks/ui/widgets/logo/BTLogo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConnectivityStatus c = Provider.of<ConnectivityStatus>(context);
    return Scaffold(
      appBar: AppBar(
        title: BTLogo(),
      ),
      body: c == ConnectivityStatus.Offline
          ? Center(
              child: Text('Offline'),
            )
          : Center(
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
                            child:
                                model.busy ? Text('Loading') : Text('Contact'),
                          ),
                        ],
                      ),
              ),
            ),
    );
  }
}
