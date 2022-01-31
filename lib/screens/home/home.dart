import 'package:common_ui_toolkit/index.dart';

import '../../styles/index.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonContainer(
        style: containerStyles,
      ),
    );
  }
}
