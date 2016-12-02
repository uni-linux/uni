# API

This section shows the commands available at this moment for UNI. You can use them in the same way in all distributions supported by UNI.

All commands uses `-y` by default, so you don't need to put it when you typing UNI commands. If you want to know what each UNI command do internally you can see it in [here](https://github.com/daltonmenezes/uni/tree/master/src).

# UNI

| Command | Alias | Description |
| --- | --- | --- |
| `uni bake` | `uni b`  | Cooks a given recipe. You can find recipes [here](https://github.com/uni-linux/recipes) |
| `uni upgrade-me` | `uni up-me`  | Looks for UNI upgrades, if available it will be upgraded. |
| `uni remove-me` | `uni rm-me`  | Removes UNI from the system. |
| `uni --version` | `uni -v`  | Shows the current UNI version installed. |

# Package manager abstractions

| Command | Alias | Description |
| --- | --- | --- |
| `uni add` | `uni a`  | Adds a repository. |
| `uni install` | `uni i`  | Installs a package. |
| `uni upgrade` | `uni up`  | Upgrades deeply the system and remove useless dependencies. |
| `uni update` | `uni u`  | Updates the package lists from your repositories. |
