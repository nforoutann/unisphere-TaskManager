class Assignment {
  String? assignmentId;
  String? title;
  double? score;
  bool? active;
  AssignmentType? assignmentType;
  DateTime? deadline;
  DateTime? definedTime;
  int? estimatedTime;
  String? courseName;

  Assignment({
    this.assignmentId,
    this.title,
    this.score,
    this.active,
    this.assignmentType,
    this.deadline,
    this.definedTime,
    this.estimatedTime,
    this.courseName,
  });

  factory Assignment.fromJson(Map<String, dynamic> json) {
    String definedTimeStr = json['definedTime'];
    definedTimeStr = definedTimeStr.substring(1, definedTimeStr.length-1);
    var definedTimeArray = definedTimeStr.split("~");
    DateTime definedTime = DateTime(int.parse(definedTimeArray[0]), int.parse(definedTimeArray[1]), int.parse(definedTimeArray[2]));

    String deadlineStr = json['deadline'];
    deadlineStr = deadlineStr.substring(1, deadlineStr.length-1);
    var deadlineArray = deadlineStr.split("~");
    DateTime deadline = DateTime(int.parse(deadlineArray[0]), int.parse(deadlineArray[1]), int.parse(deadlineArray[2]));

    return Assignment(
      assignmentId: json['assignmentId'],
      title: json['title'],
      score: json['score'],
      active: json['active'],
      courseName: json['courseName'],
      assignmentType: json['assignmentType'] != null
          ? parseAssignmentType(json['assignmentType'])
          : null,
      deadline: deadline, // Assuming deadline is in ISO 8601 format
      definedTime: definedTime, // Assuming definedTime is in ISO 8601 format
      estimatedTime: json['estimatedTime'],
    );
  }

  static AssignmentType parseAssignmentType(String type) {
    switch (type) {
      case 'HW':
        return AssignmentType.HW;
      case 'PROJECT':
        return AssignmentType.PROJECT;
      default:
        throw ArgumentError('Unknown assignment type: $type');
    }
  }
}

enum AssignmentType {
  HW,
  PROJECT,
}
