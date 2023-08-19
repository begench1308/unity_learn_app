class Question {
  late final String text;
  late final List<Option> options;
  late bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;
  const Option({
    required this.text,
    required this.isCorrect,
  });
}

final soraglar = [
  Question(
    text: ' When Unity 3D was created?',
    options: [
      const Option(text: '1998', isCorrect: false),
      const Option(text: '2015', isCorrect: false),
      const Option(text: '2005', isCorrect: true),
      const Option(text: '1975', isCorrect: false),
    ],
  ),
  Question(
    text: ' What language was Unity 3D created in?',
    options: [
      const Option(text: 'C++, C#', isCorrect: true),
      const Option(text: 'C++, Python', isCorrect: false),
      const Option(text: 'Python, Java Script', isCorrect: false),
      const Option(text: 'R, Java', isCorrect: false),
    ],
  ),
  Question(
    text: ' What is Unity?',
    options: [
      const Option(text: 'Web development', isCorrect: false),
      const Option(text: 'Machine learning', isCorrect: false),
      const Option(text: 'Application platform', isCorrect: false),
      const Option(text: 'Game Engine', isCorrect: true),
    ],
  ),
  Question(
    text: ' In which company was Unity created?',
    options: [
      const Option(text: 'Google', isCorrect: false),
      const Option(text: 'Meta', isCorrect: false),
      const Option(text: 'Unity technologies', isCorrect: true),
      const Option(text: 'Microsoft', isCorrect: false),
    ],
  ),
  Question(
    text: ' How many platforms can Unity work on?',
    options: [
      const Option(text: '10', isCorrect: false),
      const Option(text: '25', isCorrect: true),
      const Option(text: '18', isCorrect: false),
      const Option(text: '7', isCorrect: false),
    ],
  ),
  Question(
    text:
        ' What can you use to visually distinguish between Play mode and Design mode in the editor?',
    options: [
      const Option(text: 'The object inspector', isCorrect: false),
      const Option(text: 'Handles', isCorrect: false),
      const Option(text: 'Gizmos', isCorrect: false),
      const Option(text: 'Play mode tint', isCorrect: true),
    ],
  ),
  Question(
    text:
        ' What does this code sample achieve? Float Answer = Random.value * 10f;',
    options: [
      const Option(
          text: 'It selects a random number \nthat is less than 10',
          isCorrect: false),
      const Option(
          text: 'It selects a random number \ngreater than 10',
          isCorrect: false),
      const Option(
          text: 'It selects a random number \nbetween 0 and 10',
          isCorrect: true),
      const Option(
          text: 'It selects a random number \nthat is multiple of 10',
          isCorrect: false),
    ],
  ),
  Question(
    text: ' Orthographic cameras remove which visual effect?',
    options: [
      const Option(text: 'Gamma color space', isCorrect: false),
      const Option(text: 'Depth of field', isCorrect: false),
      const Option(text: 'Foreshortening', isCorrect: true),
      const Option(text: 'Bloom', isCorrect: false),
    ],
  ),
  Question(
    text:
        ' When building assets like meshes for Unity. It is good practice to use which measurement unit?',
    options: [
      const Option(text: 'Cubits', isCorrect: false),
      const Option(text: 'Feet', isCorrect: false),
      const Option(text: 'Inches', isCorrect: false),
      const Option(text: 'Meters', isCorrect: true),
    ],
  ),
  Question(
    text: ' What does the Microphone class save captured audio data as?',
    options: [
      const Option(text: 'An audio clip asset', isCorrect: true),
      const Option(text: 'An MP3 file', isCorrect: false),
      const Option(text: 'A WAV file', isCorrect: false),
      const Option(text: 'An OGG file', isCorrect: false),
    ],
  ),
];
