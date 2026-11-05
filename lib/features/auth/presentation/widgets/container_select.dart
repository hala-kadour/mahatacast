import 'package:flutter/material.dart';
import 'package:mahatacast/core/constants/colors.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({
    super.key,
  });

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

ValueNotifier<bool> isPressed = ValueNotifier(false);
ValueNotifier<bool> isPressed1 = ValueNotifier(false);
ValueNotifier<bool> isPressed2 = ValueNotifier(false);
ValueNotifier<bool> isPressed3 = ValueNotifier(false);
ValueNotifier<bool> isPressed4 = ValueNotifier(false);
ValueNotifier<bool> isPressed5 = ValueNotifier(false);
ValueNotifier<bool> isPressed6 = ValueNotifier(false);
ValueNotifier<bool> isPressed7 = ValueNotifier(false);
ValueNotifier<bool> isPressed8 = ValueNotifier(false);
ValueNotifier<bool> isPressed9 = ValueNotifier(false);
ValueNotifier<bool> isPressed10 = ValueNotifier(false);
ValueNotifier<bool> isPressed11 = ValueNotifier(false);
ValueNotifier<bool> isPressed12 = ValueNotifier(false);
ValueNotifier<bool> isPressed13 = ValueNotifier(false);

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ValueListenableBuilder(
                valueListenable: isPressed,
                builder: (context, value, child) => OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        fixedSize: const Size(90, 60),
                        backgroundColor:
                            value ? Colors.black : lightestGreyColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        )),
                    onPressed: () {
                      isPressed.value = !isPressed.value;
                    },
                    child: Text(
                      'News',
                      style: TextStyle(
                        fontSize: 16,
                        color: value ? Colors.white : Colors.black,
                      ),
                    )),
              ),
              ValueListenableBuilder(
                valueListenable: isPressed1,
                builder: (context, value, child) => OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        fixedSize: const Size(130, 60),
                        backgroundColor: value ? Colors.black : lightGreyColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        )),
                    onPressed: () {
                      isPressed1.value = !isPressed1.value;
                    },
                    child: Text(
                      'Technology ',
                      style: TextStyle(
                        fontSize: 16,
                        color: value ? Colors.white : Colors.black,
                      ),
                    )),
              ),
              ValueListenableBuilder(
                valueListenable: isPressed2,
                builder: (context, value, child) => OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        fixedSize: const Size(100, 60),
                        backgroundColor: value ? Colors.black : lightGreyColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        )),
                    onPressed: () {
                      isPressed2.value = !isPressed2.value;
                    },
                    child: Text(
                      'Science',
                      style: TextStyle(
                        fontSize: 15,
                        color: value ? Colors.white : Colors.black,
                      ),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ValueListenableBuilder(
                  valueListenable: isPressed3,
                  builder: (context, value, child) => OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          fixedSize: const Size(155, 60),
                          backgroundColor:
                              value ? Colors.black : lightGreyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          )),
                      onPressed: () {
                        isPressed3.value = !isPressed3.value;
                      },
                      child: Text(
                        'Self  Improvement ',
                        style: TextStyle(
                          fontSize: 13,
                          color: value ? Colors.white : Colors.black,
                        ),
                      )),
                ),
                ValueListenableBuilder(
                  valueListenable: isPressed4,
                  builder: (context, value, child) => OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          fixedSize: const Size(100, 60),
                          backgroundColor:
                              value ? Colors.black : lightGreyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          )),
                      onPressed: () {
                        isPressed4.value = !isPressed4.value;
                      },
                      child: Text(
                        'Health',
                        style: TextStyle(
                          fontSize: 16,
                          color: value ? Colors.white : Colors.black,
                        ),
                      )),
                ),
                ValueListenableBuilder(
                  valueListenable: isPressed5,
                  builder: (context, value, child) => OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          fixedSize: const Size(72, 60),
                          backgroundColor:
                              value ? Colors.black : lightGreyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          )),
                      onPressed: () {
                        isPressed5.value = !isPressed5.value;
                      },
                      child: Text(
                        'Art',
                        style: TextStyle(
                          fontSize: 15,
                          color: value ? Colors.white : Colors.black,
                        ),
                      )),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ValueListenableBuilder(
                valueListenable: isPressed6,
                builder: (context, value, child) => OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        fixedSize: const Size(111, 60),
                        backgroundColor: value ? Colors.black : lightGreyColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        )),
                    onPressed: () {
                      isPressed6.value = !isPressed6.value;
                    },
                    child: Text(
                      'Personal',
                      style: TextStyle(
                        fontSize: 16,
                        color: value ? Colors.white : Colors.black,
                      ),
                    )),
              ),
              ValueListenableBuilder(
                valueListenable: isPressed7,
                builder: (context, value, child) => OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        fixedSize: const Size(109, 60),
                        backgroundColor: value ? Colors.black : lightGreyColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        )),
                    onPressed: () {
                      isPressed7.value = !isPressed7.value;
                    },
                    child: Text(
                      'Business',
                      style: TextStyle(
                        fontSize: 16,
                        color: value ? Colors.white : Colors.black,
                      ),
                    )),
              ),
              ValueListenableBuilder(
                valueListenable: isPressed8,
                builder: (context, value, child) => OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        fixedSize: const Size(95, 60),
                        backgroundColor: value ? Colors.black : lightGreyColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        )),
                    onPressed: () {
                      isPressed8.value = !isPressed8.value;
                    },
                    child: Text(
                      'culture',
                      style: TextStyle(
                        fontSize: 15,
                        color: value ? Colors.white : Colors.black,
                      ),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ValueListenableBuilder(
                  valueListenable: isPressed9,
                  builder: (context, value, child) => OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          fixedSize: const Size(100, 60),
                          backgroundColor:
                              value ? Colors.black : lightGreyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          )),
                      onPressed: () {
                        isPressed9.value = !isPressed9.value;
                      },
                      child: Text(
                        'Music',
                        style: TextStyle(
                          fontSize: 13,
                          color: value ? Colors.white : Colors.black,
                        ),
                      )),
                ),
                ValueListenableBuilder(
                  valueListenable: isPressed10,
                  builder: (context, value, child) => OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          fixedSize: const Size(110, 60),
                          backgroundColor:
                              value ? Colors.black : lightGreyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          )),
                      onPressed: () {
                        isPressed10.value = !isPressed10.value;
                      },
                      child: Text(
                        'Society',
                        style: TextStyle(
                          fontSize: 16,
                          color: value ? Colors.white : Colors.black,
                        ),
                      )),
                ),
                ValueListenableBuilder(
                  valueListenable: isPressed11,
                  builder: (context, value, child) => OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          fixedSize: const Size(90, 60),
                          backgroundColor:
                              value ? Colors.black : lightGreyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          )),
                      onPressed: () {
                        isPressed11.value = !isPressed11.value;
                      },
                      child: Text(
                        'Film',
                        style: TextStyle(
                          fontSize: 15,
                          color: value ? Colors.white : Colors.black,
                        ),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55, right: 55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ValueListenableBuilder(
                  valueListenable: isPressed12,
                  builder: (context, value, child) => OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          fixedSize: const Size(100, 60),
                          backgroundColor:
                              value ? Colors.black : lightGreyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          )),
                      onPressed: () {
                        isPressed12.value = !isPressed12.value;
                      },
                      child: Text(
                        'Sports',
                        style: TextStyle(
                          fontSize: 13,
                          color: value ? Colors.white : Colors.black,
                        ),
                      )),
                ),
                ValueListenableBuilder(
                  valueListenable: isPressed13,
                  builder: (context, value, child) => OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          fixedSize: const Size(110, 60),
                          backgroundColor:
                              value ? Colors.black : lightGreyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          )),
                      onPressed: () {
                        isPressed13.value = !isPressed13.value;
                      },
                      child: Text(
                        'Kids',
                        style: TextStyle(
                          fontSize: 16,
                          color: value ? Colors.white : Colors.black,
                        ),
                      )),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
