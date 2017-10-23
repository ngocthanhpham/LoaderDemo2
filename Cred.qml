import QtQuick 2.0

Rectangle {
    id:redrect
    width: 100; height: 100
    color: "red"
    signal message(string msg)
    MouseArea{
        anchors.fill: parent
        onClicked: redrect.message("Cblue.qml")
    }
}
