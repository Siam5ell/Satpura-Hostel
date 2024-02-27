import 'package:flutter/material.dart';
import 'package:hostelapplication/logic/provider/mess_provider.dart';
import 'package:hostelapplication/presentation/screen/admin/AdminDrawer.dart';
import 'package:provider/provider.dart';

class AdminServicesScreen extends StatefulWidget {
  const AdminServicesScreen({Key? key}) : super(key: key);

  @override
  State<AdminServicesScreen> createState() => _AdminServicesScreenState();
}

class _AdminServicesScreenState extends State<AdminServicesScreen> {
  final List<String> textValues = List.generate(28, (index) => '');

  final List<Map<String, String>> labels = [
    {'label': 'Sunday Breakfast', 'value': ''},
    {'label': 'Sunday Lunch', 'value': ''},
    {'label': 'Sunday Snacks', 'value': ''},
    {'label': 'Sunday Dinner', 'value': ''},
    {'label': 'Monday Breakfast', 'value': ''},
    {'label': 'Monday Lunch', 'value': ''},
    {'label': 'Monday Snacks', 'value': ''},
    {'label': 'Monday Dinner', 'value': ''},
    {'label': 'Tuesday Breakfast', 'value': ''},
    {'label': 'Tuesday Lunch', 'value': ''},
    {'label': 'Tuesday Snacks', 'value': ''},
    {'label': 'Tuesday Dinner', 'value': ''},
    {'label': 'Wednesday Breakfast', 'value': ''},
    {'label': 'Wednesday Lunch', 'value': ''},
    {'label': 'Wednesday Snacks', 'value': ''},
    {'label': 'Wednesday Dinner', 'value': ''},
    {'label': 'Thursday Breakfast', 'value': ''},
    {'label': 'Thursday Lunch', 'value': ''},
    {'label': 'Thursday Snacks', 'value': ''},
    {'label': 'Thursday Dinner', 'value': ''},
    {'label': 'Friday Breakfast', 'value': ''},
    {'label': 'Friday Lunch', 'value': ''},
    {'label': 'Friday Snacks', 'value': ''},
    {'label': 'Friday Dinner', 'value': ''},
    {'label': 'Saturday Breakfast', 'value': ''},
    {'label': 'Saturday Lunch', 'value': ''},
    {'label': 'Saturday Snacks', 'value': ''},
    {'label': 'Saturday Dinner', 'value': ''},
  ];

  Future<void> getSundayBreakfast(String value) async {
    final messProvider = Provider.of<MessProvider>(context, listen: false);

    // Implement logic for Sunday Breakfast
    messProvider.changeSundayB(value);
    await messProvider.updateSundayB();
    print('Sunday Breakfast: $value');
  }

  Future<void> getSundayLunch(String value) async {
    // Implement logic for Sunday Lunch
    final messProvider = Provider.of<MessProvider>(context, listen: false);

    // Implement logic for Sunday Breakfast
    messProvider.changeSundayL(value);
    await messProvider.updateSundayL();
    print('Sunday Lunch: $value');
  }

  Future<void> getSundaySnacks(String value) async {
    // Implement logic for Sunday Snacks
    final messProvider = Provider.of<MessProvider>(context, listen: false);

    // Implement logic for Sunday Breakfast
    messProvider.changeSundayS(value);
    await messProvider.updateSundayS();
    print('Sunday Snacks: $value');
  }

  Future<void> getSundayDinner(String value) async {
    // Implement logic for Sunday Dinner
    final messProvider = Provider.of<MessProvider>(context, listen: false);

    // Implement logic for Sunday Breakfast
    messProvider.changeSundayD(value);
    await messProvider.updateSundayD();
    print('Sunday Dinner: $value');
  }

  Future<void> getMondayBreakfast(String value) async {
    // Implement logic for Monday Breakfast
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeMondayB(value);
    await messProvider.updateMondayB();

    print('Monday Breakfast: $value');
  }

  Future<void> getMondayLunch(String value) async {
    // Implement logic for Monday Lunch
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeMondayL(value);
    await messProvider.updateMondayL();

    print('Monday Lunch: $value');
  }

  Future<void> getMondaySnacks(String value) async {
    // Implement logic for Monday Snacks
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeMondayS(value);
    await messProvider.updateMondayS();

    print('Monday Snacks: $value');
  }

  Future<void> getMondayDinner(String value) async {
    // Implement logic for Monday Dinner
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeMondayD(value);
    await messProvider.updateMondayD();

    print('Monday Dinner: $value');
  }

  Future<void> getTuesdayBreakfast(String value) async {
    // Implement logic for Tuesday Breakfast
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeTuesdayB(value);
    await messProvider.updateTuesdayB();

    print('Tuesday Breakfast: $value');
  }

  Future<void> getTuesdayLunch(String value) async {
    // Implement logic for Tuesday Lunch
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeTuesdayL(value);
    await messProvider.updateTuesdayL();

    print('Tuesday Lunch: $value');
  }

  Future<void> getTuesdaySnacks(String value) async {
    // Implement logic for Tuesday Snacks
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeTuesdayS(value);
    await messProvider.updateTuesdayS();
    print('Tuesday Snacks: $value');
  }

  Future<void> getTuesdayDinner(String value) async {
    // Implement logic for Tuesday Dinner
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeTuesdayD(value);
    await messProvider.updateTuesdayD();
    print('Tuesday Dinner: $value');
  }

  Future<void> getWednesdayBreakfast(String value) async {
    // Implement logic for Wednesday Breakfast
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeWednesdayB(value);
    messProvider.updateWednesdayB();
    print('Wednesday Breakfast: $value');
  }

  Future<void> getWednesdayLunch(String value) async {
    // Implement logic for Wednesday Lunch
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeWednesdayL(value);
    await messProvider.updateWednesdayL();
    print('Wednesday Lunch: $value');
  }

  Future<void> getWednesdaySnacks(String value) async {
    // Implement logic for Wednesday Snacks
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeWednesdayS(value);
    await messProvider.updateWednesdayS();
    print('Wednesday Snacks: $value');
  }

  Future<void> getWednesdayDinner(String value) async {
    // Implement logic for Wednesday Dinner
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeWednesdayD(value);
    await messProvider.updateWednesdayD();
    print('Wednesday Dinner: $value');
  }

  Future<void> getThursdayBreakfast(String value) async {
    // Implement logic for Thursday Breakfast
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeThursdayB(value);
    await messProvider.updateThursdayB();
    print('Thursday Breakfast: $value');
  }

  Future<void> getThursdayLunch(String value) async {
    // Implement logic for Thursday Lunch
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeThursdayL(value);
    await messProvider.updateThursdayL();

    print('Thursday Lunch: $value');
  }

  Future<void> getThursdaySnacks(String value) async {
    // Implement logic for Thursday Snacks
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeThursdayS(value);
    await messProvider.updateThursdayS();

    print('Thursday Snacks: $value');
  }

  Future<void> getThursdayDinner(String value) async {
    // Implement logic for Thursday Dinner
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeThursdayD(value);
    await messProvider.updateThursdayD();
    print('Thursday Dinner: $value');
  }

  Future<void> getFridayBreakfast(String value) async {
    // Implement logic for Friday Breakfast
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeFridayB(value);
    await messProvider.updateFridayB();
    print('Friday Breakfast: $value');
  }

  Future<void> getFridayLunch(String value) async {
    // Implement logic for Friday Lunch
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeFridayL(value);
    await messProvider.updateFridayL();

    print('Friday Lunch: $value');
  }

  Future<void> getFridaySnacks(String value) async {
    // Implement logic for Friday Snacks
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeFridayS(value);
    await messProvider.updateFridayS();

    print('Friday Snacks: $value');
  }

  Future<void> getFridayDinner(String value) async {
    // Implement logic for Friday Dinner
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeFridayD(value);
    await messProvider.updateFridayD();
    print('Friday Dinner: $value');
  }

  Future<void> getSaturdayBreakfast(String value) async {
    // Implement logic for Saturday Breakfast
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeSaturdayB(value);
    await messProvider.updateSaturdayB();

    print('Saturday Breakfast: $value');
  }

  Future<void> getSaturdayLunch(String value) async {
    // Implement logic for Saturday Lunch
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeSaturdayL(value);
    await messProvider.updateSaturdayL();

    print('Saturday Lunch: $value');
  }

  Future<void> getSaturdaySnacks(String value) async {
    // Implement logic for Saturday Snacks
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeSaturdayS(value);
    await messProvider.updateSaturdayS();

    print('Saturday Snacks: $value');
  }

  Future<void> getSaturdayDinner(String value) async {
    // Implement logic for Saturday Dinner
    final messProvider = Provider.of<MessProvider>(context, listen: false);
    messProvider.changeSaturdayD(value);
    await messProvider.updateSaturdayD();

    print('Saturday Dinner: $value');
  }

  Future<void> _onCheckMarkTapped(int index) async {
    String label = labels[index]['label']!;
    String value = labels[index]['value']!; // Get the value from labels

    // Call different functions based on index
    switch (index) {
      case 0:
        await getSundayBreakfast(value);

        break;
      case 1:
        await getSundayLunch(value);
        break;
      case 2:
        await getSundaySnacks(value);
        break;
      case 3:
        await getSundayDinner(value);
        break;
      case 4:
        await getMondayBreakfast(value);
        break;
      case 5:
        await getMondayLunch(value);
        break;
      case 6:
        await getMondaySnacks(value);
        break;
      case 7:
        await getMondayDinner(value);
        break;
      case 8:
        await getTuesdayBreakfast(value);
        break;
      case 9:
        await getTuesdayLunch(value);
        break;
      case 10:
        await getTuesdaySnacks(value);
        break;
      case 11:
        await getTuesdayDinner(value);
        break;
      case 12:
        await getWednesdayBreakfast(value);
        break;
      case 13:
        await getWednesdayLunch(value);
        break;
      case 14:
        await getWednesdaySnacks(value);
        break;
      case 15:
        await getWednesdayDinner(value);
        break;
      case 16:
        await getThursdayBreakfast(value);
        break;
      case 17:
        await getThursdayLunch(value);
        break;
      case 18:
        await getThursdaySnacks(value);
        break;
      case 19:
        await getThursdayDinner(value);
        break;
      case 20:
        await getFridayBreakfast(value);
        break;
      case 21:
        await getFridayLunch(value);
        break;
      case 22:
        await getFridaySnacks(value);
        break;
      case 23:
        await getFridayDinner(value);
        break;
      case 24:
        await getSaturdayBreakfast(value);
        break;
      case 25:
        await getSaturdayLunch(value);
        break;
      case 26:
        await getSaturdaySnacks(value);
        break;
      case 27:
        await getSaturdayDinner(value);
        break;
      default:
        break;
    }
    // Clear the text field

    // Implement your logic here when the check mark is tapped
    print('Check mark tapped for text field: $label');
    // Clear the text field
    setState(() {
      labels[index]['value'] = ''; // Set the value to an empty string
    });
  }

  List<TextEditingController> textControllers = [];

  @override
  void initState() {
    super.initState();
    // Initialize the textControllers list with one TextEditingController for each label
    textControllers = List.generate(
      labels.length,
      (index) => TextEditingController(),
    );
  }

  @override
  void dispose() {
    // Dispose of all the TextEditingController objects to avoid memory leaks
    for (var controller in textControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfbd1c0),
      appBar: AppBar(
        title: const Text(
          'Change Mess Menu',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xFFfbd1c0),
      ),
      drawer: const AdminDrawer(),
      body: ListView.builder(
        itemCount: labels.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: textControllers[
                        index], // Assign the appropriate TextEditingController
                    onChanged: (value) {
                      setState(() {
                        labels[index]['value'] = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: labels[index]['label'],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await _onCheckMarkTapped(index);
                    textControllers[index]
                        .clear(); // Call clear() on the TextEditingController to clear the text field
// Call clear() on the TextEditingController to clear the text field
                  },
                  icon: Icon(Icons.check),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
