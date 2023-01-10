class Reminder{
    String? id;
    String? taskname;
    String? time;
    String? plantname;
    String? date;
    String? repeat;
    
Reminder({
    this.id,
    this.taskname,
    this.time,
    this.date,
    this.repeat,
});

Reminder.fromJson(Map<String, dynamic> json){
    id = json['id'];
    taskname = json['taskname'];
    time = json['time'];
    date = json['date'];
    repeat = json['repeat'];
}

Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['taskname'] = taskname;
    data['time'] = time;
    data['date'] = date;
    data['repeat'] = repeat;

   return data;
 }
}
