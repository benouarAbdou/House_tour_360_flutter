# House Tour 360 - README

## Overview

**House Tour 360** is a simple Flutter application that provides an immersive 360-degree virtual tour of different rooms within a house. The application allows users to interact with the panoramic images, explore different rooms, and navigate using hotspots. This project is built using the Flutter framework, leveraging the `panorama_viewer` package for rendering 360-degree panoramic views.

## Features

- **360-Degree Panoramic View**: Users can view panoramic images that provide a fully immersive experience.
- **Interactive Hotspots**: Navigate between different rooms using hotspots embedded within the panoramic images.
- **Sensor Control**: The application uses device orientation sensors to allow users to look around in the panoramic view by tilting their device.

## Project Structure

The project consists of the following main components:

1. **`main.dart`**: The entry point of the Flutter application.
2. **`MyApp` Class**: A stateless widget that sets up the overall theme and title of the application.
3. **`MyHomePage` Class**: A stateful widget that manages the current state of the panorama view and handles user interactions.
4. **`_MyHomePageState` Class**: The state class that contains the core logic for managing the panoramic views, hotspots, and navigation.

## Usage

Once the application is running, you can interact with the 360-degree panoramic views:

- **Navigating Between Rooms**: Tap on the hotspots (indicated by icons) to move between different rooms.
- **Exploring Panoramas**: Use touch gestures to rotate the view around the panorama, or tilt your device if sensor control is enabled.

## Code Explanation

### `MyApp` Class

This is the main entry point of the application. It sets up the material app with a dark theme and initializes the home screen with `MyHomePage`.

### `MyHomePage` Class

- **`_panoId`**: An integer that keeps track of the current panorama being displayed.
- **`panoImages`**: A list of images representing different rooms or scenes in the house.

### `hotspotButton` Method

This method returns a widget that represents an interactive hotspot within the panorama. Users can click these hotspots to navigate between different views.

### `PanoramaViewer` Widget

This widget is provided by the `panorama_viewer` package and is used to render the 360-degree panoramic images. It includes options like `animSpeed` for animation speed, and `sensorControl` to enable or disable sensor-based interaction.

### `Hotspot` Widget

The `Hotspot` widget is used to define interactive points within the panorama. It takes parameters like latitude, longitude, size, and a widget (like a button) that gets displayed as a hotspot.

## Assets

The application requires 360-degree panoramic images placed in the `assets` directory. You can replace the sample images with your own to customize the experience.

## Customization

- **Adding More Rooms**: To add more rooms, simply add more images to the `panoImages` list and define corresponding hotspots.
- **Changing Animations**: Modify the `animSpeed` property to adjust how quickly the panorama rotates.
- **Styling**: You can modify the look and feel of the application by adjusting the styles in the `hotspotButton` method and other parts of the UI.

## Dependencies

This project relies on the following Flutter package:

- [`panorama_viewer`](https://pub.dev/packages/panorama_viewer): A Flutter package for rendering panoramic views with interactive hotspots.

## Future Enhancements

- **Additional Hotspot Actions**: Implement more complex actions like opening information pop-ups or triggering specific events when hotspots are clicked.
- **Multi-Floor Navigation**: Add support for navigating between different floors or sections of the house.
- **Customization Options**: Provide an in-app settings menu to allow users to customize their viewing experience.

## Contributing

Contributions are welcome! Feel free to submit issues, fork the repository, and open pull requests to add new features or fix bugs.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

---

Enjoy exploring the House Tour 360! If you encounter any issues or have suggestions for improvements, please feel free to reach out.
