import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kum/bloc/task.block/event.dart';
import 'package:kum/bloc/task.block/state.dart';

class TaskBloc extends Bloc<TaskEvent , TaskState> {
    TaskBloc() : super(TaskState());
}