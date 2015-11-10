import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true

    width: 700
    height: 400

    property double myXValue


    Rectangle {
        id: rectangle
        x: 100
        y: 100
        width: 100
        height: 100
        color: "lightgreen"
        antialiasing: true

        XValueAnimator {
            target: rectangle
            targetProperty: "x"
            from: 100
            to: 500
            easing: Easing.OutQuad
            xValue: myXValue
        }
        XValueAnimator {
            target: rectangle
            targetProperty: "y"
            from: 100
            to: 150
            easing: Easing.InOutSine
            xValue: myXValue
        }
        XValueAnimator {
            target: rectangle
            targetProperty: "rotation"
            from: 0
            to: 180
            easing: Easing.Linear
            xValue: myXValue
        }
    }

    Slider {
        id: xSlider
        minimumValue: 0
        maximumValue: 1
        value: 0
        stepSize: (maximumValue - minimumValue) / 1000
        width: parent.width / 2
        Text {
            id: startPointText
            anchors.top: parent.top
            anchors.left: parent.right
            anchors.leftMargin: parent.height / 3
            text: "X value: " + parent.value
        }
        onValueChanged: {
            myXValue = value
        }
    }

    Button {
        anchors.top: xSlider.bottom
        text: "play animation"
        onClicked: {
            numberAnimationOnXValue.restart()
        }
    }

    NumberAnimation on myXValue {
        id: numberAnimationOnXValue
        running: false
        from: 0
        to: 1
        duration: 1000
    }

}

