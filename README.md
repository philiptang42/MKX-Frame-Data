# Mortal Frames

[ ![Codeship Status for philiptang42/MKX-Frame-Data](https://codeship.com/projects/64facdc0-42b3-0133-774d-0a794f3732af/status?branch=master)](https://codeship.com/projects/103824) [![Code Climate](https://codeclimate.com/github/philiptang42/MKX-Frame-Data/badges/gpa.svg)](https://codeclimate.com/github/philiptang42/MKX-Frame-Data) [![Coverage Status](https://coveralls.io/repos/philiptang42/MKX-Frame-Data/badge.svg?branch=master&service=github)](https://coveralls.io/github/philiptang42/MKX-Frame-Data?branch=master)

### Description

An app that lists the Special Moves of the 25 original characters in Mortal Kombat X. Each move is accompanied by a high quality video demonstration and accurate Frame Data detailing the particular move's properties. Commenting functionality allows players to debate the merits of certain moves and learn from each other.

Storyboarding:
https://trello.com/b/4HVhLn2p/mkx-breakable-toy

Entity Relations:
https://www.draw.io/#G0B4_KnRSm93SoUU1EcHpEYnJ1MkE

### Challenges Faced
* Using JavaScript to allow a button to reveal the Comment submission form without the page refreshing.
* Developing a voting system from scratch that utilizes JavaScript and AJAX to dynamically update score.
* Using AJAX to submit the Comment form's contents and dynamically generate a new Comment panel on the page without refreshing.
* Reducing Asset Pipeline clutter by uploading 130+ video files, each several megabytes large, to the Amazon S3 Cloud.
* Using Yield commands to dynamically render Character show page background images using CSS.
