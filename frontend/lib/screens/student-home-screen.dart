import 'package:flutter/material.dart';
import 'package:frontend/objects/Student.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/widgets/done-card.dart';

class StudentHomeScreen extends StatefulWidget {
  Student? student;

  StudentHomeScreen({Key? key, this.student}) : super(key: key);

  @override
  _StudentHomeScreenState createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              // First row of cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8.0),
                          color: Colors.indigo,
                        ),
                        Card(
                          surfaceTintColor: Colors.indigo,
                          elevation: 10,
                          shadowColor: Colors.cyanAccent,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Center(
                              child: Column(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.heartCrack,
                                    size: 20,
                                    color: Colors.indigo,
                                  ),
                                  Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      'you have ${widget.student!.numberOfExams} exams',
                                      style: const TextStyle(
                                        fontFamily: 'Georgia',
                                        letterSpacing: 0.8,
                                        fontWeight: FontWeight.w600,
                                      ),
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
                  const SizedBox(width: 16),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8.0),
                          color: Colors.indigo,
                        ),
                        Card(
                          surfaceTintColor: Colors.indigo,
                          shadowColor: Colors.cyanAccent,
                          elevation: 10,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Center(
                              child: Column(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.pen,
                                    size: 20,
                                    color: Colors.indigo,
                                  ),
                                  Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      '${widget.student!.numberOfLeftAssignments} exercises left',
                                      style: const TextStyle(
                                        fontFamily: 'Georgia',
                                        letterSpacing: 0.8,
                                        fontWeight: FontWeight.w600,
                                      ),
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
                  const SizedBox(width: 16),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8.0),
                          color: Colors.indigo,
                        ),
                        Card(
                          surfaceTintColor: Colors.indigo,
                          shadowColor: Colors.cyanAccent,
                          elevation: 10,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Center(
                              child: Column(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.explosion,
                                    size: 20,
                                    color: Colors.indigo,
                                  ),
                                  Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      'lost ${widget.student!.numberOfLostAssignments == null ? 0 : widget.student!.numberOfLostAssignments} deadlines',
                                      style: const TextStyle(
                                        fontFamily: 'Georgia',
                                        letterSpacing: 0.8,
                                        fontWeight: FontWeight.w600,
                                      ),
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
                ],
              ),
              const SizedBox(height: 16),
              // Second row of cards
              Row(
                children: [
                  Spacer(flex: 1),
                  // Best score card
                  Expanded(
                    flex: 3,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8.0),
                          color: Colors.indigo,
                        ),
                        Card(
                          surfaceTintColor: Colors.indigo,
                          shadowColor: Colors.cyanAccent,
                          elevation: 10,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(7),
                            child: Center(
                              child: Column(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.faceSmile,
                                    size: 20,
                                    color: Colors.indigo,
                                  ),
                                  Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      'your best score is ${widget.student!.bestScore}',
                                      style: const TextStyle(
                                        fontFamily: 'Georgia',
                                        letterSpacing: 0.8,
                                        fontWeight: FontWeight.w600,
                                      ),
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
                  const SizedBox(width: 16),
                  // Worst score card
                  Expanded(
                    flex: 3,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8.0),
                          color: Colors.indigo,
                        ),
                        Card(
                          surfaceTintColor: Colors.indigo,
                          shadowColor: Colors.cyanAccent,
                          elevation: 10,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(7),
                            child: Center(
                              child: Column(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.faceFrown,
                                    size: 20,
                                    color: Colors.indigo,
                                  ),
                                  Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      'your worst score is ${widget.student!.worstScore}',
                                      style: const TextStyle(
                                        fontFamily: 'Georgia',
                                        letterSpacing: 0.8,
                                        fontWeight: FontWeight.w600,
                                      ),
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
                  Spacer(flex: 1),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Ongoing tasks section
        Expanded(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'ongoing tasks',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 120),
                        child: Text(
                          '${today.year}, ${today.month}, ${today.day}',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: widget.student!.ongoingTasks == null || widget.student!.ongoingTasks.isEmpty
                        ? Center(
                      child: Text(
                        'No ongoing tasks',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    )
                        : Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: ListView.builder(
                        itemCount: widget.student!.ongoingTasks.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Card(
                              surfaceTintColor: Colors.cyan,
                              shadowColor: Colors.cyan,
                              elevation: 2,
                              child: ListTile(
                                title: Padding(
                                  padding: EdgeInsets.only(left: 1, right: 1),
                                  child: Text(
                                    widget.student!.ongoingTasks[index],
                                    style: const TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Done assignments section with horizontal scroll
        Flexible(
          child: Column(
            children: [
              SizedBox(height: 30),
              const Align(
                alignment: Alignment(-0.7, -1),
                child: Text(
                  'done assignments',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Flexible(
                child: widget.student!.doneAssignments == null || widget.student!.doneAssignments.isEmpty
                    ? Center(
                  child: Text(
                    'No done assignments',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                )
                    : Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, // Set to horizontal scrolling
                    itemCount: widget.student!.doneAssignments.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 15, right: 20, bottom: 40, top: 20),
                        child: Container(
                          width: 170, // Set a fixed width for each card
                          child: DoneCard(
                            child: Padding(
                              padding: EdgeInsets.all(25),
                              child: Align(
                                alignment: Alignment.center,
                                child: SingleChildScrollView(
                                  child: Text.rich(
                                    textAlign: TextAlign.center,
                                     TextSpan(
                                      style:const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Georgia',
                                      ),
                                      children: [
                                        TextSpan(
                                          text: widget.student!.doneAssignments[index].title,
                                        ),
                                        const TextSpan(
                                          text: '\ncourse: ',
                                          style: const TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15
                                          ),
                                        ),
                                        TextSpan(
                                          text: '${widget.student!.doneAssignments[index].courseName!}',
                                          style: const TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
