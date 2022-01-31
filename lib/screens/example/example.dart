import 'package:common_ui_toolkit/index.dart';

// import './example_controller.dart';
import './style.dart';
import '../../styles/index.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      // this style import from common styles folder
      style: containerStyles,
      child: CommonContainer(
        // this style import from style file in this folder (style.dart)
        style: exampleContainerCopy,
      ),
    );
  }
}
