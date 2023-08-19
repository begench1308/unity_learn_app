import 'package:flutter/material.dart';

class LearUn extends StatefulWidget {
  const LearUn({super.key});

  @override
  State<LearUn> createState() => _LearUnState();
}

class _LearUnState extends State<LearUn> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 100;
    double width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 11, 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                Divider(
                  color: Colors.black54,
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'images/cuphead.jpg',
                              height: 260,
                              width: width * 100,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Cuphead',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                            Text(
                              '    Cuphead took the world by storm upon release in 2017. It’s hard to '
                              'innovate with a 2D sidescrolling arcade shooter, but the development '
                              'team had an ace up their sleeve: the entire game is done with hand-drawn '
                              'animation. Evoking the golden era of cartoons from the mid-20th century, '
                              'it’s beautiful to see in motion. And fortunately, it’s just as fun to play '
                              'as it is to watch. While Unity can sometimes be faulted for its haphazard 2D '
                              'support, Cuphead is proof that a determined team can make something magical.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                wordSpacing: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'images/subn.jpg',
                              height: 230,
                              width: width * 100,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Subnautica',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                            Text(
                              '    Is there a Let’s Play-er or Streamer who hasn’t '
                              'played Subnautica? The ubiquitous underwater survival '
                              'game was once plastered across the net. Even today, there’s '
                              'still a dedicated following of players and content creators '
                              'sharing their stories. Build an aquatic base and explore the '
                              'depths in your very own submarine. Just don’t let the Leviathans '
                              'catch you down there in the dark. The sequel (subtitled “Below Zero”) '
                              'delivers even more “hunt or be hunted” goodness. And the Unity '
                              'engine brings stellar visuals to the underwater scenes to really sell the experience.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                wordSpacing: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'images/city.jpg',
                              height: 250,
                              width: width * 100,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Cities: Skylines',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                letterSpacing: 1.5,
                              ),
                            ),
                            Text(
                              '    Let’s face it: city building fans had a rough go after the '
                              'release of SimCity 4. There simply wasn’t another game ready to '
                              'take up the mantle. Years passed, and then Colossal Order put '
                              'Unity to work, spawning a city builder with next-gen graphics and deep systems.\n'
                              '    Building a city has never looked so good, and managing the '
                              'infrastructure of your city adds enough complexity to keep you planning. '
                              'With plenty of content updates and expansions in the years since its release, '
                              'Cities: Skylines continues to dazzle aspiring mayors with the greatest city '
                              'simulation since Maxis closed its doors.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                wordSpacing: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'images/rust.jpg',
                              height: 250,
                              width: width * 100,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Rust',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                            Text(
                              '    After the wild success of Garry’s Mod, developer '
                              'Facepunch Studios set out to distinguish themselves as '
                              'more than just crazy sandbox tool creators. The result was '
                              'the Unity-powered Rust—one of the most intense and gripping '
                              'multiplayer experiences of the era. It was one of the first '
                              'major multiplayer survival games, and it set the standard that '
                              'others like Ark: Survival Evolved continue to learn and build from. '
                              'Rust starts players from scratch in a post-apocalyptic wasteland. '
                              'You can clan up with other players, build bases, and scavenge your '
                              'way to some semblance of civilization. But at any moment, a raiding '
                              'party of better-equipped players could sweep it all away. Our recommendation? '
                              'Sleep with something sharp beneath your pillow.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                wordSpacing: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'images/rain.jpg',
                              height: 175,
                              width: width * 100,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Risk of rain 2',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                            Text(
                              '    The sequel to the wildly popular roguelike, Risk of Rain 2 '
                              'takes things to the next level by adding the third dimension. '
                              'It’s currently in early access, but you’d be hard-pressed to '
                              'tell by playing it. Loot your way through procedurally populated '
                              'maps as you kill everything that moves on your way to defeating '
                              'the boss creatures guarding the portal. It sounds simple, but no '
                              'two playthroughs turn out quite the same.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                wordSpacing: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'images/valley.jpg',
                              width: width * 100,
                              height: 220,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Monument valley',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                letterSpacing: 1.5,
                              ),
                            ),
                            Text(
                              '    Critical acclaim and rave reviews made Monument Valley '
                              'one of the biggest mobile games of its time. And if you '
                              'didn’t know better, you’d be hard-pressed to guess that '
                              'Unity is the engine driving it. The innovative gameplay '
                              'loop, involving manipulating Escher-style impossible architecture '
                              'to reach the exit, is still charming and fun today. And if you '
                              'really like the calming, cerebral gameplay, there’s a sequel for '
                              'more hours of mind-bending puzzles.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                wordSpacing: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'images/tarkov.jpg',
                              width: width * 100,
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Escape from Tarkov',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                            Text(
                              '    Despite still being in closed beta, Escape from Tarkov has '
                              'taken the Twitch world by storm. It blends elements from the '
                              'survival, battle royale, and role-playing genres to create an '
                              'entirely unique experience. You’ll stumble into massive gunfights '
                              'as you sneak and shoot your way across Tarkov. Trade with NPCs, '
                              'loot a backpack full of goodies, and make your final stand at an '
                              'extraction point with a friend or two. It’s an innovative shooter '
                              'that proves large-scale multiplayer is possible with Unity, and then some. ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                wordSpacing: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
