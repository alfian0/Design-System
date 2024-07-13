# Podcast App Design System

![Thumbail](https://github.com/user-attachments/assets/12f36749-1bf1-43c8-8159-c6f50824c509)

## Overview
The Design System package is a personal project designed to implement a comprehensive design system for new projects. This package aims to provide a consistent and reusable set of design elements and resources, such as color tokens, typography, and component styles, to ensure uniformity across different projects. It leverages Swift Package Manager (SPM) to manage and distribute these design assets efficiently.

## Resource
The design system includes Figma files that contain design guidelines, component specifications, and visual references. These resources help ensure that the implementation aligns with the design standards set in Figma. Access these files in the [Figma](https://www.figma.com/design/j0PwGxdUIKlcIUUiXhIaQa/Podcast-App-(Community)?node-id=0-1&t=6xsADA7oKhdCpdq0-0)

## Features
- [x] Color Tokens: Centralized color definitions for consistent use across the application.
- [ ] Typography: Predefined text styles for headings, body text, captions, and more.
- [ ] Components: Standardized UI components like buttons, labels, and views.
- [ ] Asset Management: Easy inclusion and access to design assets like images and color sets.

## Usage
### Integration
To integrate the Design System package into your project, add the following dependency to your project :
```
https://github.com/alfian0/Design-System.git
```
### Foundation
An overview of all available color variables
#### Foreground
|Sample|Variable|Token|
|:-|:-|:-|
|$${\color{#242327}Aa}$$|fg_default|`.foregroundDefault`|
|$${\color{#343434}Aa}$$|fg_disabled|`.foregroundDisabled`|
|$${\color{#F9F7F5}Aa}$$|fg_emphasis|`.foregroundEmphasis`|
|$${\color{#A7A6A5}Aa}$$|fg_muted|`.foregroundMuted`|
|$${\color{#806DFB}Aa}$$|accent_emphasis|`.foregroundLink`|
|$${\color{#806DFB}Aa}$$|accent_emphasis|`.foregroundAccent`|
|$${\color{#FF8E75}Aa}$$|danger_emphasis|`.foregroundDanger`|
|$${\color{#CEEDFF}Aa}$$|info_emphasis|`.foregroundInfo`|
|$${\color{#6DFBA6}Aa}$$|success_emphasis|`.foregroundSuccess`|
|$${\color{#FFEF9B}Aa}$$|warning_emphasis|`.foregroundWarning`|
#### Background
|Sample|Variable|Token|
|:-|:-|:-|
|![#F9F7F5](https://via.placeholder.com/15/F9F7F5/000000?text=+)|bg_default|`.backgroundDefault`|
|![#242327](https://via.placeholder.com/15/242327/000000?text=+)|bg_emphasis|`.backgroundEmphasis`|
|![#F2EFED](https://via.placeholder.com/15/F2EFED/000000?text=+)|bg_muted|`.backgroundMuted`|
|![#806DFB](https://via.placeholder.com/15/806DFB/000000?text=+)|accent_emphasis|`.backgrounddAccentEmphasis`|
|![#EBE8FF](https://via.placeholder.com/15/EBE8FF/000000?text=+)|accent_muted|`.backgroundAccentMuted`|
|![#FF8E75](https://via.placeholder.com/15/FF8E75/000000?text=+)|danger_emphasis|`.backgroundDangerEmphasis`|
|![#FFAD9B](https://via.placeholder.com/15/FFAD9B/000000?text=+)|danger_muted|`.backgroundDangerMuted`|
|![#CEEDFF](https://via.placeholder.com/15/CEEDFF/000000?text=+)|info_emphasis|`.backgroundInfoEmphasis`|
|![#CEEDFF](https://via.placeholder.com/15/CEEDFF/000000?text=+)|info_muted|`.backgroundInfoMuted`|
|![#6DFBA6](https://via.placeholder.com/15/6DFBA6/000000?text=+)|success_emphasis|`.backgroundSuccessEmphasis`|
|![#B8FFCE](https://via.placeholder.com/15/B8FFCE/000000?text=+)|success_muted|`.backgroundSuccessMuted`|
|![#FFEF9B](https://via.placeholder.com/15/FFEF9B/000000?text=+)|warning_emphasis|`.backgroundWarningEmphasis`|
|![#FFEF9B](https://via.placeholder.com/15/FFEF9B/000000?text=+)|warning_muted|`.backgroundWarningMuted`|
#### Border
|Sample|Variable|Token|
|:-|:-|:-|
|![#242327](https://via.placeholder.com/15/242327/000000?text=+)|fg_default|`.boderDefault`|
|![#806DFB](https://via.placeholder.com/15/806DFB/000000?text=+)|accent_emphasis|`.boderEmphasis`|
|![#343434](https://via.placeholder.com/15/343434/000000?text=+)|fg_disabled|`.boderDisabled`|
### Accessing Colors
```
Text("Listen to the best \n Podcast")
  .multilineTextAlignment(.center)
  .foregroundColor(.foregroundDefault)
  .titleStyle()
```
### Using Typography

### Components

### Conclusion
This Design System package is a personal initiative to streamline the implementation of design systems in new projects. By using this package, you can ensure consistency, reduce design debt, and speed up the development process with a well-documented and reusable set of design assets.
