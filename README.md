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
```
### Typography
An overview of all available typography variables
#### Weight
|Sample|Token|
|:-|:-|
|![thin](https://github.com/user-attachments/assets/cea0d38c-9894-4b09-a19e-e8373009e7b3)|`.notoSans(.thin, 14)`|
|![extraLight](https://github.com/user-attachments/assets/b08d85f3-7831-4813-afe0-79c3ce2760d8)|`.notoSans(.extraLight, 14)`|
|![light](https://github.com/user-attachments/assets/7af4c1f7-8215-46e7-9163-ac9e130bf3bb)|`.notoSans(.light, 14)`|
|![regular](https://github.com/user-attachments/assets/6e31add5-d1d6-4a83-a40c-9544990df1b8)|`.notoSans(.regular, 14)`|
|![medium](https://github.com/user-attachments/assets/470947b1-4079-426b-9c2e-ad83cbfc34d2)|`.notoSans(.medium, 14)`|
|![semiBold](https://github.com/user-attachments/assets/31d3d81d-9e3e-4a8b-98f2-3f0541779434)|`.notoSans(.semiBold, 14)`|
|![bold](https://github.com/user-attachments/assets/93288505-e2f2-4922-9823-b5232a3d1d79)|`.notoSans(.bold, 14)`|
|![extraBold](https://github.com/user-attachments/assets/89270375-01cc-4a3a-8537-df23730b3356)|`.notoSans(.extraBold, 14)`|
|![black](https://github.com/user-attachments/assets/06bbb9ee-0e5f-4b5b-b383-1af412b2f84a)|`.notoSans(.black, 14)`|
#### Font family
|Sample|Token|
|:-|:-|
|![regular](https://github.com/user-attachments/assets/6e31add5-d1d6-4a83-a40c-9544990df1b8)|`.notoSans(.regular, 14)`|
|![regular](https://github.com/user-attachments/assets/5e5bd736-a090-43a7-b759-2f8084992212)|`.inter(.regular, 14)`|
#### Font shorthand
Use the `font` declaration to set all font properties at once (`font-weight`, `font-size`, `line-height`, and `font-family`).
|Sample|Token|
|:-|:-|
|![.Display.xs](https://github.com/user-attachments/assets/db48740d-b7e3-4bff-b5a3-da9840eb4890)|`.Display.xs`|
|![.Display.s](https://github.com/user-attachments/assets/e0d2c526-59d7-4e06-9290-3e34493bc395)|`.Display.s`|
|![.Display.m](https://github.com/user-attachments/assets/fb3a0b2c-1bc4-4546-a4a2-3422c3b94ed6)|`.Display.m`|
|![.Display.l](https://github.com/user-attachments/assets/2d862a2a-d526-4f81-898a-809184f9d0b5)|`.Display.l`|
|![.Display.xl](https://github.com/user-attachments/assets/ec998da8-3925-411b-851b-6f892cc35ce6)|`.Display.xl`|
|![.Heading.xs](https://github.com/user-attachments/assets/b5368edb-1dd2-46bb-bad4-d01e08882c9c)|`.Heading.xs`|
|![.Heading.s](https://github.com/user-attachments/assets/acb9da9e-d4cb-4412-94ca-bb696358c2cf)|`.Heading.s`|
|![.Heading.m](https://github.com/user-attachments/assets/fed4ac4d-3886-4aa2-b7a8-2468f9470655)|`.Heading.m`|
|![.Heading.l](https://github.com/user-attachments/assets/a8a9abe1-ecd0-468a-8664-74acb9bf8b0c)|`.Heading.l`|
|![.Heading.xl](https://github.com/user-attachments/assets/b7314df6-8214-4639-878a-8c3ddc9d6c2a)|`.Heading.xl`|
|![.Paragraph.xs](https://github.com/user-attachments/assets/b624b7a6-b6e4-4cbd-adaa-1888b6548484)|`.Paragraph.xs`|
|![.Paragraph.s](https://github.com/user-attachments/assets/3e0228c0-e755-4786-bb27-9c424993df34)|`.Paragraph.s`|
|![.Paragraph.m](https://github.com/user-attachments/assets/307cc593-0399-4447-aec7-1c48404854bd)|`.Paragraph.m`|
|![.Paragraph.l](https://github.com/user-attachments/assets/e5435b84-b4d3-4517-80ae-bd216cbeb9bf)|`.Paragraph.l`|
|![.Paragraph.xl](https://github.com/user-attachments/assets/c1ed3c7e-4399-4f67-825f-0764df8a95b2)|`.Paragraph.xl`|
|![.Label.xs](https://github.com/user-attachments/assets/f954672b-8f54-49ba-aaed-44fd942c9471)|`.Label.xs`|
|![.Label.s](https://github.com/user-attachments/assets/01ab3079-98d1-4298-a5e5-840edb4aaedc)|`.Label.s`|
|![.Label.m](https://github.com/user-attachments/assets/957f8dce-c306-4056-b2fc-d20cc630a35c)|`.Label.m`|
|![.Label.l](https://github.com/user-attachments/assets/26f2cf61-3ff3-4c9a-a8e0-a695f83f685d)|`.Label.l`|
|![.Label.xl](https://github.com/user-attachments/assets/8e26a4c4-3eb1-4470-9772-248e243546d0)|`.Label.xl`|
### Components

### Conclusion
This Design System package is a personal initiative to streamline the implementation of design systems in new projects. By using this package, you can ensure consistency, reduce design debt, and speed up the development process with a well-documented and reusable set of design assets.
