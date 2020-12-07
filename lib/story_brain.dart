import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;
  List<Story> _storyData = [
    Story(
        a: 'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        b: 'I\'ll hop in. Thanks for the help!',
        c: 'Better ask him if he\'s a murderer first.'),
    Story(
        a: 'He nods slowly, unphased by the question.',
        b: 'At least he\'s honest. I\'ll climb in.',
        c: 'Wait, I know how to change a tire.'),
    Story(
        a: 'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        b: 'I love Elton John! Hand him the cassette tape.',
        c: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        a: 'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        b: 'Restart',
        c: ''),
    Story(
        a: 'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        b: 'Restart',
        c: ''),
    Story(
        a: 'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        b: 'Restart',
        c: ''),
  ];
  void nextStory(int choiceNumber) {
    if (_storyNumber == 0) {
      if (choiceNumber == 1) {
        _storyNumber = 2;
      } else {
        _storyNumber = 1;
      }
    } else if (_storyNumber == 1) {
      if (choiceNumber == 1) {
        _storyNumber = 2;
      } else {
        _storyNumber = 3;
      }
    } else if (_storyNumber == 2) {
      if (choiceNumber == 1) {
        _storyNumber = 5;
      } else {
        _storyNumber = 4;
      }
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      reset();
    }
  }

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _storyNumber = 0;
  }
}
