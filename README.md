pianoroll
=========

Terminal Piano Visualizer written in Bash

Usage
-----

`pianoroll` reads event data on stdin in the form of:

```
<state> <num>\n
```

Where state is the string "on" or "off" and num is number between 0-87
(signifying the key on the piano affected).

For example:

```
$ (printf 'on 42\n'; sleep 5) | ./pianoroll
```

But this program really shines when given a continuous stream of events.  For
example, using the [ReceiveMIDI](https://github.com/gbevin/ReceiveMIDI) program
and the provider parser you can get a stream of live midi events for a plugged
in keyboard:

```
$ receivemidi dev <device> note nn | ./parsers/receivemidi.awk | ./pianoroll
```

YouTube
-------

Watch me build this live on YouTube.

<a href="https://youtu.be/n5QgmIy7zFU"><img
alt="Bash Pianoroll Video"
src="https://i.ytimg.com/vi/n5QgmIy7zFU/maxresdefault.jpg"
/></a>

License
-------

MIT License
