import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Exercise 2")
//    property bool display: true
    property int count: 0

    Item {
        width: 200
        height: 200
        id: loaderex
        Loader{
            id:loader1
            source: "Cred.qml"
        }
        Connections{
            target: loader1.item
            onMessage: {count++;
                loader1.source = msg
                console.log(count.toString())
                console.log(msg)
            }
        }
    }

}
