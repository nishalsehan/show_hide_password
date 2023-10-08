import 'package:flutter/material.dart';
import 'package:show_hide_password/show_hide_password.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
          // SizedBox(
          //   width: size.width*0.9,
          //   child: ShowHidePasswordTextField(
          //     controller: controller,
          //     decoration: InputDecoration(
          //       isDense: true,
          //       hintText: 'Enter the password',
          //       hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
          //         color: Colors.black38,
          //         fontWeight: FontWeight.w500,
          //         fontSize: 12
          //       ),
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(
          //             color: Colors.black12,
          //             width: 1
          //         ),
          //         borderRadius: BorderRadius.circular(12),
          //       ),
          //       focusedBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(
          //             color: Colors.black38,
          //             width: 1
          //         ),
          //         borderRadius: BorderRadius.circular(12),
          //       ),
          //       counterText: "",
          //       // contentPadding:EdgeInsets.symmetric(vertical: size.height*0.012,horizontal: size.width*0.04),
          //     ),
          //   ),
          // ),
          // const SizedBox(
          //   height: 16,
          // ),
          SizedBox(
            width: size.width*0.9,
            child: ShowHidePassword(
                passwordField: (hidePassword){
                  return  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: controller,
                    obscureText: hidePassword,
                    showCursor: false,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Enter the password',
                      hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Colors.black38,
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 1
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.black38,
                            width: 1
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      counterText: "",
                      contentPadding:EdgeInsets.symmetric(vertical: size.height*0.018,horizontal: size.width*0.04),
                    ),
                    style:  Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
