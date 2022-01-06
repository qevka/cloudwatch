// Future<void> main() async {
//   group('Initialization', () {
//     testWidgets('Start Widget Test', (WidgetTester tester) async {
//       final file = File('assets/testJson/weatherModel.json');
//       final json = jsonDecode(await file.readAsString());
//       final mockClient = MockClient((request) async {
//         return Response(jsonEncode(json), 200);
//       });
//       final service = WeatherService(client: mockClient);
//       final controller = WeatherController(service: WeatherService(client: mockClient));
//
// //       await tester.pumpWidget(WeatherView(controller));
// //
// // // Check that the title text was displayed successfully.
// //       expect(find.text('Seattle'), findsOneWidget);
//
// // Test adding a city to the city input.
// //     await tester.firstWidget(TextInput)
// //     await tester.tap(find.byIcon(Icons.add));
// //     await tester.pump();
//     });
//   });
// }

// void main() {
//   getTest(
//     "test description",
//     widgetTest: (tester) async {
//       expect('/', Get.currentRoute);
//
//       Get.to(Container());
//       expect('/Container', Get.currentRoute);
//
//       Get.to(Scaffold());
//       expect('/Scaffold', Get.currentRoute);
//
//       Get.back();
//
//       expect('/Container', Get.currentRoute);
//     },
//   );
//
//   testGetX(
//     'GetX test',
//     widget: GetX<Controller>(
//       init: Controller(),
//       builder: (controller) {
//         return Text("ban:${controller.count}");
//       },
//     ),
//     test: (e) {
//       expect(find.text("ban:0"), findsOneWidget);
//       expect(e.count.value, 0);
//     },
//   );
//
//   testGetBuilder(
//     'GetBuilder test',
//     widget: GetBuilder<Controller>(
//       init: Controller(),
//       builder: (controller) {
//         return Text("ban:${controller.count}");
//       },
//     ),
//     test: (e) {
//       expect(find.text("ban:0"), findsOneWidget);
//       expect(e.count.value, 0);
//     },
//   );
//
//   testObx(
//     'Obx test',
//     widget: (controller) => Obx(
//       () => Text("ban:${controller.count}"),
//     ),
//     controller: Controller(),
//     test: (e) {
//       expect(find.text("ban:0"), findsOneWidget);
//       expect(e.count.value, 0);
//     },
//   );
//
//   testController<Controller>(
//     'Controller test',
//     (controller) {},
//     controller: Controller(),
//     onInit: (c) {
//       c.increment();
//       print('onInit');
//     },
//     onReady: (c) {
//       print('onReady');
//       c.increment();
//     },
//     onClose: (c) {
//       print('onClose');
//     },
//   );
// }
