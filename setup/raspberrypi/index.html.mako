<%inherit file="/_templates/markdown.mako" />
${'''

Raspberry Pi
============

## Getting Started

* [Raspberry Pi Introduction](Raspberry-Pi-Introduction.html)
* [Raspberry Pi Getting Started](Raspberry-Pi-Getting-Started.html)
* [Raspberry Pi Contributing Code](Raspberry-Pi-Contributing-Code.html)
* [Raspberry Pi Developer Notes](Raspberry-Pi-Developer-Notes.html)
* [Raspberry Pi Roadmap](Raspberry-Pi-Roadmap.html)
* [Raspberry Pi Participants](Raspberry-Pi-Participants.html)
* [Raspberry Pi Projects](Raspberry-Pi-Projects.html)
* [Raspberry Pi Troubleshooting](Raspberry-Pi-Troubleshooting.html)
* [Raspberry Pi Tricks and Tips](Raspberry-Pi-Tricks-And-Tips.html)

## Examples

Compiling all examples can be done with the following scripts:

For normal compiling run, 
* `scripts/linux/buildAllRPIExamples.sh`

For `distcc` based compiling:
* Use the same script as above and make sure your `MAKEFLAGS` are set for distcc (see the  [Raspberry Pi Cross-compiling Guide](Raspberry-Pi-Cross-compiling-guide.html)).

## Arduino
* Works with `ofSerial` and `ofArduino`.  Follow the normal instructions.

## GPIO pins
* [Raspberry Pi Using the GPIO pins with WiringPi and openFrameworks Guide](Raspberry-Pi-Using-the-GPIO-pins-with-Wiring-Pi-and-openFrameworks.html)

## Advanced

* [Raspberry Pi Cross-compiling Guide](Raspberry-Pi-Cross-compiling-guide.html)

### openFrameworks + Raspberry Pi = <3

'''}
