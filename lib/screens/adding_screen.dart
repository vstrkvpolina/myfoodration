import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:myfoodration/utils/utils.dart';
import 'package:myfoodration/widgets/pics/myfoodration_widget.dart';
import 'package:myfoodration/widgets/pics/today.dart';


// добавить riverppod и переделать

class AddingScreen extends StatelessWidget {
  static AddingScreen builder(BuildContext contex, GoRouterState state) =>
      const AddingScreen();
  const AddingScreen({super.key});

  // @override
  // State<AddingScreen> createState() => _AddingScreenState();

  // final TextEditingController _nameController = TextEditingController();

  // @override
  // void dispose() {
  //   _nameController.dispose(); хуй знает, нужны ли здесь конроллеры
  // }

  @override
  Widget build(BuildContext context) {
    // final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    // final textTheme = context.textTheme;

    return Scaffold(
      backgroundColor: Color.fromARGB(355, 0, 149, 255),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 270, 20),
                child: MyfoodRationPhoto(),
              ),
              Center(
                child: Container(
                  height: 100, //deviceSize.height * 0.1
                  width: deviceSize.width * 0.95, // deviceSize.width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(355, 0, 78, 153), // colors.primary
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        // showCupertinoDialog(context: context, builder: ) //TODO логика для поиска из удалённой бд
                      },
                      child: Text('+добавить еду')), // add style
                  //TODO theme для всего приложения
                ),
              ), // посчитать количество виджетов и записать как есть
              const Gap(0.5),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 270, 0),
                child: Today(),
              ),
              const Gap(0.5),
              Center(
                child: Container(
                  height: 600, //deviceSize.height * 0.1
                  width: deviceSize.width * 0.95, // deviceSize.width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(355, 0, 78, 153), // colors.primary
                  ),
                  //TODO theme для всего приложения
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

// void _createFood()async{
//   final name = _nameController.text.trim();
//   final date = ref.watch(dateProvider);
//   final time = ref.watch(timeProvider);
//   if(name.isEmpty) { // 
//     print('в вашем рационе нет добавленной еды');


// await ref.read(foodProvider.notifier).createFood(food).then((value) {
//AppAlerts.displaySnackBar(context, 'Еда добавлена'),
// context.go(RouteLocation.home); // хуй знает куда на самом деле

// });
// } else {
// AppAlerts.displaySnackBar(context, 'Еда не добавлена'),
//}
//   }
// }

}
