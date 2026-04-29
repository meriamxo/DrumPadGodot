# DrumPadGodot

## Overview
Drum Pad is an interactive music project built in Godot.  
It allows the user to trigger drum sounds through both on-screen buttons and keyboard input, while also changing the sound using volume and pitch controls. The project combines sound, interaction, visual feedback, and a simple random beat generator to create a playful digital drum instrument.

## Features
- Four interactive drum pads:
  - Kick
  - Snare
  - Hi-Hat
  - Clap
- Keyboard controls using **Q, W, E, R**
- Bright pink flash effect when a pad is triggered
- **Volume slider** to control the loudness of all sounds
- **Pitch slider** to change the pitch of all sounds
- **Random Beat** button that generates a short random drum sequence
- Pink themed interface design

## Controls
### Mouse Controls
- Click the on-screen drum pads to play sounds
- Click the **Random Beat** button to generate a random rhythm
- Move the **Volume** slider to increase or decrease loudness
- Move the **Pitch** slider to raise or lower sound pitch

### Keyboard Controls
- **Q** = Kick
- **W** = Snare
- **E** = Hi-Hat
- **R** = Clap

## How It Works
The project uses Godot nodes and GDScript to connect user input with sound playback.  
Each drum pad is linked to an audio player, and when the user presses a button or keyboard key, the matching sound is played. A bright pink flash effect gives visual feedback for each trigger. The sliders update the sound properties in real time, and the Random Beat button uses simple logic to generate a short beat pattern automatically.

## Technologies Used
- **Godot Engine**
- **GDScript**
- **GitHub** for version control

## Project Structure
- `scenes/main.tscn` - main scene for the project
- `scripts/main.gd` - main project logic
- `audio/` - drum sound files
- `README.md` - project documentation

## How to Run
1. Open the project in Godot
2. Open `scenes/main.tscn`
3. Run the project
4. Use the drum pads, keyboard controls, sliders, and Random Beat button

## Development Notes
This project was designed as a digital musical instrument / sound interaction piece.  
The aim was to create something simple, playful, and interactive while still including multiple control methods, visual feedback, and a generated rhythm feature.

## Demo Video
https://youtu.be/_74ohH982Ow

## Author
Meriam Alubaidi
