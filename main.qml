import QtQuick 2.15
import QtQuick.Window 2.15
import "./View"
import "./JsLibrary/libraryImg.js" as Img
import "./JsLibrary/colorbutton.js" as Color
Window {
    id:root
    width: 900
    height: 700
    visible: true
    title: qsTr("MUSIC APP")
    property bool isVisibleFile: false
    property bool isVisibleLang: false
    property bool isVisibleAbout: false
    property bool islook;
    //imgBackground
    Image {
        fillMode: Image.TileVertically
        verticalAlignment: Image.AlignTop
        source:  Img.imgbackground
        MouseArea{
            anchors.fill: parent
            onClicked: {
                isVisibleFile = false
                isVisibleLang = false
                isVisibleAbout = false
            }
        }
    }
    //Title bar
    TitleBar{
        id: idtitle
        anchors{
            left: parent.left
            right: parent.right
        }
        z: 200
        loadersource: loader
        namechange:  loader.item.namechang
        sourcechange: loader.item.sourcechang
        onClickhome: {if(loader.source == "qrc:/Screen2.qml")loader.source = "qrc:/Screen1.qml"}
        onClicklibrary: {if(loader.source == "qrc:/Screen1.qml")loader.source = "qrc:/Screen2.qml"}

    }
    //Loader Screen
    Loader{
        id:loader
        anchors.fill: parent
        source: "qrc:/Screen1.qml"
    }
}
