# docker-gren

[![License](https://img.shields.io/badge/License-BSD_3-Clause.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://makeapullrequest.com)

[Gren]: https://gren-lang.org/
[docker-overview]: https://docs.docker.com/guides/docker-overview/

The Gren programming language in a docker container!


To learn about the Gren programming language, see [What's Gren?](#whats-gren) below.

## The Basics

### What is this?

Current features include:

- [x] Full [Gren][] in a [Docker][docker-overview] container
- [ ] Beginner-friendly documentation
  - [ ] Persistent state & volumes
  - [ ] Ports & networks
- [ ] Advanced usage guide


### How do I use it?

[docker-postinstall]: https://docs.docker.com/engine/install/linux-postinstall/
[gren-learn]: https://gren-lang.org/book/

1. Install [Docker][docker-overview]
2. `docker run -it pushfoo/gren gren repl` to get a throwaway REPL
3. [Start learning Gren!](gren-learn)

> [!TIP]
> On Linux, you may also need to do one of the following:
> 1. Use `sudo` before your `docker` commands
> 2. Follow the [post-install steps][docker-postinstall] to enable sudoless `docker` commands


### Why did you make it?

[13r0ck]: https://github.com/13r0ck

**TL;DR:** [13r0ck][] hooked me on Elm's syntax and Gren frees it from frontend

[13r0ck][] has a rare combination of technical, communication, and community
engagement skills. He suggested I try [Elm][] as an antidote to the Python flaws
which continue to crush my hopes now and then. I only used [Elm][] briefly, but it
was enough to upend my views on programming languages in the best ways.

**Brief & shameless promotion: Hire [13r0ck][] if you get the chance!**

### Who is this for?

[Node.js]: https://nodejs.org/en
[Haskell]: https://www.haskell.org/
[dep-issues]: https://en.wikipedia.org/wiki/Dependency_hell

**TL;DR:** Anyone who wants consistent [Gren][] environments in a box!

It isn't just beginners who have a hard time with getting the right
[Node.js][] and [Haskell][] versions. It can be surprisingly hard, even
with knowledge and experience!

These situations can include:

* Systems with permission or dependency issues
* Large-scale web deployments[^1]


## What's Gren?

[Elm]: https://elm-lang.org/

**TL;DR:** Gren is Elm's younger, more adventurous sibling


### How's it like Elm?

[soulslike-gameplay]: https://en.wikipedia.org/wiki/Soulslike#Gameplay

**TL;DR:** They're both a [Dark Souls][soulslike-gameplay] of functional programming

Instead of end-of-level bosses, you fight the compiler:

* **It's strict:** unhandled conditions are compile errors
* **It's fair:** the errors tell you how to fix your mistakes
* **It's rewarding:** beating it produces reliable software

### How's Gren different from Elm?

[Roadmap FAQ]: https://github.com/elm/projects/blob/0d0f52abb320d1370aa7b6abc7e1007ba4c524ab/roadmap.md
[See Elm's Roadmap FAQ]: https://github.com/elm/projects/blob/0d0f52abb320d1370aa7b6abc7e1007ba4c524ab/roadmap.md#can-i-use-elm-on-servers
[Unlike Elm]: https://github.com/elm/projects/blob/0d0f52abb320d1370aa7b6abc7e1007ba4c524ab/notes/on-general-purpose.md
[domain-specific language]: https://en.wikipedia.org/wiki/Domain-specific_language
[Turing tarpit]: https://en.wikipedia.org/wiki/Turing_tarpit
[on general purpose languages]: https://github.com/elm/projects/blob/0d0f52abb320d1370aa7b6abc7e1007ba4c524ab/notes/on-general-purpose.md
[if another language handles them better]: https://github.com/elm/projects/blob/0d0f52abb320d1370aa7b6abc7e1007ba4c524ab/notes/on-general-purpose.md#relevance-to-elm

**TL;DR:** [Unlike Elm][], [Gren][] wants to explore the world outside the browser

#### Elm Sticks Closer to Home

**TL;DR:** Elm wants to stick to being a strong web frontend language

Elm's designers outline three excellent points in their official
[Roadmap FAQ][] and statement [on general purpose languages][]:

1. Languages tend to be great in certain roles
2. Forcing a language into the wrong role turns it into [Turing tarpit][]
3. Each language is to some degree a [domain-specific language][]

Then it veers somewhere inconvenient. They explain how Elm will:

* stick to its stated purpose and current strengths
* avoid areas outside those [if another language handles them better][].

It's a strict policy, but it's also a useful one. It means Elm will
continue being an excellent frontend language.

#### Gren Wants to Explore

**TL;DR:** Gren devs love Elm's syntax so much we're freeing it from the browser

[make a PR]: https://github.com/pushfoo/docker-gren/pulls
[ANSI escape codes]: https://en.wikipedia.org/wiki/ANSI_escape_code
[rich]: https://github.com/Textualize/rich?tab=readme-ov-file
[gren-tui]: https://github.com/blaix/gren-tui/tree/main
[FileSystem]: https://packages.gren-lang.org/package/gren-lang/node/latest/module/FileSystem

> [!NOTE]
> Please [make a PR][] if I got something wrong below.
> I'm fairly new to both Elm and Gren, so the chances are high.

Gren's community is currently young and small, but it's very passionate. Some of the
available packages already implement features which Elm avoids by design. Even better,
many of them seem surprisingly mature!

| Task                         | Exemplary Gren Package  | Does Elm Have an Equivalent?          |
|------------------------------|-------------------------|---------------------------------------|
| On-disk File handling        | The node [FileSystem][] | Not really, per Elm's [Roadmap FAQ][] |
| TUI (Python's [rich][], etc) | [gren-tui][]            | Please [make a PR][] if you know any! |


[elm-ansi]: https://package.elm-lang.org/packages/wolfadex/elm-ansi/latest/
[gren-ansi]: https://packages.gren-lang.org/package/blaix/gren-ansi/version/1.0.0/overview
[elm/html]: https://package.elm-lang.org/packages/elm/html/latest/
[gren-html]: https://packages.gren-lang.org/package/icidasset/html-gren/version/4.1.0/overview
[elm/url]: https://package.elm-lang.org/packages/elm/url/latest/
[gren-url]: https://packages.gren-lang.org/package/gren-lang/url/latest/
[prettynice]: https://prettynice.dev/
[elm-pages]: https://github.com/dillonkearns/elm-pages
Gren also offers replacements for many existing Elm packages. Many are forks or
ports with APIs which remain close or identical to their Elm counterparts. Some may
even be by the same author, but I haven't had the time to verify which ones yet.

| Example Task                 | Elm Package       | Gren Alternative | API Similarity[^2] |
|------------------------------|-------------------|------------------|--------------------|
| HTML generation              | [elm/html][]      | [gren-html][]    | Close or identical |
| URL Parsing                  | [elm/url][]       | [gren-url][]     | Close or identical |
| [ANSI escape codes][]        | [elm-ansi][]      | [gren-ansi][]    | Very different     |
| Full-stack Support           | [elm-pages][][^3] | [prettynice][]   | Differs            |

To search for more packages, please see the following:

* https://package.elm-lang.org/
* https://packages.gren-lang.org/


## A Practical Example: Debian OldStable

[DontBreakDebian]: https://wiki.debian.org/DontBreakDebian

**TL;DR:** Docker helps avoid [breaking debian with non-distro packages][DontBreakDebian]

### The Scenario

[OldStable]: https://wiki.debian.org/DebianOldStable

Imagine you need to deploy to a system running Debian, or worse, its
[OldStable][] version:

* Packages tend to only merge security patches
* Feature releases tend to lag years behind the latest
* The Debian documentation explicitly warns you that third party packages
  [are a common way to break Debian!][DontBreakDebian]

### The Solution

Using a [Docker container][docker-overview] container saves you the trouble
of managing package sources, extracting archives, and especially the worst of
all: [hunting down the right versions of each][dep-issues].

With a container, all of it's in already in the box:

* [Gren][] itself
* [Node.js][] to allow [prettynice][] and other web dev tools to run

[not a first-class feature]: https://dev.to/eberfreitas/elm-in-the-server-or-anywhere-else-with-promises-5eoj

[^1]: Okay, let's be real: maybe you shouldn't use this in production *quite* yet, but we all have ambitions!
[^2]: API similarity was eyeballed without using AST comparison tools. Please [make a PR][] if this table needs corrections.
[^3]: It's [not a first-class feature][].
