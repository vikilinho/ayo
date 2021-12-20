import 'package:ayo/constants.dart';
import 'package:ayo/models/carousel_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 18.0,
          ),
          Text(
            "Hello~ I'm Victor Ogundola",
            style: GoogleFonts.mulish(
              color: KpryColor,
              fontSize: 40.0,
              fontWeight: FontWeight.w700,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "A UX/UI designer and software enginer with experience designing software products that improves lives and help businesses and non-profits to make impacts.\nI am constantly looking to learn new things daily.",
            style: GoogleFonts.mulish(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: KpryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "ABOUT ME",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    image: Container(
      child: Image.asset(
        "images/homePhotopn.png",
        fit: BoxFit.contain,
      ),
    ),
  ),
);

List<CarouselItemModel> Items = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 18.0,
          ),
          Text(
            "BabyFirst",
            style: GoogleFonts.mulish(
              color: KpryColor,
              fontSize: 40.0,
              fontWeight: FontWeight.w700,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Making the health of expectant mothers\nand their babies a priority.",
            style: GoogleFonts.mulish(
                color: Colors.black,
                fontSize: 15.0,
                height: 1.0,
                letterSpacing: 1.5),
          ),
          SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: KpryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Learn More",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    image: Container(
      height: 400,
      width: 400,
      child: Image.asset(
        "images/h.png",
        fit: BoxFit.contain,
      ),
    ),
  ),
);
List<CarouselItemModel> Cardos = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 18.0,
          ),
          Text(
            "RentO",
            style: GoogleFonts.mulish(
              color: KpryColor,
              fontSize: 40.0,
              fontWeight: FontWeight.w700,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Renting a car made easy",
            style: GoogleFonts.mulish(
                color: Colors.black,
                fontSize: 15.0,
                height: 1.0,
                letterSpacing: 1.5),
          ),
          SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: KpryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Learn More",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    image: Container(
      height: 400,
      width: 400,
      child: Image.asset(
        "images/rent.png",
        fit: BoxFit.contain,
      ),
    ),
  ),
);
List<CarouselItemModel> kal = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 18.0,
          ),
          Text(
            "Quickbuy",
            style: GoogleFonts.mulish(
              color: KpryColor,
              fontSize: 40.0,
              fontWeight: FontWeight.w700,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Buy whatever you want from anywhere",
            style: GoogleFonts.mulish(
                color: Colors.black,
                fontSize: 15.0,
                height: 1.0,
                letterSpacing: 1.5),
          ),
          SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: KpryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Learn More",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    image: Container(
      height: 400,
      width: 400,
      child: Image.asset(
        "images/quick.png",
        fit: BoxFit.contain,
      ),
    ),
  ),
);
