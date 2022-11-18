import 'package:fitness_app/widgets/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.blueAccent,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.1, 0.4, 0.7, 0.9],
        colors: [
          Colors.black,
          Colors.black,
          Colors.black,
          Colors.black,
        ],
      ),
    ),
    child: Padding(
    padding: const EdgeInsets.symmetric(
    vertical: 40.0,
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    Container(
    alignment: Alignment.centerRight,
    child: TextButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => HomeScreen()));
    },
    child: const Text(
    'Skip',
    style: TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    ),
    ),
    ),
    ),
    Container(
    height: 400.0,
    child: PageView(
    physics: const ClampingScrollPhysics(),
    controller: _pageController,
    onPageChanged: (int page) {
    setState(() {
    _currentPage = page;
    });
    },
    children: <Widget>[
    Padding(
    padding: const EdgeInsets.all(40.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
    Center(
    child: Image(
    image: NetworkImage(
    ''
    ),
    height: 200,
    width: 200,
    ),
    ),
    SizedBox(height: 30.0),
    Align(
    alignment: Alignment.center,
    child: Text('Pick',
    style: TextStyle(
    color: Colors.white70,
    fontSize: 25,
    fontWeight: FontWeight.bold)),
    ),
    SizedBox(height: 15.0),
    Align(
    alignment: Alignment.center,
    child: Text(
    'Lets start by choosing your exercise. There is a lot of variety that you can choose. Pick the one that fits you. ',
    style: TextStyle(color: Colors.white70)),
    ),
    ],
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(40.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
    Center(
    child: Image(
    image: NetworkImage(
    'https://i.pinimg.com/564x/0b/66/6e/0b666efaa44fe94d0adeefdc2bf13aa5.jpg',
    ),
    height: 300.0,
    width: 300.0,
    ),
    ),
    SizedBox(height: 30.0),
    Align(
    alignment: Alignment.center,
    child: Text('Breed',
    style: TextStyle(
    color: Colors.white70,
    fontSize: 25,
    fontWeight: FontWeight.bold)),
    ),
    SizedBox(height: 15.0),
    Align(
    alignment: Alignment.center,
    child: Text(
    'Start multiplying the fish, maybe your money will multiply as well ',
    style: TextStyle(color: Colors.white70)),
    ),
    ],
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(40.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
    Center(
    child: Image(
    image: AssetImage(
    'lib/assets/fishTrad-PhotoRoom.png',
    ),
    height: 300.0,
    width: 300.0,
    ),
    ),
    SizedBox(height: 30.0),
      Align(
        alignment: Alignment.center,
        child: Text('Trade',
            style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
      ),
      SizedBox(height: 15.0),
      Align(
        alignment: Alignment.center,
        child: Text(
          'Have a lot of fish but have only one variety of it? \nStart trading and collect all the types u want',
          style: TextStyle(color: Colors.white70),
        ),
      ),
    ],
    ),
    ),
    ],
    ),
    ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildPageIndicator(),
      ),
      _currentPage != _numPages - 1
          ? Expanded(
        child: Align(
          alignment: FractionalOffset.bottomRight,
          child: TextButton(
            onPressed: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Text(
                  'Slide to continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                ),

              ],
            ),
          ),
        ),
      )
          : Text(''),
    ],
    ),
    ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
        height: 100.0,
        width: double.infinity,
        color: Colors.black,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 40, 40),
            child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>HomeScreen()));
                },
                label: Text(
                  'Dive in',
                  style:
                  TextStyle(color: Colors.tealAccent, fontSize: 20),
                ),
                icon: Icon(
                  Icons.login,
                )),
          ),
        ),
      )
          : Text(''),
    );
  }
}