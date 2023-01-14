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
    this.plantname,
    this.date,
    this.repeat,
});

Reminder.fromJson(Map<String, dynamic> json){
    id = json['id'];
    taskname = json['taskname'];
    time = json['time'];
    plantname = json['plantname'];
    date = json['date'];
    repeat = json['repeat'];
}

Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['taskname'] = taskname;
    data['time'] = time;
    data['plantname'] = plantname;
    data['date'] = date;
    data['repeat'] = repeat;

   return data;
 }
}
