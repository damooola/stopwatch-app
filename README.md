# Stopwatch App with Flutter

This README provides an overview of a simple stopwatch app built using Flutter. The app displays the elapsed time in a static text format and allows users to pause, play, and reset the stopwatch.

## Features

- **Elapsed Time Display**: The app shows the elapsed time in the format "MM:SS" (minutes and seconds).

- **Play/Pause Button**: Users can start or pause the stopwatch using the play/pause button.

- **Reset Button**: The reset button allows users to reset the stopwatch to zero.

## Getting Started

1. **Prerequisites**:
   - Make sure you have Flutter installed. If not, follow the [official installation guide](https://flutter.dev/docs/get-started/install).

2. **Clone the Repository**:
   - Clone this repository to your local machine.

3. **Navigate to the Project Directory**:
   - Open a terminal and navigate to the project directory.

4. **Run the App**:
   - Connect a physical device or start an emulator.
   - Run the app using the following command:

     ```
     flutter run
     ```

5. **Usage**:
   - The app will open with the elapsed time displayed in the center.
   - Tap the play/pause button to start or pause the stopwatch.
   - Tap the reset button to reset the stopwatch to zero.

## Project Structure

- `lib/`
  - `main.dart`: Entry point for the app.
  - `stop_watch_page.dart`: Contains the stopwatch UI and logic.
  - `stop_watch_provider.dart`: The provider used to update the elapsed time.

## Limitations

- The stopwatch does not update dynamically (e.g., counting every second) on the screen. It only displays the elapsed time when paused or reset. I will update this project once I learn to use animations.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

---

Thank you for checking out this simple stopwatch app! If you have any questions or need further assistance, feel free to reach out. Happy coding! 🚀✨
