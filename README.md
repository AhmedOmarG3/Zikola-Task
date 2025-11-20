
![Screenshot 2025-11-20 055926](https://github.com/user-attachments/assets/8a8aea58-d45f-458c-a25c-b0e7e3e086a5)

CustomBackground Widget - Flutter

Problem

In modern app designs, backgrounds are often more than just a solid color. They may include decorative shapes (circles, patterns, etc.) to enhance the visual appeal.
The challenge was to create a reusable background widget that allows any child widget to be placed on top, while also providing control over color and opacity of the decorative circles.

Solution

The CustomBackground widget was implemented using:

Container: Covers the full screen using ScreenUtil for responsiveness.

Stack + Positioned: Places decorative circles at specific positions.

BackgroundCircle widget: A separate widget for each circle to simplify reusability.

Child parameter: Allows any main content widget to be placed on top of the background.

Color & Opacity parameters: Provides easy customization for different screens.


Example Usage

CustomBackground(
  color: Colors.white,
  opacity: 0.05,
  child: YourScreenWidget(),
)

How It Works

1. Container covers the full screen width and height.


2. Stack allows multiple layers, with Positioned used to place each circle.


3. BackgroundCircle defines individual circle sizes and opacity.


4. The child widget is rendered on top of the background, making it flexible for any screen content.



Features

Reusable: Can be applied to any screen.

Flexible: Easily change color and opacity.

Responsive: Supports different screen sizes using flutter_screenutil.

Clean & Organized: Background design is separated from main content for maintainability.
