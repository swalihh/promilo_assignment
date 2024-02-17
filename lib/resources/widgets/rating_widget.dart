import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
        final Size screenSize = MediaQuery.of(context).size;

    return Container(
                            width: screenSize.width * 0.3,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                   color: Color.fromARGB(255, 4, 247, 255), 
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                      color: Color.fromARGB(255, 74, 220, 225)
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                      color: Color.fromARGB(255, 108, 234, 238)
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                      color: Color.fromARGB(255, 158, 232, 234)
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                      color: Color.fromARGB(255, 255, 255, 255)
                                  ),
                                ],
                              ),
                            ),
                          );
}}