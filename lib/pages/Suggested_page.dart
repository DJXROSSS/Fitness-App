import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(home: WorkoutPage(), debugShowCheckedModeBanner: false),
  );
}

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  final List<String> days = const [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  final Map<String, List<Map<String, dynamic>>> workoutData = const {
    'Monday': [
      {
        'name': 'Bench Press',
        'image': 'assets/SuggestedWorkout_images/bench.gif',
        'reps': '× 15',
      },
      {
        'name': 'Inclined Bench Press',
        'image': 'assets/SuggestedWorkout_images/inclined.gif',
        'reps': '× 15',
      },
      {
        'name': 'Declined Bench Press',
        'image': 'assets/SuggestedWorkout_images/declined.gif',
        'reps': '× 15',
      },
      {
        'name': 'Shoulder Press',
        'image': 'assets/SuggestedWorkout_images/shoulder.gif',
        'reps': '× 15',
      },
      {
        'name': 'Side Raises',
        'image': 'assets/SuggestedWorkout_images/sideraises.gif',
        'reps': '× 15',
      },
      {
        'name': 'Front Raises',
        'image': 'assets/SuggestedWorkout_images/frontrases.gif',
        'reps': '× 15',
      },
    ],
    'Tuesday': [
      {
        'name': 'Lat Pull Down',
        'image': 'assets/SuggestedWorkout_images/img_2.png',
        'reps': '× 15',
      },
      {
        'name': 'Cable Push Down',
        'image': 'assets/SuggestedWorkout_images/back.gif',
        'reps': '× 15',
      },
      {
        'name': 'Deadlifts',
        'image': 'assets/SuggestedWorkout_images/declined.gif',
        'reps': '× 15',
      },
      {
        'name': 'Rear Delt Fly',
        'image': 'assets/SuggestedWorkout_images/shoulder.gif',
        'reps': '× 15',
      },
    ],
    'Wednesday': [
      {
        'name': 'Bicep Curls',
        'image': 'assets/SuggestedWorkout_images/bench.gif',
        'reps': '× 15',
      },
      {
        'name': 'Hammer Curls',
        'image': 'assets/SuggestedWorkout_images/inclined.gif',
        'reps': '× 15',
      },
      {
        'name': 'Tricep Extensions',
        'image': 'assets/SuggestedWorkout_images/declined.gif',
        'reps': '× 15',
      },
      {
        'name': 'Skull Crushers',
        'image': 'assets/SuggestedWorkout_images/shoulder.gif',
        'reps': '× 15',
      },
    ],
    'Thursday': [
      {
        'name': 'Squats',
        'image': 'assets/SuggestedWorkout_images/bench.gif',
        'reps': '× 15',
      },
      {
        'name': 'Lunges',
        'image': 'assets/SuggestedWorkout_images/inclined.gif',
        'reps': '× 15',
      },
      {
        'name': 'Leg Press',
        'image': 'assets/SuggestedWorkout_images/declined.gif',
        'reps': '× 15',
      },
      {
        'name': 'Calf Raises',
        'image': 'assets/SuggestedWorkout_images/shoulder.gif',
        'reps': '× 15',
      },
    ],
    'Friday': [
      {
        'name': 'Push-ups',
        'image': 'assets/SuggestedWorkout_images/bench.gif',
        'reps': '× 15',
      },
      {
        'name': 'Pull-ups',
        'image': 'assets/SuggestedWorkout_images/inclined.gif',
        'reps': '× 15',
      },
      {
        'name': 'Dips',
        'image': 'assets/SuggestedWorkout_images/declined.gif',
        'reps': '× 15',
      },
      {
        'name': 'Planks',
        'image': 'assets/SuggestedWorkout_images/shoulder.gif',
        'reps': '× 15',
      },
    ],
    'Saturday': [
      {
        'name': 'Mountain Climbers',
        'image': 'assets/SuggestedWorkout_images/bench.gif',
        'reps': '× 15',
      },
      {
        'name': 'Jumping Jacks',
        'image': 'assets/SuggestedWorkout_images/inclined.gif',
        'reps': '× 15',
      },
      {
        'name': 'Burpees',
        'image': 'assets/SuggestedWorkout_images/declined.gif',
        'reps': '× 15',
      },
      {
        'name': 'High Knees',
        'image': 'assets/SuggestedWorkout_images/shoulder.gif',
        'reps': '× 15',
      },
    ],
    'Sunday': [
      {
        'name': 'Yoga Stretch',
        'image': 'assets/SuggestedWorkout_images/bench.gif',
        'reps': '× 15',
      },
      {
        'name': 'Breathing',
        'image': 'assets/SuggestedWorkout_images/inclined.gif',
        'reps': '× 15',
      },
      {
        'name': 'Foam Rolling',
        'image': 'assets/SuggestedWorkout_images/declined.gif',
        'reps': '× 15',
      },
      {
        'name': 'Walking',
        'image': 'assets/SuggestedWorkout_images/shoulder.gif',
        'reps': '× 15',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '💪 Weekly Workout Plan',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                  itemCount: days.length,
                  itemBuilder: (context, index) {
                    final day = days[index];
                    final exercises = workoutData[day] ?? [];

                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ExpansionTile(
                        tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                        childrenPadding: const EdgeInsets.all(16),
                        title: Text(
                          day,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        children: [
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 12,
                                  mainAxisSpacing: 12,
                                  childAspectRatio: 0.8,
                                ),
                            itemCount: exercises.length,
                            itemBuilder: (context, exIndex) {
                              final exercise = exercises[exIndex];
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.15),
                                      blurRadius: 6,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      exercise['name'],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        exercise['image'],
                                        height: 90,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      exercise['reps'],
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
