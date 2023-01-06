class Reminder{
    int? id;
    String? name;
    String? time;
    String? date;
    String? repeat;

Reminder({
    this.id,
    this.name,
    this.time,
    this.date,
    this.repeat,
});

Reminder.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    time = json['time'];
    date = json['date'];
    repeat = json['repeat'];
}

Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['time'] = time;
    data['date'] = date;
    data['repeat'] = repeat;

   return data;
 }
 
}
