import 'package:find_job/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    initialization();
    super.initState();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: Color(0xffBCB1B1), width: 2),
            ),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _selectedIndex,
            selectedItemColor: kSecondaryColor,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 40,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    size: 40,
                  ),
                  label: ""),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Container(
          padding:
              const EdgeInsets.only(top: 17, right: 20, left: 20, bottom: 12),
          decoration:
              BoxDecoration(border: Border.all(color: const Color(0xffBCB1B1))),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 25,
                decoration: BoxDecoration(
                    color: const Color(0xffD1D8EB),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search_outlined),
                          prefixIconColor: Color(0xff868A96),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('10 jobs found'),
                  Icon(
                    Icons.filter_list,
                    size: 20,
                    color: Colors.black,
                  )
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Ink(
            color: const Color(0xffE7EBF4),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  width: 350,
                  height: 150,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                '${kImagePath}job.png',
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Senior Flutter Developer',
                                style: theme.textTheme.headlineSmall,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Starbucks',
                                style: theme.textTheme.displaySmall,
                              ),
                              Text(
                                'Iran , Tehran',
                                style: theme.textTheme.displaySmall,
                              ),
                              Text(
                                '1000 USD',
                                style: theme.textTheme.displaySmall!
                                    .copyWith(color: Colors.green),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                '5 min ago',
                                style: theme.textTheme.displaySmall,
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.bookmark_border_outlined,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          child: Text(
            "My Profile",
            style: theme.textTheme.headlineMedium,
          ),
        ),
        Expanded(
          child: Container(
            color: const Color(0xffE7EBF4),
            padding: const EdgeInsets.all(15),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  width: 340,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 5,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset('${kImagePath}profile.jpg',
                                    width: 77),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Alireza Shokouhian",
                              style: theme.textTheme.headlineMedium,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Flutter Developer",
                              style: theme.textTheme.labelSmall!.copyWith(
                                  color: const Color.fromRGBO(0, 0, 0, 0.7),
                                  fontSize: 10),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              "alirezashokouhian79@gmail.com | +989172638641",
                              style: theme.textTheme.labelSmall!.copyWith(
                                  color: const Color.fromRGBO(0, 0, 0, 0.7),
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        right: 13,
                        child: Icon(
                          Icons.edit,
                          color: Colors.blue,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: 340,
                  height: 250,
                  margin: const EdgeInsets.symmetric(vertical: 13),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.work,
                                size: 35,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Work Experience",
                                style: theme.textTheme.headlineMedium!
                                    .copyWith(color: Colors.blue),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 20,
                          )
                        ],
                      ),
                      const Divider(
                        color: Color(
                          0xff868A96,
                        ),
                        thickness: 3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Senior Flutter Developer",
                        style: theme.textTheme.headlineMedium,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Starbucks",
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "June 2019 - December 2022",
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in nisl dolor. Donec convallis quam a dignissim pulvinar. Nullam rhoncus elit a nisi elementum, sed luctus tortor porta. Etiam ac pellentesque lorem. ",
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(vertical: 13),
                  width: 340,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.school_outlined,
                                size: 35,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Education",
                                style: theme.textTheme.headlineMedium!
                                    .copyWith(color: Colors.blue),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 20,
                          )
                        ],
                      ),
                      const Divider(
                        color: Color(
                          0xff868A96,
                        ),
                        thickness: 3,
                      ),
                      Text(
                        "Computer Engineering",
                        style: theme.textTheme.headlineMedium,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Payam Noor University",
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "October 2018 - October 2023",
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(vertical: 13),
                  width: 340,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.school_outlined,
                                size: 35,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Ability",
                                style: theme.textTheme.headlineMedium!
                                    .copyWith(color: Colors.blue),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 20,
                          )
                        ],
                      ),
                      const Divider(
                        color: Color(
                          0xff868A96,
                        ),
                        thickness: 3,
                      ),
                      Text(
                        "Computer Engineering",
                        style: theme.textTheme.headlineMedium,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Payam Noor University",
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "October 2018 - October 2023",
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
