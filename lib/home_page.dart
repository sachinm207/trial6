import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_service.dart';
import 'l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.homeTitle),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await authService.signOut();
              print(l10n.signedOut);
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          l10n.welcomeMessage(authService.getCurrentUser()?.email ?? ''),
        ),
      ),
    );
  }


  HomePage({super.key});}
