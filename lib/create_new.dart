import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/models/quiz_questions.dart';
import 'package:adv_basics/quiz.dart';
import 'package:flutter/material.dart';

class AddQues extends StatefulWidget {
  const AddQues({super.key});

  @override
  State<AddQues> createState() => _AddQuesState();
}

class _AddQuesState extends State<AddQues> {
  TextEditingController ques = TextEditingController();
  TextEditingController ans_a = TextEditingController();
  TextEditingController ans_b = TextEditingController();
  TextEditingController ans_c = TextEditingController();
  TextEditingController ans_d = TextEditingController();
  @override
  Widget build(BuildContext context) {
    void _showInfoMessage(String messageConveyed) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(messageConveyed),
        ),
      );
    }

    // void _toggleAdditionStatus(Food food) {
    //   final isPresent = _favouriteFoods.contains(food);
    //   if (isPresent) {
    //     setState(() {
    //       _favouriteFoods.remove(food);
    //     });
    //     _showInfoMessage('Meal removed from favorites');
    //   } else {
    //     setState(() {
    //       _favouriteFoods.add(food);
    //       _showInfoMessage('Meal added in favorites');
    //     });
    //   }
    // }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 62, 77),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 185, 206, 215),
              Color.fromARGB(255, 24, 62, 77),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 140,
              ),
              const SizedBox(
                height: 70,
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: ques,
                decoration: const InputDecoration(
                  hintText: "Enter Question here",
                  labelText: "Question",
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: ans_a,
                decoration: const InputDecoration(
                  hintText: "Enter option (the answer)",
                  labelText: "Option",
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: ans_b,
                decoration: const InputDecoration(
                  hintText: "Enter option",
                  labelText: "Option",
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: ans_c,
                decoration: const InputDecoration(
                  hintText: "Enter option",
                  labelText: "Option",
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: ans_d,
                decoration: const InputDecoration(
                  hintText: "Enter option",
                  focusColor: Color.fromARGB(255, 255, 255, 255),
                  labelText: "Option",
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 24, 45, 61)),
                child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  questions.add(
                    QuizQuestion(ques.text,
                        [ans_a.text, ans_b.text, ans_c.text, ans_d.text]),
                  );
                  _showInfoMessage('Question added.');
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Quiz(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 225.0),
            ],
          ),
        ),
      ),
    );
  }
}
