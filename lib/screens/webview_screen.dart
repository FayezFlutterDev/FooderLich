import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  WebViewScreenState createState() => WebViewScreenState();
}

class WebViewScreenState extends State<WebViewScreen> {
  final WebViewController _controller = WebViewController();
  final String url = "https://www.linkedin.com/in/abdallah-fayez-a7922720a/";

  @override
  void initState() {
    super.initState();
    _controller.loadRequest(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linkedin Profile'),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
