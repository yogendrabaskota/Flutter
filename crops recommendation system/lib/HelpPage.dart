import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'AGROTECHGUIDE',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The AGROTECHGUIDE is a user-friendly tool designed to assist farmers in making informed decisions about crop selection based on environmental conditions. To utilize the app effectively, follow these simple steps:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '1. Launch the App: Open the Crop Advisor app on your device, and you\'ll be greeted by a welcoming interface.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '2. Enter Environmental Data: On the main screen, input the current temperature, pressure, and humidity in your farming area. Make sure to provide accurate and up-to-date information for precise recommendations.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '3. Submit Data: Once you\'ve entered the environmental data, tap the "Submit" button to initiate the analysis process.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '4. Receive Recommendations: The app will process the provided data and generate tailored recommendations for the most suitable crops for your specific conditions. You\'ll receive detailed feedback on which crops thrive in the current environment.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '5. Explore Additional Information: Beyond crop recommendations, the app offers additional resources and information on optimal cultivation practices, planting schedules, and potential challenges associated with specific crops.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '6. Save and Share: Save the generated reports for future reference, and easily share the recommendations with fellow farmers or agricultural experts.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '7. Stay Updated: The Crop Advisor app regularly updates its database and algorithms, ensuring that you receive the latest and most accurate insights for your farming decisions.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Empower yourself with the knowledge to maximize your crop yield and make informed decisions for a successful harvest season with the Crop Advisor app. Happy farming!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
