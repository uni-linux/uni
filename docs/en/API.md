# API

This section shows the commands available at this moment for UNI. You can use them in the same way in all distributions supported by UNI.

All commands uses `-y` by default, except `uni remove`, so you don't need to put it when you typing UNI commands. If you want to know what each UNI command do internally you can see it in [here](https://github.com/daltonmenezes/uni/tree/master/src).

# UNI

| Command | Alias | Description |
| --- | --- | --- |
| `uni bake` | `uni b`  | Cooks one or more given recipes. You can find recipes [here](https://github.com/uni-linux/recipes) |
| `uni bake how` | |  Shows what one or more recipes does internally before allow to cook it. You can find recipes [here](https://github.com/uni-linux/recipes) |
| `uni upgrade-me` | `uni up-me`  | Looks for UNI upgrades, if available it will be upgraded. |
| `uni remove-me` | `uni rm-me`  | Removes UNI from the system. |
| `uni --version` | `uni -v`  | Shows the current UNI version installed. |

# Package manager abstractions

| Command | Alias | Description |
| --- | --- | --- |
| `uni add` | `uni a`  | Adds one or more repositories. |
| `uni install` | `uni i`  | Installs one or more packages. |
| `uni remove` | `uni rm`  | Removes one or more packages. |
| `uni upgrade` | `uni up`  | Upgrades deeply the system and remove useless dependencies. |
| `uni update` | `uni u`  | Updates the package lists from your repositories. |
