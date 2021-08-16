# Functions (Gamepad)

---

?> These functions are provided for convenience if you want to implement your own features using Input's SDL implementation. In general, [Player functions](Functions-(Players)) are the intended way to use Input and are preferred.

&nbsp;

&nbsp;

### `input_gamepad_check(gamepadIndex, GMconstant)`

*Returns:* Boolean, if the button/axis is currently activated

|Name          |Datatype|Purpose                                               |
|--------------|--------|------------------------------------------------------|
|`gamepadIndex`|integer |Index of the gamepad to target, using GameMaker's native [gamepad indexes](https://docs2.yoyogames.com/source/_build/3_scripting/4_gml_reference/controls/gamepad%20input/index.html)|
|`GMconstant`  |integer |Button or axis to check, using GameMaker's native [virtual button/axis constants](https://docs2.yoyogames.com/source/_build/3_scripting/4_gml_reference/controls/gamepad%20input/index.html). What physical input this actually checks is determined by Input's own SDL remapping system|

&nbsp;

&nbsp;

### `input_gamepad_check_pressed(gamepadIndex, GMconstant)`

*Returns:* Boolean, if the button/axis is newly activated this frame

|Name          |Datatype                  |Purpose                                               |
|--------------|--------------------------|------------------------------------------------------|
|`gamepadIndex`|integer                   |Index of the gamepad to target, using GameMaker's native [gamepad indexes](https://docs2.yoyogames.com/source/_build/3_scripting/4_gml_reference/controls/gamepad%20input/index.html)|
|`GMconstant`  |integer |Button or axis to check, using GameMaker's native [virtual button/axis constants](https://docs2.yoyogames.com/source/_build/3_scripting/4_gml_reference/controls/gamepad%20input/index.html). What physical input this actually checks is determined by Input's own SDL remapping system|

&nbsp;

&nbsp;

### `input_gamepad_check_released(gamepadIndex, GMconstant)`

*Returns:* Boolean, if the button/axis is newly deactivated this frame

|Name          |Datatype                  |Purpose                                               |
|--------------|--------------------------|------------------------------------------------------|
|`gamepadIndex`|integer                   |Index of the gamepad to target, using GameMaker's native [gamepad indexes](https://docs2.yoyogames.com/source/_build/3_scripting/4_gml_reference/controls/gamepad%20input/index.html)|
|`GMconstant`  |integer |Button or axis to check, using GameMaker's native [virtual button/axis constants](https://docs2.yoyogames.com/source/_build/3_scripting/4_gml_reference/controls/gamepad%20input/index.html). What physical input this actually checks is determined by Input's own SDL remapping system|

&nbsp;

&nbsp;

### `input_gamepad_value(gamepadIndex, GMconstant)`

*Returns:* Real, the analogue value of the input (after applying SDL axis remapping)

|Name          |Datatype                  |Purpose                                               |
|--------------|--------------------------|------------------------------------------------------|
|`gamepadIndex`|integer                   |Index of the gamepad to target, using GameMaker's native [gamepad indexes](https://docs2.yoyogames.com/source/_build/3_scripting/4_gml_reference/controls/gamepad%20input/index.html)|
|`GMconstant`  |integer |Button or axis to check, using GameMaker's native [virtual button/axis constants](https://docs2.yoyogames.com/source/_build/3_scripting/4_gml_reference/controls/gamepad%20input/index.html). What physical input this actually checks is determined by Input's own SDL remapping system|

&nbsp;

&nbsp;

### `input_gamepad_is_connected(gamepadIndex)`

*Returns:* Boolean, whether the given gamepad is connected

|Name          |Datatype|Purpose                                               |
|--------------|--------|-------------------------------------------------------|
|`gamepadIndex`|integer |Index of the gamepad to target, using GameMaker's native [gamepad indexes](https://docs2.yoyogames.com/source/_build/3_scripting/4_gml_reference/controls/gamepad%20input/index.html)|

&nbsp;

&nbsp;

### `input_gamepad_get_description(gamepadIndex)`

*Returns:* String, the name of the gamepad (after SDL remapping)

|Name          |Datatype|Purpose                                               |
|--------------|--------|------------------------------------------------------|
|`gamepadIndex`|integer |Index of the gamepad to target, using GameMaker's native [gamepad indexes](https://docs2.yoyogames.com/source/_build/3_scripting/4_gml_reference/controls/gamepad%20input/index.html)|

&nbsp;

&nbsp;

### `input_gamepad_get_type(gamepadIndex)`

*Returns:* String, the gamepad type (after SDL remapping)

|Name          |Datatype                  |Purpose                                               |
|--------------|--------------------------|------------------------------------------------------|
|`gamepadIndex`|integer                   |Index of the gamepad to target, using GameMaker's native [gamepad indexes](https://docs2.yoyogames.com/source/_build/3_scripting/4_gml_reference/controls/gamepad%20input/index.html)|

XInput controllers will typically return `"xbox 360"` whereas any unrecognised gamepad will return `"unknown"`. Xbox Series X/S controllers will return `"xbox one"` owing to similarities across console generations, and that Xbox One gamepads are forwards compatible.

The following are valid strings that this function may return:

|Results              |                        |                         |
|---------------------|------------------------|-------------------------|
| `"unknown"`         | `"steam"`              | `"apple"`               |
| `"ouya"`            | `"stadia" `            | `"luna"`                |
| `"snes"`            | `"saturn"`             | `"gamecube"`            |
| `"psx"`             | `"ps4"`                | `"ps5"`                 |
| `"switch"`          | `"switch joycon left"` | `"switch joycon right"` |
| `"xbox 360"`        | `"xbox one"`           |                         |

&nbsp;

&nbsp;

### `input_gamepad_get_dpad_style(gamepadIndex)`

*Returns:* String, the style of the gamepad's dpad (after SDL remapping)

|Name          |Datatype                  |Purpose                                               |
|--------------|--------------------------|------------------------------------------------------|
|`gamepadIndex`|integer                   |Index of the gamepad to target, using GameMaker's native [gamepad indexes](https://docs2.yoyogames.com/source/_build/3_scripting/4_gml_reference/controls/gamepad%20input/index.html)|

This function will return one of the following:

|Results        |Gamepad type                                    |Presentation example |
|---------------|------------------------------------------------|:-------------------:|
|`"disc"`       |Xbox 360, Steam Controller, Ouya, Saturn        |<img alt="Disc art example" width="150" src="https://i.imgur.com/IO0DjVQ.png">|
|`"segments"`   |PlayStation                                     |<img alt="Segments art example" width="150" src="https://i.imgur.com/Lmaya8O.png">|
|`"arrows"`     |Switch (handheld, Pro Controller, dual Joy-Cons)|<img alt="Arrows art example" width="150" src="https://i.imgur.com/V9qOstK.png">|
|`"none"`       |Switch (single Joy-Con)                         |*No dpad*|
|`"cross"`      |Default                                         |<img alt="Cross art example" width="150" src="https://i.imgur.com/b7f8Gnj.png">|

*Example art courtesy https://thoseawesomeguys.com/prompts, CC0*
