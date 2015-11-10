import QtQuick 2.0

Item {
    id: xValueAnimator

    property Item target
    property string targetProperty
    property double from
    property double to
    property int easing: Easing.Linear
    property double xValue

    onXValueChanged: {
        if (target.hasOwnProperty(targetProperty)) {
            target[targetProperty] = calculateCurrentValue(
                        from, to, easing, xValue);
        }
        else
            console.error("XValueAnimator: target:", target,
                          "does not have property", targetProperty)
    }

    function calculateCurrentValue(
        defaultFrom, defaultTo, animationEasing, xValue) {

        return defaultFrom + (defaultTo - defaultFrom)
                * easingValueForProgress.getValue(animationEasing, xValue)
    }
}

