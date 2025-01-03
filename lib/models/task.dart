
class Task {
  final String name;
  final String registeredDate;
  final String reminder;
  final String description;

  const Task({
    required this.name,
    required this.registeredDate,
    required this.reminder,
    required this.description
    });
   
   factory Task.fromJson(Map<String , dynamic> json) {
      return Task(
        name: json['name'] ?? "unknown", 
        reminder: json['reminder'] ?? "unknown", 
        registeredDate: json['date'] ?? "unknown", 
        description: json['decription'] ?? "unknown");
   }

   Map<String, dynamic> toJson(Task model) {
      return {
        'name' : model.name,
        'date' : model.registeredDate,
        'reminder' : model.reminder,
        'description' : model.description,
      };
   }
}