class Reminder{
    String? id;
    String? taskname;
    String? plantname;
    String? date;
    bool? repeat;
    
Reminder({
    this.id,
    this.taskname,
    this.plantname,
    this.date,
    this.repeat,
});

Reminder.fromJson(Map<String, dynamic> json){
    id = json['id'];
    taskname = json['taskname'];
    plantname = json['plantname'];
    date = json['date'];
    repeat = json['repeat'];
}

Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['taskname'] = taskname;
    data['plantname'] = plantname;
    data['date'] = date;
    data['repeat'] = repeat;

   return data;
 }
}
  enum Taskname{
      water,
      prune,
      mist,
      fertilizer,
    }