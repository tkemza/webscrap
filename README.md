
<p align="center">
    <img src="pics/webscrap.png">
</p>


<p align="center">
  <img src="https://img.shields.io/badge/Version-1.0.0-green?style=for-the-badge">
  <img src="https://img.shields.io/github/license/tkemza/webscrap?style=for-the-badge">
  <img src="https://img.shields.io/github/stars/tkemza/webscrap?style=for-the-badge">
  <img src="https://img.shields.io/github/issues/tkemza/webscrap?color=red&style=for-the-badge">
  <img src="https://img.shields.io/github/forks/tkemza/webscrap?color=teal&style=for-the-badge">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Open%20Source-Yes-darkgreen?style=flat-square">
  <img src="https://img.shields.io/badge/Maintained%3F-Yes-lightblue?style=flat-square">
  <img src="https://img.shields.io/badge/Written%20In-Bash-darkcyan?style=flat-square">
  <img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Ftkemza%2Fwebscrap&title=Visitors&edge_flat=false"/></a>
</p>

<p align="center"><b>Web status fast checker.</b></p>

##

<h3><p align="center">Disclaimer</p></h3>

<i>Any actions and or activities related to <b>Webscrap</b> is solely your responsibility. The misuse of this toolkit can result in <b>criminal charges</b> brought against the persons in question. <b>The contributors will not be held responsible</b> in the event any criminal charges be brought against any individuals misusing this toolkit to break the law.

<b>This toolkit contains materials that can be potentially damaging or dangerous for social media</b>. Refer to the laws in your province/country before accessing, using,or in any other way utilizing this in a wrong way.

<b>This Tool is made for educational purposes only</b>. Do not attempt to violate the law with anything contained here. <b>If this is your intention, then Get the hell out of here</b>!

It only demonstrates "how scanning works". <b>You shall not misuse the information to gain unauthorized access to someones social media</b>. However you may try out this at your own risk.</i>


# Webscrap

**Webscrap is an automated tool designed for checking the status of websites and sending notifications via email based on the status. It is meant for educational purposes only, and the creator is not responsible for any consequences caused by this tool.**

-----
# Run Installation

1. Install python3 and pip3:
    ```
    sudo apt install python3
    sudo apt install python3-pip
2. Check if version is valid:
    ```
    python3 --version
    pip3 --version
3. Run `install.py`:
    ```
    python3 install.py
-----
## Table of Contents
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [License](#license)

## Features

| **Feature**              | **Description**                                                |
|--------------------------|----------------------------------------------------------------|
| **Website Status Check** | Monitors HTTP status codes of websites.                        |
| **Email Notifications**  | Sends notifications via email using `sendmail`.                |
| **Colorful Output**      | Displays a dynamic and colorful terminal banner using `lolcat`.|
| **Git Integration**      | Pulls updates from a Git repository.                           |

## Requirements

| Requirement                | Description                                                    | Installation Command                |
|----------------------------|----------------------------------------------------------------|-------------------------------------|
| **Bash**                   | Shell interpreter required for running the script.             | Included by default in most systems.|
| **curl**                   | Command-line tool for transferring data with URLs.             | `sudo apt-get install curl`         |
| **sendmail**               | Utility for sending email from the command line.               | `sudo apt-get install sendmail`     |
| **lolcat**                 | Command-line utility for colorizing text output.               | `gem install lolcat`                |
| **git**                    | Version control system for managing updates.                   | `sudo apt-get install git`          |
| **tput**                   | Utility for terminal control.                                  | Included by default in most systems.|

## Installation

| Step                      | Command or Action                                                  |
|---------------------------|--------------------------------------------------------------------|
| **Clone the Repository**  | `git clone https://github.com/tkemza/webscrap.git`                 |
| **Navigate to Directory** | `cd webscrap`                                                      |
| **Make Executable**       | `chmod +x webscrap.sh`                                             |
| **Install Packages**      | `sudo apt-get update && sudo apt-get install curl sendmail lolcat` |
| **Install lolcat**        | `gem install lolcat`                                               |

-----
## Usage

To use this tool:

1. **Clone the Repository:**
   ```
   git clone https://github.com/tkemza/webscrap.git

3. **Enter directory:**
    ```
    cd webscrap

2. **Run the Script**: Execute the script using:
   ```
   ./webscrap.sh
3. or:
    ```
    chmod +x webscrap.sh
    bash webscrap.sh
-----
## Requirements

- `bash` (version 4.0 or higher)
- `curl`
- `sendmail` (for sending emails)
- `lolcat` (for colorful output in the terminal)
- `git` (for pulling updates)
- `tput` (for terminal color handling)

-----
# Makefile Run

- To run makefile, type:
    ```
    make Makefile

-----
# Docker

- To Run this script on Docker, type:
    ```
    docker build -t webscrap-tool .
    docker run --rm -it webscrap-tool

-----
# GPL License

<p align="center">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnv4QSiGY1-TTWDZIxbcoDjfWOR0FO8XaNk4AkYaPYZyCqZ0nHq9y2TNBLQuKQMsDngq0&usqp=CAU" alt="Project Logo" width="300"/>
    <h1>GPL LICENSE 2024 Tkemza</h1>
</p>



