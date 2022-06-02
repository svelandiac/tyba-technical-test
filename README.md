# Technical test for Tyba - Santiago Velandia

This project was created with Flutter version 2.10.5, and it should be executed from this
version.

## How to install and test
1. Clone the repo.
2. In console do "flutter pub get".
3. Connect a device or emulator, and run.

## Requirements

- Register page: Completed.
- Login page: Completed.
- Place search: Completed using Google Maps API, it looks is on "Test mode", so searches could be inaccurate.
- Logout: Completed.
- History: No completed, when you make a search, the search is successfully saved into database, but I didn't finish the history page so you can't see the saved records.

The projects uses:
- Dependency injection (Could be useful if we want to mock some services).
- GetX as State Management (was used because time needs).
- A MVC pattern: 1. Presentation, 2. Controller (business logic) and 3. Repositories (Access Data).