# Keynote Countdown Timer Script

## Overview
This AppleScript creates countdown timer in Keynote using a user-specified duration and a styled base slide.

## Prerequisites
- An open Keynote document with a single base slide.

## Usage
1. **Style the Base Slide:** Ensure the base slide contains a single text field as the timer placeholder.
2. **Execute the Script:** Run the AppleScript.
3. **Input Duration:** Provide the countdown duration in seconds.
4. **Generate and Export:** After slide creation, export the presentation as a movie, setting each slide to last one second.

## Example
Providing `60` as input will generate 61 slides, counting down from `01:00` to `00:00`.

## Note
To avoid unintended duplications, the base slide should only contain the timer placeholder - a text field set with your preferred font style.
