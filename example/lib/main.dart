import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:show_hide_password/show_hide_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Show Hide Password Demo',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(useMaterial3: true, textTheme: GoogleFonts.latoTextTheme()

              /// used google font for the text theme
              ),
      home: const MyHomePage(title: 'Create Your Password'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// use to handle the text editing changes
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          SizedBox(
            width: size.width,
            height: size.height * 0.01,
          ),
          SizedBox(
            width: size.width * 0.9,
            child: Text(
              'Set a Password',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          SizedBox(
            width: size.width * 0.9,
            child: Text(
              'Please create a secure password including the following criteria below',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          SizedBox(
            width: size.width * 0.9,

            /// default ShowHidePasswordTextField widget without any extra attributes
            child: ShowHidePasswordTextField(
              controller: controller,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          SizedBox(
            width: size.width * 0.9,

            /// custom ShowHidePasswordTextField widget with different extra attributes
            child: ShowHidePasswordTextField(
              controller: controller,
              fontStyle: const TextStyle(fontSize: 14, height: 1.4),
              textColor: Colors.blue,
              hintColor: Colors.lightBlueAccent,
              iconSize: 20,
              visibleOffIcon: Iconsax.eye_slash,
              visibleOnIcon: Iconsax.eye,

              /// set the text field appearance
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Enter the password',
                hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black38, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: size.width * 0.9,

            /// ShowHidePassword with custom attributes
            child: ShowHidePassword(
              hidePassword: false,

              /// set the default visibility status to false
              passwordField: (hidePassword) {
                return TextField(
                  keyboardType: TextInputType.text,
                  controller: controller,
                  obscureText: hidePassword,

                  ///use the hidePassword status on obscureText to toggle the visibility
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Enter the password',
                    hintStyle:
                        Theme.of(context).textTheme.labelMedium!.copyWith(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black38, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    counterText: "",
                    contentPadding: EdgeInsets.symmetric(
                        vertical: size.height * 0.018,
                        horizontal: size.width * 0.04),
                  ),
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                );
              },
              iconSize: 18,

              /// set the icon size of the toggle to 18px
              /// assigned toggle on and off icons
              visibleOffIcon: Iconsax.eye_slash,
              visibleOnIcon: Iconsax.eye,
            ),
          )
        ],
      ),
    );
  }
}
