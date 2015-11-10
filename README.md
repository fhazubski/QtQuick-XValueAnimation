# QtQuick-XValueAnimation
If you want to use animation in which you control the time.

[More information here.](http://stackoverflow.com/questions/33598187/another-time-source-for-qml-animations)

To use this object use `XValueAnimation` object in QML.
This object has 6 properties that can be set:

	- target - (Item) Object which property will be animated.
	- targetProperty - (string) Name of the property.
	- from - (double) Start value.
	- to - (double) End value.
	- easing - (QEasingCurve::Type) Easing type. For example Easing.Linear . Can be unset.
	- xValue - (double, value from 0 to 1) xValue is the value of the time of the animation. 0 means beginning and 1 an end. When this property changes value of *targetProperty* will be respectively set.

	
If there are any problems feel free to contact me.
