import QtQuick 2.0

Rectangle {
    id:redrect
    width: 100; height: 100
    color:  "blue"
    signal message(string msg)
    MouseArea{
        anchors.fill: parent
        onClicked: redrect.message("Cred.qml")
    }
}
