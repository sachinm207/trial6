# trial6  with localisation

A new Flutter project.

In your Flutter project, create a new directory called "l10n" inside the "lib" folder. This is where we'll store our localization files.

lib/ l10n/ app_en.arb app_es.arb (for Spanish, as an example) app_fr.arb (for French, as an example)

Now, let's add some sample content to these .**arb** files:
app_en.arb:

{
"helloWorld": "Hello World!",
"welcome": "Welcome to my app",
"buttonText": "Click me"
}
app_es.arb:

{
"helloWorld": "¡Hola Mundo!",
"welcome": "Bienvenido a mi aplicación",
"buttonText": "Haz clic aquí"
}

need to update the **pubspec**.yaml file to include the flutter_localizations package and specify the location of our .arb files:

dependencies:
flutter:
sdk: flutter
flutter_localizations:
sdk: flutter
intl: ^0.17.0

flutter:
generate: true
uses-material-design: true

Now, let's update the **main**.dart file to support localization:

```dart
        title: 'Firebase Auth Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English
          Locale('es', ''), // Spanish
          // Add more locales as needed
        ],
        home: AuthWrapper(),
```

1. 

Finally, run the following command in your terminal to generate the localization files:
**flutter gen-l10n**

Update your lib/l10n/**app_localizations**.dart to use the generated files:

export 'package:flutter_gen/gen_l10n/app_localizations.dart'; // only this line in the file. Remove evertything else.

Then, in your lib/**main**.dart, make sure you're using the correct import:

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
