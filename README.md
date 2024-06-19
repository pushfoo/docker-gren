# docker-gren

[Gren]: https://gren-lang.org/
[docker-overview]: https://docs.docker.com/guides/docker-overview/
TL;DR: [Gren][Gren] in a [Docker][docker-overview] container.

## What's Gren?

[Elm]: https://elm-lang.org/

**TL;DR:** [Gren] is [Elm][Elm] but better[^1]

[soulslike-gameplay]: https://en.wikipedia.org/wiki/Soulslike#Gameplay

Like [Elm][Elm], it's a [Dark Souls][soulslike-gameplay] of functional programming:

* The compiler is strict
* The compiler is fair
* Beating it creates reliable software

Unlike [Elm][Elm], you can use it for more than frontend development:

* File handling
* Terminal support in multiple flavors:

  * [ANSI sequences](https://packages.gren-lang.org/package/blaix/gren-ansi/version/1.0.0/overview) are ready now
  * A [TUI Library](https://github.com/blaix/gren-tui/tree/main) is coming soon


## What's this for?

[oldstable]: https://wiki.debian.org/DebianOldStable
[Node.js]: https://nodejs.org/en

**TL;DR:** When you can't run Gren's binary builds or [Node.js][Node.js]

In addition to reproducible build environments, [Docker][docker-overview] and
other container tools can help you run software on systems where a compatible
system-native format isn't available. This includes:

* Debian's [OldStable][oldstable]
* Systems where permissions restrict you to containerized options


[^1]: "Better" for my needs, but yours may differ.

