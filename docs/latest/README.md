# Introduction

---

<img src="https://raw.githubusercontent.com/JujuAdams/Input/master/LOGO_white.png" width="50%" style="display: block; margin: auto;" />
<hr>
<p align="center">Comprehensive cross-platform input for GameMaker 2.3 by <a href="https://twitter.com/jujuadams" target="_blank">Juju Adams</a> and <a href="https://twitter.com/offalynne" target="_blank">Alynne</a></p>

<p align="center"><a href="https://github.com/JujuAdams/Input/releases/" target="_blank">Download the .yymps</a></p>
<p align="center">Talk about Input on the <a href="https://discord.gg/8krYCqr" target="_blank">Discord server</a></p>

---

Input is a robust, feature-packed input library that unifies keyboard, mouse, and gamepad control under one umbrella. It handles hotswapping, rebinding, gamepad type detection, player gamepad assignment, thumbstick min/max deadzones etc. all without you lifing a finger. This library strips away the boring repetitive task of getting every gamepad for every platform set up perfectly, and accelerates the development of your game.

Input is built on top of the engine agnostic [SDL2 remapping system](https://github.com/gabomdq/SDL_GameControllerDB) and uses community contributed binding for every common gamepad, and many gamepads you've probably never heard of. Because it's built on community contributions made over many years, SDL2 and Input have excellent coverage of all the weird and wonderful input devices that exist. It's rare to find a device that SDL2 doesn't support.

This library is a significant improvement on GameMaker's native gamepad implementation, which is fraught with cross-platform inconsistencies and the occasional show-stopping bug. It's a massive step up from GameMaker's barebones gamepad and keyboard implementations.

Not only does Input rectify many issues with GameMaker's basic gamepad handling functionality, but it also improves on mouse and keyboard handling. On some platforms, notably MacOS, certain key combinations totally fox GameMaker causing keys to stick and produce unwanted input. Windwos has nasty issues with touchscreen input as well, and Input addresses those problems too.

?> Input is a really big library! To get up and running fast, check out our [Quick Start](quick-start) page.

---

**What platforms does Input support?**

Everything! You might run into edge cases on platforms that we don't regularly test; please [report any bugs](https://github.com/JujuAdams/Input/issues) if and when you find them.

&nbsp;

**How is Input licensed? Can I use it for commercial projects?**

[Input is released under the MIT license](https://github.com/JujuAdams/Input/blob/master/LICENSE). This means you can use it for whatever purpose you want, including commercial projects. It'd mean a lot to me if you'd drop my name in your credits (Juju Adams and offalynne) and/or say thanks, but you're under no obligation to do so.

&nbsp;

**I think you're missing a useful feature and I'd like you to implement it!**

Great! Please make a [feature request](https://github.com/JujuAdams/Input/issues). Feature requests make Input a more fun tool to use and gives me something to think about when I'm bored on public transport.

&nbsp;

**I found a bug, and it both scares and mildly annoys me. What is the best way to get the problem solved?**

Please make a [bug report](https://github.com/JujuAdams/Input/issues). Juju checks GitHub every day and bug fixes usually go out a couple days after that. You can also grab me on the [Discord server](https://discord.gg/8krYCqr), but that's not a replacement for a nice clear bug report.

&nbsp;

**Who made Input?**

Input is built and maintained by [@jujuadams](https://twitter.com/jujuadams) and [@offalynne](https://twitter.com/offalynne) who have been writing and rewriting input systems for a long time. Juju's worked on a lot of [commercial GameMaker games](http://www.jujuadams.com/) and offalynne has been [active in indie dev](https://offalynne.neocities.org/) for years. Input is the product of our combined practical experience working as consultants and dealing with console ports.

Many, many other people have contributed to GameMaker's open source community via bug reports and feature requests, too many to list here. Input wouldn't exist without them and we're eternally grateful for their creativity and patience.

&nbsp;

**Can I send you donations? Are you going to start a Patreon?**

Thank you for wanting to show your appreciation - it really does mean a lot to us personally - but we're fortunate enough to have a stable income from gamedev. We're not looking to join Patreon as a creator at this moment in time. If you'd like to support our work then drop us a credit in your game and/or gimme a shout-out on the social media platform of your choice.
