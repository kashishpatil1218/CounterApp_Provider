

# URL Launcher in Flutter

A simple Flutter project demonstrating how to use the [`url_launcher`](https://pub.dev/packages/url_launcher) package to open URLs, emails, and make phone calls directly from your app.

## Table of Contents
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
  - [Opening URLs](#opening-urls)
  - [Launching Email Clients](#launching-email-clients)
  - [Making Phone Calls](#making-phone-calls)
- [Permissions](#permissions)
- [Demo](#demo)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## Features
- Open external links in the browser
- Launch email clients with pre-filled subject and body
- Make phone calls directly from the app

---

## Installation

1. Add the `url_launcher` dependency in your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  url_launcher: ^6.1.7
```

2. Run the following command to install the dependencies:

```bash
flutter pub get
```

---

## Usage

First, import the package:

```dart
import 'package:url_launcher/url_launcher.dart';
```

### Opening URLs

Use the `launchUrl` method to open a URL in the browser:

```dart
Future<void> openUrl(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
```

**Example:**

```dart
openUrl('https://flutter.dev');
```

### Launching Email Clients

To open the user’s default email app with pre-filled content:

```dart
Future<void> sendEmail() async {
  final emailUri = Uri(
    scheme: 'mailto',
    path: 'example@example.com',
    queryParameters: {
      'subject': 'Hello!',
      'body': 'This is a test email.',
    },
  );
  if (await canLaunchUrl(emailUri)) {
    await launchUrl(emailUri);
  } else {
    throw 'Could not launch email client';
  }
}
```

### Making Phone Calls

To initiate a phone call:

```dart
Future<void> makePhoneCall(String phoneNumber) async {
  final callUri = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(callUri)) {
    await launchUrl(callUri);
  } else {
    throw 'Could not launch phone call to $phoneNumber';
  }
}
```


## Demo

Here’s a sample app that demonstrates the usage of `url_launcher`:

```dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('URL Launcher Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => openUrl('https://flutter.dev'),
                child: Text('Open URL'),
              ),
              ElevatedButton(
                onPressed: sendEmail,
                child: Text('Send Email'),
              ),
              ElevatedButton(
                onPressed: () => makePhoneCall('+1234567890'),
                child: Text('Make Phone Call'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

