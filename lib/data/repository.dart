import 'package:kum/data/dummy.dart';
import 'package:kum/models/task.dart';

class Repository {
  // init firebase and localdata src
  const Repository();

  List<Task>fetchTask() {
    final data = dd;
    // print(data);
    final result = data.map((single) {
      final model = Task.fromJson(single);
      return model;
    }).toList();
   
    return result;
  }
}
