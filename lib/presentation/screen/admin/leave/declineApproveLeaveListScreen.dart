// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hostelapplication/logic/modules/leave_model.dart';
import 'package:provider/provider.dart';

class DeclineApproveLeaveListScreen extends StatelessWidget {
  DeclineApproveLeaveListScreen(this.leaveStatus, {Key? key}) : super(key: key);

  int leaveStatus;
  @override
  Widget build(BuildContext context) {
    List<Leave> leaveList = [];
    final leaveListRaw = Provider.of<List<Leave>?>(context);

    leaveListRaw?.forEach(
      (element) {
        if (element.status == leaveStatus) {
          leaveList.add(element);
        }
        ;
      },
    );
    return Scaffold(
      backgroundColor: Color(0xFFfbd1c0),
      appBar: AppBar(
        backgroundColor: Color(0xFFfbd1c0),
        title: leaveStatus == 1
            ? Text(
                'Approved Rebate',
                style: TextStyle(color: Colors.black),
              )
            : Text(
                'Declined Rebate',
                style: TextStyle(color: Colors.black),
              ),
      ),
      body: leaveList.length != 0
          ? Container(
              padding: EdgeInsets.all(8),
              child: ListView.builder(
                itemCount: leaveList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    decoration: new BoxDecoration(
                        color: Color(0xFFFFFEF5),
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
                                      leaveList[index].name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text('Room - ${leaveList[index].roomNo}'),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      leaveList[index]
                                              .dateOfLeave
                                              .day
                                              .toString() +
                                          '/' +
                                          leaveList[index]
                                              .dateOfLeave
                                              .month
                                              .toString() +
                                          '/' +
                                          leaveList[index]
                                              .dateOfLeave
                                              .year
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                leaveList[index].status == 0
                                    ? Text(
                                        'Pending',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                            255,
                                            214,
                                            108,
                                            22,
                                          ),
                                        ),
                                      )
                                    : leaveList[index].status == 1
                                        ? Text('Approved',
                                            style:
                                                TextStyle(color: Colors.green))
                                        : Text(
                                            'Declined',
                                            style: TextStyle(
                                              color: Colors.red,
                                            ),
                                          ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(
                                  87,
                                  238,
                                  238,
                                  238,
                                ),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(
                                    157,
                                    158,
                                    158,
                                    158,
                                  ),
                                ),
                              ),
                              child: Text(
                                leaveList[index].leaveReason,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          : Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/login.png',
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'No Rebate Request :)',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
    );
  }
}
