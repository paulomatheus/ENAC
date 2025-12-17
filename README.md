# ENAC - Technical Documentation

## Overview

ENAC is an iOS mobile application developed for the Encontro Nacional de Atividades Complementares (National Meeting of Complementary Activities), an event organized by Crea Jr. The app was published on the App Store as "ENAC - CreaJR" and serves as a comprehensive event companion for attendees.

## Project Information

- **Platform**: iOS
- **Language**: Swift 4.2
- **IDE**: Xcode 10.3
- **Minimum iOS Version**: 9.3
- **Development Year**: 2018
- **Bundle Identifier**: com.paulomatheus.ENAC
- **App Store**: Published as "ENAC - CreaJR"

## Features

The application provides the following key features for event attendees:

### 1. Event Schedule
- **Two-day schedule management**: Complete programming for both days of the event
- **Activity details**: View comprehensive information about each activity including:
  - Activity name and type (Palestra, Workshop, Coffee Break, etc.)
  - Start and end times
  - Speakers and organizing groups
  - Additional information and descriptions
- **Interactive schedule**: Tap on any activity to view detailed information

### 2. Campus Maps
- **Interactive campus map**: Navigate the Inatel campus where the event takes place
- **Building locations**: Interactive buttons to highlight specific buildings (Prédio 1-5)
- **Location services**: Integration with iOS location services to help attendees find their way
- **Apple Maps integration**: Support for directions using Apple Maps

### 3. Sponsors & Partners
- **Visual showcase**: Collection view displaying all event sponsors and partners
- **Partner logos**: High-quality images of supporting organizations including:
  - Crea, Confea, Mútua, Inatel
  - Fenemi, Prefeitura, Qualicorp, Terras
  - Hello Group, Conexão, Vivavox, Prointec
  - And many more

## Architecture

The application follows the **Model-View-Controller (MVC)** design pattern, standard for iOS applications:

### Directory Structure

```
teste04/
├── Controllers/           # View Controllers and app logic
│   ├── AppDelegate.swift
│   ├── ViewController.swift
│   ├── ScheduleViewController.swift
│   ├── InfoScheduleViewController.swift
│   ├── MapsViewController.swift
│   ├── CompleteMapsViewController.swift
│   ├── CollectionViewCell.swift
│   ├── ScheduleTableViewCell.swift
│   └── DataStore.swift
├── Models/               # Data models
│   ├── DayOne.swift
│   ├── DayTwo.swift
│   ├── LocationsMaps.swift
│   └── Partners.swift
├── Views/                # Storyboards and UI
│   ├── Base.lproj/
│   └── en.lproj/
├── Files/                # JSON data files
│   ├── firstDay.json
│   ├── secondDay.json
│   └── patrocinadores.json
├── Assets.xcassets/      # Images and assets
└── Info.plist            # App configuration
```

### Key Components

#### Models
- **DayOne & DayTwo**: Codable structs that parse event schedule data from JSON files
  - Properties: name, completeName, type, startTime, finishedTime, group, speaker, info, day
- **LocationsMaps**: Manages campus location data
- **Partners**: Handles sponsor/partner information

#### Controllers
- **AppDelegate**: App lifecycle management and appearance customization
- **ViewController**: Main sponsor showcase using UICollectionView
- **ScheduleViewController**: Event schedule display using UITableView
- **InfoScheduleViewController**: Detailed activity information screen
- **MapsViewController**: Interactive campus map with building navigation
- **CompleteMapsViewController**: Detailed map view with Apple Maps integration

#### Data Flow
1. JSON files are loaded from the app bundle
2. Data is decoded using Swift's Codable protocol (JSONDecoder)
3. Parsed data populates table views and collection views
4. User interactions trigger segues to detail views with passed data

## Technical Specifications

### Dependencies & Frameworks
- **UIKit**: Core iOS UI framework
- **MapKit**: For campus maps and location services
- **Foundation**: Core Swift/Objective-C functionality

### Data Format
Event data is stored in JSON format with the following structure:

```json
{
  "name": "Activity Name",
  "completeName": "Full Activity Name",
  "type": "Palestra/Workshop/Coffee Break/etc",
  "startTime": "HH:mm",
  "finishedTime": "HH:mm",
  "group": "Organizing Group",
  "speaker": "Speaker Name",
  "info": "Additional information",
  "day": "DIA 1 or DIA 2"
}
```

### Permissions
- **Location Services**: Required for map functionality
  - Usage description: "É necessário sua localização para poder se localizar durante o evento"
  - (Translation: "Your location is needed to help you navigate during the event")

### Supported Features
- **Apple Maps Directions**: Bus, Car, and Pedestrian modes
- **Device Orientation**: Portrait only (iPhone), all orientations (iPad)
- **Document Browser**: Enabled for file handling

## Setup Instructions

### Prerequisites
- macOS with Xcode 10.3 or later
- iOS device or simulator running iOS 9.3+
- Apple Developer account (for device testing/deployment)

### Installation Steps

1. **Clone the repository**:
   ```bash
   git clone https://github.com/paulomatheus/ENAC.git
   cd ENAC
   ```

2. **Open the project**:
   ```bash
   open teste04.xcodeproj
   ```

3. **Configure signing**:
   - Select the project in Xcode navigator
   - Go to "Signing & Capabilities" tab
   - Select your development team
   - Xcode will automatically manage provisioning profiles

4. **Build the project**:
   - Select a target device or simulator
   - Press `Cmd + B` to build
   - Or press `Cmd + R` to build and run

### Development Environment Setup

1. **Xcode Configuration**:
   - Ensure Xcode 10.3 or compatible version is installed
   - Swift 4.2 should be automatically configured

2. **Simulator Testing**:
   - Use iPhone simulator for best experience (portrait only)
   - Location services can be simulated in Xcode

3. **Device Testing**:
   - Connect iOS device via USB
   - Trust computer on device
   - Run from Xcode

## Building & Running

### Debug Build
```bash
# Using xcodebuild (command line)
xcodebuild -project teste04.xcodeproj -scheme teste04 -configuration Debug
```

### Release Build
```bash
# Using xcodebuild (command line)
xcodebuild -project teste04.xcodeproj -scheme teste04 -configuration Release
```

### Running Tests
Currently, the project does not include unit tests. Future improvements could include:
- Unit tests for data models
- UI tests for navigation flows
- JSON parsing tests

## Deployment

### App Store Submission
The app has been successfully published to the App Store as "ENAC - CreaJR". For future updates:

1. **Prepare for submission**:
   - Update version number in Info.plist
   - Create release build
   - Archive the application (Product > Archive)

2. **Submit through App Store Connect**:
   - Upload archive using Xcode Organizer
   - Fill in app metadata and screenshots
   - Submit for review

3. **Required assets**:
   - App icon (all required sizes)
   - Launch screen
   - App Store screenshots
   - Privacy policy (if collecting user data)

## Code Style & Conventions

- Swift naming conventions followed
- Comments in Portuguese (original development language)
- IBOutlets and IBActions clearly labeled
- JSON property names use camelCase
- View controllers follow standard iOS naming patterns

## Event Information

The app showcases a comprehensive two-day event including:

**Day 1 Highlights**:
- Registration and campus tours
- Opening ceremony
- Keynote presentations (IBM, Huawei)
- Design Thinking workshop
- Pitch rounds with Anjos do Brasil
- LEGO Serious Play session
- Evening cocktail party

**Day 2 Highlights**:
- People management sessions (Ericsson)
- Leadership workshops
- Event experience panel (Hacktown, Bloco do Urso)
- Social media creative processes workshop (Hello Group)
- Success case studies
- Leadership presentations (Conexão Eagle)
- Closing cocktail party

## Contributing

This is a historical project from 2018. For any contributions or questions, please contact the repository owner.

## Author

**Paulo Matheus**
- GitHub: [@paulomatheus](https://github.com/paulomatheus)
- Copyright © 2018 Paulo Matheus

## License

All rights reserved. This project was developed for Crea Jr event purposes.

## Acknowledgments

- **Event Organizer**: Crea Jr (Junior Engineering Council)
- **Venue**: Inatel (National Institute of Telecommunications)
- **Partners**: Confea, Mútua, and numerous other sponsors
- **Target Audience**: Engineering students and professionals interested in complementary educational activities
