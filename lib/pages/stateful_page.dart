import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({super.key});

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  int happiness = 0;

  void beriMakan() {
    setState(() {
      happiness += 1;
    });
  }

  void ajakMain() {
    setState(() {
      happiness += 2;
    });
  }

  void resetHappiness() {
    setState(() {
      happiness = 0;
    });
  }

  String getStatusPet() {
    if (happiness == 0) {
      return 'Mochi sedang menunggu dirawat.';
    } else if (happiness <= 5) {
      return 'Mochi mulai senang!';
    } else if (happiness <= 10) {
      return 'Mochi sangat bahagia!';
    } else {
      return 'Mochi super happy!';
    }
  }

  IconData getStatusIcon() {
    if (happiness == 0) {
      return Icons.sentiment_neutral;
    } else if (happiness <= 5) {
      return Icons.sentiment_satisfied;
    } else {
      return Icons.sentiment_very_satisfied;
    }
  }

  Widget actionButton({
    required String text,
    required IconData icon,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7EEFF),
      appBar: AppBar(
        title: const Text('Happiness Counter'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFB388FF), Color(0xFFFF80AB)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purpleAccent.withOpacity(0.25),
                      blurRadius: 14,
                      offset: const Offset(0, 7),
                    ),
                  ],
                ),
                child: const Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.pets,
                        size: 60,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    SizedBox(height: 14),
                    Text(
                      'Rawat Mochi',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Tekan tombol untuk meningkatkan level kebahagiaan pet.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 26),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purpleAccent.withOpacity(0.13),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Icon(getStatusIcon(), size: 60, color: Colors.purpleAccent),

                    const SizedBox(height: 14),

                    const Text(
                      'Level Kebahagiaan',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 16),

                    Container(
                      width: 135,
                      height: 135,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFFF3E5F5),
                        border: Border.all(
                          color: Colors.purpleAccent,
                          width: 4,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '$happiness',
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.purpleAccent,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    Text(
                      getStatusPet(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                      ),
                    ),

                    const SizedBox(height: 24),

                    Row(
                      children: [
                        Expanded(
                          child: actionButton(
                            text: 'Beri Makan',
                            icon: Icons.restaurant,
                            color: Colors.pinkAccent,
                            onPressed: beriMakan,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: actionButton(
                            text: 'Ajak Main',
                            icon: Icons.sports_esports,
                            color: Colors.purpleAccent,
                            onPressed: ajakMain,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.purpleAccent,
                          side: const BorderSide(
                            color: Colors.purpleAccent,
                            width: 1.5,
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: resetHappiness,
                        icon: const Icon(Icons.refresh),
                        label: const Text('Reset Happiness'),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 22),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Kembali ke Halaman Utama'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
