import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:weather_icons/weather_icons.dart';

import '../../../constants.dart';
import '../../../widgets/blur_filter.dart';
import '../../news/post_boxes/post_description.dart';

// class ShowcaseWeatherTimeline extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Showcase(
//       title: 'Weather Timeline',
//       app: _WeatherTimelineApp(),
//       description: 'Keep it up with the weather with this shining timeline.',
//       template: SimpleTemplate(reverse: false),
//       theme: TemplateThemeData(
//         frameTheme: FrameThemeData(
//           statusBarBrightness: Brightness.dark,
//           frameColor: Colors.white.withOpacity(0.7),
//         ),
//         flutterLogoColor: FlutterLogoColor.white,
//         brightness: Brightness.dark,
//         backgroundColor: const Color(0xFFDB84B1),
//         titleTextStyle: GoogleFonts.lato(
//           fontSize: 60,
//           fontWeight: FontWeight.w900,
//           color: Colors.white.withOpacity(0.7),
//         ),
//         descriptionTextStyle: GoogleFonts.lato(
//           fontSize: 24,
//           height: 1.2,
//           color: Colors.white.withOpacity(0.7),
//         ),
//         buttonTextStyle: TextStyle(
//           color: Colors.white.withOpacity(0.7),
//           fontWeight: FontWeight.bold,
//           letterSpacing: 2,
//         ),
//         buttonIconTheme: const IconThemeData(color: Colors.white),
//         buttonTheme: ButtonThemeData(
//           buttonColor: const Color(0xFF9E3773),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(50),
//           ),
//           padding: const EdgeInsets.all(16),
//         ),
//       ),
//       links: [
//         LinkData.github('https://github.com/JHBitencourt/timeline_tile'),
//       ],
//       logoLink: LinkData(
//         icon: Image.asset(
//           'assets/built_by_jhb_white.png',
//           fit: BoxFit.fitHeight,
//         ),
//         url: 'https://github.com/JHBitencourt',
//       ),
//     );
//   }
// }

// class _WeatherTimelineApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Weather TimelineTile',
//     //  builder: Frame.builder,
//       home: _WeatherTimeline(),
//     );
//   }
// }

class WeatherTimeline extends StatefulWidget {



  @override
  _WeatherTimelineState createState() => _WeatherTimelineState();
}

class _WeatherTimelineState extends State<WeatherTimeline> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.75,
      child: Theme(
        data: Theme.of(context).copyWith(
          accentColor: const Color(0xFFDB84B1).withOpacity(0.2),
        ),
        child: ListView(
            children: <Widget>[
              TimelineTile(
                alignment: TimelineAlign.manual,
                lineXY: 0.2,
                isFirst: true,
                indicatorStyle: IndicatorStyle(
                  width: 70,
                  height: 70,
                  indicator: _Sun(),
                ),
                beforeLineStyle: LineStyle(color: Colors.white.withOpacity(0.7)),
                endChild: _ContainerHeader(),
              ),
              _buildTimelineTile( context,
                indicator: const _IconIndicator(
                  iconData: WeatherIcons.cloudy,
                  size: 20,
                ),
                hour: '2021',
                weather: 'PIXERA 5.0: Neutrons',
                temperature: 'Main Event',
                phrase:"Nothing is indifferent, nothing is powerless in the universe; an atom might destroy everything, an atom might save everything.\n"
                "Even though, this time we’re going big with our mega Event “PIXERA”."
                "This is when and where we share every knowledge, project, feeling, photo and research with you.\n"
                "Do not miss the opportunity to share a moment with us and to know more about our courses, workshops and news.\n"
                'As Atoms taught us that, every little thing does count, even a single NEUTRON.\n'
              ),
              _buildTimelineTile(context,
                indicator: const _IconIndicator(
                  iconData: WeatherIcons.sunset,
                  size: 20,
                ),
                hour: '2021',
                weather: 'GAP',
                temperature: 'Mini Event',
                phrase: "What we learn and what we know, are we really using this knowledge and technical skills to its full potential?\n"
                'May be it is hard to invest the time to think to make a solution, but it is harder to make a creative and innovative one.\n'
                "By making this great achievement we can really close the gap!",
              ),
              _buildTimelineTile(context,
                indicator: const _IconIndicator(
                  iconData: WeatherIcons.night_alt_rain_mix,
                  size: 20,
                ),
                hour: '2020',
                weather: 'PIXERA 4.0: To infinity & beyond',
                temperature: 'Mega Event',
                phrase: 'The end of a story is a begining of another one. The story starts in 2017 and it will end at infinity. Pixera, let\'s go together to the infinity and beyond' ,
              ),
              _buildTimelineTile(context,
                indicator: const _IconIndicator(
                  iconData: WeatherIcons.snowflake_cold,
                  size: 20,
                ),
                hour: '2020',
                weather: 'Telegraph',
                temperature: 'Mini Event',
                phrase: "Let's go back and learn together to build a better future",
              ),
              _buildTimelineTile( context,
                indicator: const _IconIndicator(
                  iconData: WeatherIcons.snowflake_cold,
                  size: 20,
                ),
                hour: '2019',
                weather: 'PIXERA 3.0: Wall-E is back!',
                temperature: 'Mega Event',
                phrase: "PIXERA Courses event is back. This year we are back with our iconic friend, Wall E",
              ),
              _buildTimelineTile( context,
                indicator: const _IconIndicator(
                  iconData: WeatherIcons.snowflake_cold,
                  size: 20,
                ),
                hour: '2019',
                weather: 'Earth 2035',
                temperature: 'Mini Event',
                phrase: "The world is in ruins...\n"
                  'Humanity on the edge of the yard...\n'
              'Robots are starting to control the world,\n'
                  "We offer no other solution, but we develop ourselves and prepare for war.\n"
              "Ready??",
              ),
              _buildTimelineTile( context,
                indicator: const _IconIndicator(
                  iconData: WeatherIcons.snowflake_cold,
                  size: 20,
                ),
                hour: '2018',
                weather: 'Pixels League',
                temperature: 'Mini Event',
                phrase: "Pixels Courses is back!"

              ),
              _buildTimelineTile( context,
                  indicator: const _IconIndicator(
                    iconData: WeatherIcons.snowflake_cold,
                    size: 20,
                  ),
                  hour: '2017',
                  weather: 'PIXERA 2.0 : Pixels Academy ',
                  temperature: 'Mega Event',
                  phrase: "Pixels Courses is back! jon us to be professional in your track",
              ),
              _buildTimelineTile( context,
                indicator: const _IconIndicator(
                  iconData: WeatherIcons.snowflake_cold,
                  size: 20,
                ),
                hour: '2017',
                weather: 'ArduMake ',
                temperature: 'Mega Event',
                phrase: "There are many applications and fields of engineering.. Your role is not only that you know about each field of information.. Your main role is that you remain distinguished in a particular field that you love, but because this happens, you must gather all the information about this field.\n"
                  "The special person is the one who takes care of the small details and applies it to everything he learns, and most importantly, he knows how to take advantage of these small details in building his own application.\n"
              "That is why the workshops and seminars at the Ardumake camp will not only apply my work, you will know how to link simple things together to make your own project\n",
              ),
              _buildTimelineTile( context,
                indicator: const _IconIndicator(
                  iconData: WeatherIcons.snowflake_cold,
                  size: 20,
                ),
                hour: '2016',
                weather: 'المهندسخانة',
                temperature: 'Mega Event',
                phrase: "Yes, the beginning is important and everything is needed..\n"
                    "And we know very well that no one can build a skyscraper without first learning how to build a precaution.\n"
                    "But the topic is not based on the beginning, and that you learn the fundmentals, and that's it"
                "  But it is more dependent on (what are you going to do with the fundmentals you learned about)"
            "I mean, of course, you must have a good understanding of what you are doing.. but the most important thing is that you know that without your touch.. all of this will favor some laws, theories and dreams.. you are the one who makes them a tangible reality.\n"
            "And as the engineer was the beginning of studying engineering in Egypt, we do not want to stop at the beginning, and we want everyone to have his touch, so that is why in the workshops, we will not only teach you the technical details, but we will let you learn to look at applications on theoretical speech, you will really add to me around"
              ),
              _buildTimelineTile( context,
                indicator: const _IconIndicator(
                  iconData: WeatherIcons.snowflake_cold,
                  size: 20,
                ),
                hour: '2015',
                weather: 'Learn to Make ',
                temperature: 'Mega Event',
                phrase: "(Al-Khwarizmi - Robert Noyce - Ibn al-Haytham - Steve Jobs -.....)\n"
                    "Tmany people were able to leave their mark in the world and be the reason that we decide to walk the path of spreading knowledge so that we leave our mark too..\n"
                    "From here came the idea of ​​learn to make .. and that we are holding workshops in 4 areas to work with our hands, launch projects and run competitions among people so that we transform the way we receive"
                "  Knowledge comes from words that we take and preserve for a tangible product that benefits people.\n",
              ),
              _buildTimelineTile( context,
                indicator: const _IconIndicator(
                  iconData: WeatherIcons.snowflake_cold,
                  size: 20,
                ),
                hour: '2014',
                weather: 'Simply Engineering 2.0 ',
                temperature: 'Mega Event',
                phrase: "With Pixels Engineering is simple",

              ),
              _buildTimelineTile( context,
                  indicator: const _IconIndicator(
                    iconData: WeatherIcons.snowflake_cold,
                    size: 20,
                  ),
                  hour: '2014',
                  weather: 'Simply Engineering 2 ',
                  temperature: 'Mini Event',
                  phrase: "With Pixels Engineering is simple",
                  isLast: true
              ),
            ],
          ),

      ),
    );
  }

  TimelineTile _buildTimelineTile( context , {
    _IconIndicator indicator,
    String hour,
    String weather,
    String temperature,
    String phrase,
    bool isLast = false,
  }) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.2,
      beforeLineStyle: LineStyle(color: Colors.white.withOpacity(0.7)),
      indicatorStyle: IndicatorStyle(
        indicatorXY: 0.3,
        drawGap: true,
        width: 30,
        height: 30,
        indicator: indicator,
      ),
      isLast: isLast,
      startChild: Center(
        child: Container(
          alignment: const Alignment(0.0, -0.50),
          child: Text(
            hour,
            style: GoogleFonts.lato(
              fontSize: 18,
              color: Colors.white.withOpacity(0.6),
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      endChild: Padding(
        padding:
        const EdgeInsets.only(left: 16, right: 10, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              weather,
              style: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              temperature,
              style: GoogleFonts.lato(
                fontSize: 16,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 4),

            BlurFilter(
              sigma: 8,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                  border: Border.all(
                    color: Constants.color2,
                  )
                ),
                child: PostDescription(description: phrase),

              ),
            ),

            // Text(
            //   phrase,
            //   style: GoogleFonts.lato(
            //     fontSize: 14,
            //     color: Colors.white.withOpacity(0.6),
            //     fontWeight: FontWeight.normal,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class _IconIndicator extends StatelessWidget {
  const _IconIndicator({
    Key key,
    this.iconData,
    this.size,
  }) : super(key: key);

  final IconData iconData;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 30,
              width: 30,
              child: Icon(
                iconData,
                size: size,
                color: const Color(0xFF9E3773).withOpacity(0.7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ContainerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 120),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'The Story Starts in 2014',
              style: GoogleFonts.lato(
                fontSize: 18,
                color: const Color(0xFFF4A5CD),
              ),
            ),
            Text(
              'Pixels Academic Events',
              style: GoogleFonts.lato(
                fontSize: 20,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w800,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Text(
                    'and it will end at never',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      color: const Color(0xFFF4A5CD),
                      // fontSize: 14,
                      // color: const Color(0xFF4A448F).withOpacity(0.8),
                      // fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                // const SizedBox(width: 20),
                // Text(
                //   '30°C',
                //   style: GoogleFonts.lato(
                //     fontSize: 14,
                //     color: const Color(0xFF4A448F).withOpacity(0.8),
                //     fontWeight: FontWeight.w800,
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _Sun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color:  Color(0xFF000343),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 25,
            spreadRadius: 20,
          ),
        ],
        shape: BoxShape.circle,
       // color: Colors.white,

      ),
      child:  Image.asset('assets/logo_white.png'),
    );
  }
}
