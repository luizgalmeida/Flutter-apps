class Task{
  //attriubute
  String    name;
  DateTime  date;
  bool      checked;

  //consructor 
  Task(String name){
    this.name = name;
    date      = DateTime.now();
    checked   = false;
  }
}
