// SoilCheckPage.dart
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SoilCheckPage extends StatefulWidget {
  @override
  _SoilCheckPageState createState() => _SoilCheckPageState();
}

class _SoilCheckPageState extends State<SoilCheckPage> {
  final TextEditingController temperatureController = TextEditingController();
  final TextEditingController humidityController = TextEditingController();
  final TextEditingController regionController = TextEditingController();
  String suggestion = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Your Soil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'What is the current temperature?',
              style: TextStyle(fontSize: 16),
            ),
            TextField(
              controller: temperatureController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            Text(
              'What is the humidity?',
              style: TextStyle(fontSize: 16),
            ),
            TextField(
              controller: humidityController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            Text(
              'Where are you from: HIMAL, PAHAD, OR TERAI?',
              style: TextStyle(fontSize: 16),
            ),
            TextField(
              controller: regionController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _sendDataToServer(
                  temperatureController.text,
                  humidityController.text,
                  regionController.text,
                );
              },
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            // Display the result below the Submit button
            Text(
              'Result: $suggestion',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _sendDataToServer(
      String temperature, String humidity, String region) async {
    final url = Uri.parse('http://192.168.1.7:5000/api/send_data');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'temperature': temperature,
          'humidity': humidity,
          'region': region,
        }),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final String serverSuggestion = data['recommended_crop'];

        setState(() {
          suggestion = serverSuggestion;
        });
      } else {
        print('Failed to send data. Error code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error sending data: $e');
    }
  }
}
