import 'package:flutter/material.dart';

import 'package:hostelapplication/presentation/screen/student/studentDrawer.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../logic/modules/mess_model.dart';

class StudentServicesScreen extends StatefulWidget {
  const StudentServicesScreen({Key? key}) : super(key: key);

  @override
  State<StudentServicesScreen> createState() => _StudentServicesScreenState();
}

class _StudentServicesScreenState extends State<StudentServicesScreen> {
  @override
  Widget build(BuildContext context) {
    // List<Mess> messList = [];

    final messList = Provider.of<List<Mess>?>(context);

    int currentWeekday = DateTime.now().weekday;
    currentWeekday = currentWeekday - 1;
// Map weekdays to their corresponding text

    return Scaffold(
      backgroundColor: messList != null && messList.length != 0
          ? Colors.grey[200]
          : Colors.lightBlue.shade200,
      appBar: AppBar(
        title: const Text(
          'Mess Services',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xFFfbd1c0),
      ),
      drawer: const StudentDrawer(),
      body: context.watch<List<Mess>?>() != null
          ? Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(color: Color(0xFFfbd1c0)),
              child: ListView.builder(
                itemCount:
                    messList != [] && messList != null ? messList.length : 0,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    decoration: new BoxDecoration(
                        color: Color(0xFFFEFFFE),
                        border: Border(
                            left: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            top: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            right: BorderSide(
                              color: Colors.black,
                              width: 4,
                            ),
                            bottom: BorderSide(
                              color: Colors.black,
                              width: 4,
                            ))),
                    child: Card(
                      elevation: 0,
                      color: Color(0xFFFEFFFE),
                      // add border only to top and bottom only
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Today's Menu ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '(${DateFormat('EEEE, MMMM d').format(DateTime.now())})',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(thickness: 2),
                            Container(
                              padding: const EdgeInsets.all(2),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      child: RichText(
                                        text: TextSpan(
                                          style: DefaultTextStyle.of(context)
                                              .style,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '\u2022 ',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Breakfast',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  ' - ${messList != null ? messList[0].weekdaysB[currentWeekday] : ""}',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(2),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      child: RichText(
                                        text: TextSpan(
                                          style: DefaultTextStyle.of(context)
                                              .style,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '\u2022 ',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Lunch',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  ' - ${messList != null ? messList[0].weekdaysL[currentWeekday] : ""}',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(2),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      child: RichText(
                                        text: TextSpan(
                                          style: DefaultTextStyle.of(context)
                                              .style,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '\u2022 ',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Snacks',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  ' - ${messList != null ? messList[0].weekdaysS[currentWeekday] : ""}',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(2),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      child: RichText(
                                        text: TextSpan(
                                          style: DefaultTextStyle.of(context)
                                              .style,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '\u2022 ',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Dinner',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  ' - ${messList != null ? messList[0].weekdaysD[currentWeekday] : ""}',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
