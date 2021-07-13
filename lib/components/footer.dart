import 'package:ayo/components/carousel_items.dart';
import 'package:ayo/components/utils/screen_manager.dart';
import 'package:ayo/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Footer extends StatelessWidget {
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenManager.isMobile(context) ? .7 : .85);
    return Card(
      color: Colors.lightGreenAccent.shade100,
      elevation: 3.0,
      child: Container(
        height: 400,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: CarouselSlider(
                carouselController: carouselController,
                options: CarouselOptions(
                  // autoPlay: true,
                  viewportFraction: 1,
                  scrollPhysics: NeverScrollableScrollPhysics(),
                  height: carouselContainerHeight,
                ),
                items: List.generate(
                  Cardos.length,
                  (index) => Builder(
                    builder: (BuildContext context) {
                      return Container(
                        constraints: BoxConstraints(
                          minHeight: carouselContainerHeight,
                        ),
                        child: ScreenManager(
                          // Responsive views
                          desktop: _buildDesktop(
                            context,
                            Cardos[index].text,
                          ),
                          tablet: _buildTablet(
                            context,
                            Cardos[index].text,
                          ),
                          mobile: _buildMobile(
                            context,
                            Cardos[index].text,
                          ),
                        ),
                      );
                    },
                  ),
                ).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Big screens
Widget _buildDesktop(BuildContext context, Widget text) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: text,
          ),
        ],
      ),
    ),
  );
}

// Mid screens
Widget _buildTablet(
  BuildContext context,
  Widget text,
) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kTabletMaxWidth,
      minWidth: kTabletMaxWidth,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: text,
          ),
        ],
      ),
    ),
  );
}

// SMall Screens

Widget _buildMobile(
  BuildContext context,
  Widget text,
) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: getMobileMaxWidth(context),
    ),
    width: double.infinity,
    child: SingleChildScrollView(
      child: Column(
        children: [
          text,
        ],
      ),
    ),
  );
}
