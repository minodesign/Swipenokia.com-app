import QtQuick 1.1
import com.nokia.meego 1.1


Page {
    id: page1
    width: 480
    height: 854
    tools: ToolBarLayout {
               ToolItem {
                   iconId: "icon-m-toolbar-back"; onClicked: pageStack.pop()
               }
               ToolItem {
                   iconId: "icon-m-toolbar-list"; onClicked: pageStack.push(aboutPage)
               }
         }

        Rectangle {
            id: gruppopagina
            width: 480; height: 1153
            color: "#3188be"

            Flickable {
                id: flickable1
                x: 0
                y: 72
                width: 480
                height: 861
                z: 1
                contentWidth: childrenRect.width; contentHeight: childrenRect.height
                flickableDirection: Flickable.VerticalFlick
                maximumFlickVelocity : 1000


                Text { // text changes when button was clicked
                        id: status
                        x: 182; y: 716;
                        width: 116; height: 26
                        text: " "
                        anchors.horizontalCenterOffset: 0
                        anchors.top: parent.top
                        anchors.topMargin: 716
                        anchors.horizontalCenter: parent.horizontalCenter
                        horizontalAlignment: Text.AlignHCenter
                    }

                Image {
                    id: imageFeatures
                    x: 0
                    width: 480
                    height: 216
                    anchors.top: fintoheader.bottom
                    anchors.topMargin: 0
                    fillMode: Image.PreserveAspectFit
                    source: "images/Mainpage_features.jpg"
                }


           }

            Text {
                id: testobenvenuto
                x: 30
                y: 350
                width: 421
                height: 277
                color: "#ffffff"
                text: qsTr("This is the Features Page")
                anchors.horizontalCenter: flickable1.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                font.family: "Nokia Pure Text Light"
                verticalAlignment: Rectangle.Center
                font.pixelSize: 48
            }

           Item {
               id: fintoheader
                Rectangle {
                        id: sfondoheader
                        width: 360
                        height: 72
                        gradient: Gradient {
                            GradientStop {
                                position: 0.00;
                                color: "#82d0f7";
                            }
                            GradientStop {
                                position: 1.00;
                                color: "#19a3cc";
                            }
                        }
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        anchors.top: parent.top
                        anchors.topMargin: 0
                }
                Text {
                        id: thisLabel
                        x: 18 ; y: 32
                        width: 323
                        height: 40
                        color: "#ffffff"
                        text: "Swipenokia app"
                        font.family: "Nokia Pure Text"
                        font.pixelSize: 32
                }
           }
        }

}
