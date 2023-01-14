// part of 'widget.dart';



// class Loading {
//   OverlayState _overlayState;
//   OverlayEntry _overlayEntry;

//   Loading.of(BuildContext context) {
//     _overlayState = Navigator.of(context).overlay!;
//   }

//   void show([required String title]) {
//     _overlayEntry = OverlayEntry(
//       builder: (context) {
//         return Container(
//           color: Colors.black.withOpacity(.5),
//         );
//       },
//     );
//     _overlayState.insert(_overlayEntry);
//   }

//   void hide() {
//     _overlayEntry?.remove();
//     _overlayEntry = null;
//   }
// }
