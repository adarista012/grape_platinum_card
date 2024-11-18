import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grape_platinum_card/app/app_colors.dart';
import 'package:grape_platinum_card/app/presentation/home/home_controller.dart';
import 'package:grape_platinum_card/app/presentation/home/widgets/card.dart';
import 'package:grape_platinum_card/app/presentation/home/widgets/points_information.dart';
import 'package:grape_platinum_card/app/presentation/home/widgets/points_label.dart';
import 'package:grape_platinum_card/app/presentation/widgets/gap.dart';
import 'package:grape_platinum_card/app/presentation/widgets/horizontal_divider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int padding = 8;

    return GetBuilder(
      init: HomeController(),
      builder: (controler) {
        return Scaffold(
          backgroundColor: AppColors.white,
          body: Padding(
            padding: EdgeInsets.all(padding.toDouble()),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      card(context, padding),
                      gap(height: 8.0),
                      Text(
                        'Grape Platinum Card',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      pointsLabel(controler.points, context),
                      gap(height: 8.0),
                      horizontalDivider(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ListView.builder(
                    itemCount: 21,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemBuilder: (BuildContext context, int index) {
                      return pointsInformation(
                          controler.points,
                          DateTime.now(),
                          index % 2 == 0
                              ? AppColors.white
                              : AppColors.main.withOpacity(0.1));
                    },
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.main,
            shape: const CircleBorder(),
            onPressed: () {},
            child: Text(
              '+',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<HomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         // title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
