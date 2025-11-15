🧮 Flutter Stylish Calculator
A beautiful and modern calculator built with Flutter featuring a sleek UI with shadows, smooth animations, and intuitive operation handling using the math_expressions package.

https://via.placeholder.com/300x600/6C63FF/FFFFFF?text=Stylish+Calculator

✨ Features
🎨 Stylish UI: Modern design with shadows and gradients

⚡ Smooth Animations: Beautiful button press animations

🔢 Smart Operations: Uses + character to identify and evaluate operations

📱 Responsive Design: Works perfectly on all screen sizes

🎯 Easy to Use: Intuitive interface with clear visual feedback

🚀 Getting Started
Prerequisites
Flutter SDK (version 3.0 or higher)

Dart (version 2.17 or higher)

Installation
Clone the repository

bash
git clone https://github.com/yourusername/flutter-calculator.git
cd flutter-calculator
Install dependencies

bash
flutter pub get
Run the app

bash
flutter run
📦 Dependencies
This project uses the following package:

math_expressions ^2.4.0 - For parsing and evaluating mathematical expressions

Add this to your pubspec.yaml:

yaml
dependencies:
  flutter:
    sdk: flutter
  math_expressions: ^2.4.0
🎮 How to Use
Basic Operations: Tap numbers and operators to build your expression

Clear: Press C to clear the current input

Calculate: Press = to evaluate the expression

Delete: Press ⌫ to delete the last character

Supported Operations
Addition (+)

Subtraction (-)

Multiplication (*)

Division (/)

Parentheses () for complex expressions

🏗️ Project Structure
text
lib/
├── main.dart                 # App entry point
├── calculator_app.dart       # Main app widget
├── calculator_screen.dart    # Calculator screen UI
├── calculator_logic.dart     # Business logic and calculations
└── widgets/
    ├── calculator_button.dart # Custom button widget
    └── display_widget.dart   # Display screen widget
🔧 Key Components
Calculator Logic
The app uses the math_expressions package to parse and evaluate mathematical expressions:

dart
double calculate(String expression) {
  try {
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    return exp.evaluate(EvaluationType.REAL, cm);
  } catch (e) {
    throw Exception('Invalid expression');
  }
}
Stylish Button Widget
Custom animated buttons with shadows:

dart
class CalculatorButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;

  const CalculatorButton({
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.all(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
🎨 Customization
You can easily customize the app by modifying:

Colors: Update the color scheme in calculator_screen.dart

Shadows: Adjust shadow properties in CalculatorButton

Animations: Modify animation durations and curves

Layout: Change button sizes and spacing

📸 Screenshots
Light Mode	Dark Mode	Calculation
https://via.placeholder.com/200x400/FFFFFF/000000?text=Light+Mode	https://via.placeholder.com/200x400/2D2D2D/FFFFFF?text=Dark+Mode	https://via.placeholder.com/200x400/6C63FF/FFFFFF?text=Calculation
🤝 Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

Fork the project

Create your feature branch (git checkout -b feature/AmazingFeature)

Commit your changes (git commit -m 'Add some AmazingFeature')

Push to the branch (git push origin feature/AmazingFeature)

Open a Pull Request

📝 License
This project is licensed under the MIT License - see the LICENSE file for details.

🙏 Acknowledgments
Flutter team for the amazing framework

math_expressions package authors

Inspiration from modern calculator designs

<div align="center">
Made with ❤️ using Flutter

</div>
