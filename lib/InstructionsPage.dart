import 'package:flutter/material.dart';

class InstructionsPage extends StatefulWidget {
  const InstructionsPage({super.key, required this.theme});
  final ThemeData theme;

  @override
  InstructionsPageState createState() => InstructionsPageState(theme: theme);
}

class InstructionsPageState extends State<InstructionsPage>{
  InstructionsPageState({required this.theme});
  final ThemeData theme;

  final SizedBox vSpace = const SizedBox(height: 10);
  final PageController fKnotPageController = PageController();
  final PageController bKnotPageController = PageController();
  final PageController fbKnotPageController = PageController();
  final PageController bfKnotPageController = PageController();
  int fKnotActivePage = 0;
  int bKnotActivePage = 0;
  int fbKnotActivePage = 0;
  int bfKnotActivePage = 0;

  final List<Map<String, dynamic>> fKnotPages = [
    {
      'description': '1. Create a \'4\' by placing your working string over your interior string.',
      'image': 'assets/forward1.jpeg',
      'image2': 'none'
    },
    {
      'description': '2. Pull the end of the working string under and through the hole in the \'4\' and tighten.',
      'image': 'assets/forward2.jpeg',
      'image2': 'assets/forward3.jpeg'
    },
    {
      'description': '3. Repeat steps 1 and 2 once more. The final knot should look something like this!',
      'image': 'assets/forward4.jpeg',
      'image2': 'none'
    }
  ];
  final List<Map<String, dynamic>> bKnotPages = [
    {
      'description': '1. Create a backwards \'4\' by placing your working string over your interior string.',
      'image': 'assets/backward1.jpeg',
      'image2': 'none'
    },
    {
      'description': '2. Pull the end of the working string under and through the hole in the \'4\' and tighten.',
      'image': 'assets/backward2.jpeg',
      'image2': 'assets/backward3.jpeg'
    },
    {
      'description': '3. Repeat steps 1 and 2 once more. The final knot should look something like this!',
      'image': 'assets/backward4.jpeg',
      'image2': 'none'
    }
  ];
  final List<Map<String, dynamic>> fbKnotPages = [
    {
      'description': '1. Create a \'4\' by placing your working string over your interior string.',
      'image': 'assets/forward1.jpeg',
      'image2': 'none'
    },
    {
      'description': '2. Pull the end of the working string under and through the hole in the \'4\' and tighten.',
      'image': 'assets/forward2.jpeg',
      'image2': 'assets/forward3.jpeg'
    },
    {
      'description': '3. Create a backwards \'4\' by placing your working string over your interior string.',
      'image': 'assets/forward-backward1.jpeg',
      'image2': 'none'
    },
    {
      'description': '4. Pull the end of the working string under and through the hole in the \'4\' and tighten. Your forward-backward knot is complete!',
      'image': 'assets/forward-backward2.jpeg',
      'image2': 'assets/forward-backward3.jpeg'
    }
  ];
  final List<Map<String, dynamic>> bfKnotPages = [
    {
      'description': '1. Create a backwards \'4\' by placing your working string over your interior string.',
      'image': 'assets/backward1.jpeg',
      'image2': 'none'
    },
    {
      'description': '2. Pull the end of the working string under and through the hole in the \'4\' and tighten.',
      'image': 'assets/backward2.jpeg',
      'image2': 'assets/backward3.jpeg'
    },
    {
      'description': '3. Create a \'4\' by placing your working string over your interior string.',
      'image': 'assets/backward-forward1.jpeg',
      'image2': 'none'
    },
    {
      'description': '4. Pull the end of the working string under and through the hole in the \'4\' and tighten. Your backward-forward knot is complete!',
      'image': 'assets/backward-forward2.jpeg',
      'image2': 'assets/backward-forward3.jpeg'
    }
  ];

  Column subtitleText(text, {startingSpace = true}){
    if (startingSpace) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            vSpace,
            Text(text, style: theme.textTheme.titleMedium),
            vSpace,
          ]
      );
    } else {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(text, style: theme.textTheme.titleMedium),
            vSpace,
          ]
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Card (
                child: ExpansionTile(
                  title: Text(
                      'How to Create a Friendship Bracelet',
                      style: theme.textTheme.headlineSmall
                  ),
                  children: <Widget>[
                    ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            subtitleText("1. Gather Your Materials", startingSpace: false),
                            Text(" • Embroidery floss or string", style: theme.textTheme.bodyLarge),
                            Text(" • Scissors", style: theme.textTheme.bodyLarge),
                            Text(" • Tape or a clipboard (for holding the string in place!)", style: theme.textTheme.bodyLarge),
                            subtitleText("2. Pick Your Pattern"),
                            Text("A pattern will allow you to determine how many different strings you need, how many different colours will be in your bracelet, and what knots to tie in order to create your bracelet.", style: theme.textTheme.bodyLarge),
                            subtitleText("3. Setting Up Your Bracelet"),
                            Text("Cut the number of strings you need. Ideal string length will be the distance from your shoulder to the end of your outstretched arm. Tie the ends of your strings together with a simple knot. Secure the tied strings to a stable surface.", style: theme.textTheme.bodyLarge),
                            subtitleText("4. Creating Your Bracelet"),
                            Text("Follow your chosen pattern to create your bracelet. Repeat the pattern until you reach a length that you're happy with.", style: theme.textTheme.bodyLarge),
                            subtitleText("5. Finishing Your Bracelet"),
                            Text("Tie off your bracelet with a simple knot and cut off the extra string. Congratulations! You've successfully made a friendship bracelet :)", style: theme.textTheme.bodyLarge),
                            vSpace
                          ],
                        )
                    ),
                  ],
                )
              ),
              Card (
                  child: ExpansionTile(
                    title: Text(
                        'Types of Knots',
                        style: theme.textTheme.headlineSmall
                    ),
                    children: <Widget>[
                      ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              subtitleText("Forward Knot", startingSpace: false),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 440,
                                child: PageView.builder(
                                    controller: fKnotPageController,
                                    itemCount: fKnotPages.length,
                                    onPageChanged: (page) {
                                      setState(() {
                                        fKnotActivePage = page;
                                      });
                                    },
                                    itemBuilder: (BuildContext context, int index){
                                      return InstructionWidget(
                                          theme: theme,
                                          description: fKnotPages[index]['description'],
                                          image: fKnotPages[index]['image'],
                                          image2: fKnotPages[index]['image2']
                                      );
                                    }
                                ),
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: indicators(fKnotPages.length, fKnotActivePage)
                              ),
                              subtitleText("Backward Knot"),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 440,
                                child: PageView.builder(
                                    controller: bKnotPageController,
                                    itemCount: bKnotPages.length,
                                    onPageChanged: (page) {
                                      setState(() {
                                        bKnotActivePage = page;
                                      });
                                    },
                                    itemBuilder: (BuildContext context, int index){
                                      return InstructionWidget(
                                          theme: theme,
                                          description: bKnotPages[index]['description'],
                                          image: bKnotPages[index]['image'],
                                          image2: bKnotPages[index]['image2']
                                      );
                                    }
                                ),
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: indicators(bKnotPages.length, bKnotActivePage)
                              ),
                              subtitleText("Forward-Backward Knot"),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 440,
                                child: PageView.builder(
                                    controller: fbKnotPageController,
                                    itemCount: fbKnotPages.length,
                                    onPageChanged: (page) {
                                      setState(() {
                                        fbKnotActivePage = page;
                                      });
                                    },
                                    itemBuilder: (BuildContext context, int index){
                                      return InstructionWidget(
                                          theme: theme,
                                          description: fbKnotPages[index]['description'],
                                          image: fbKnotPages[index]['image'],
                                          image2: fbKnotPages[index]['image2']
                                      );
                                    }
                                ),
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: indicators(fbKnotPages.length, fbKnotActivePage)
                              ),
                              subtitleText("Backward-Forward Knot"),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 440,
                                child: PageView.builder(
                                    controller: bfKnotPageController,
                                    itemCount: bfKnotPages.length,
                                    onPageChanged: (page) {
                                      setState(() {
                                        bfKnotActivePage = page;
                                      });
                                    },
                                    itemBuilder: (BuildContext context, int index){
                                      return InstructionWidget(
                                          theme: theme,
                                          description: bfKnotPages[index]['description'],
                                          image: bfKnotPages[index]['image'],
                                          image2: bfKnotPages[index]['image2']
                                      );
                                    }
                                ),
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: indicators(bfKnotPages.length, bfKnotActivePage)
                              ),
                            ],
                          )
                      ),
                    ],
                  )
              ),
              Card (
                  child: ExpansionTile(
                    title: Text(
                        'How to Read Bracelet Patterns',
                        style: theme.textTheme.headlineSmall
                    ),
                    children: <Widget>[
                      ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("A pattern will look something like this:", style: theme.textTheme.bodyLarge),
                              vSpace,
                              Container(
                                width: double.infinity,
                                child: Image.asset("assets/pattern-example.png", fit: BoxFit.fitWidth),
                              ),
                              vSpace,
                              Text("The circles represent each knot. The arrows present on each knot represent what type of knot it is.", style: theme.textTheme.bodyLarge),
                              Row(
                                children: [
                                  RotatedBox(
                                    quarterTurns: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.south_east,
                                        color: Colors.black,
                                      ),
                                      onPressed: null,
                                    ),
                                  ),
                                  Flexible(child: Text("This arrow indicates a forward knot.")),
                                ],
                              ),
                              Row(
                                children: [
                                  RotatedBox(
                                    quarterTurns: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.south_west,
                                        color: Colors.black,
                                      ),
                                      onPressed: null,
                                    ),
                                  ),
                                  Flexible(child: Text("This arrow indicates a backward knot.")),
                                ],
                              ),
                              Row(
                                children: [
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.call_missed,
                                        color: Colors.black,
                                      ),
                                      onPressed: null,
                                    ),
                                  ),
                                  Flexible(child: Text("This arrow indicates a forward-backward knot.")),
                                ],
                              ),
                              Row(
                                children: [
                                  RotatedBox(
                                    quarterTurns: 1,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.call_missed_outgoing,
                                        color: Colors.black,
                                      ),
                                      onPressed: null,
                                    ),
                                  ),
                                  Flexible(child: Text("This arrow indicates a backward-forward knot.")),
                                  ],
                                )
                            ],
                          )
                      ),
                    ],
                  )
              ),
            ]
        )
    );
  }
}

class InstructionWidget extends StatelessWidget {
  const InstructionWidget({super.key, required this.theme, required this.description, required this.image, this.image2="none"});
  final ThemeData theme;
  final String description;
  final String image;
  final String image2;

  Widget getImageWidget() {
    if (image2 == "none") {
      return Container(
        width: double.infinity,
        child: Image.asset(image, fit: BoxFit.fitWidth),
      );
    } else {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Image.asset(image, scale: 5), const SizedBox(height: 10),
          Image.asset(image2, scale: 5),
          ],
        ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(description, style: theme.textTheme.bodyLarge),
        const SizedBox(height: 10),
        getImageWidget()
      ],
    );
  }
}

List<Widget> indicators(numPages, currentIndex) {
  return List<Widget>.generate(numPages, (index) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 10,
      height: 15,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}
