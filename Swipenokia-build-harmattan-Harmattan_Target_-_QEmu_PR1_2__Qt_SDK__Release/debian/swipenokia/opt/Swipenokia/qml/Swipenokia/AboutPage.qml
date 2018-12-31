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
                x: 0
                y: 0
                width: 480
                height: 1153
                color: "#007fbe"

                Item {
                    id: fintoheader1
                    Rectangle {
                        id: sfondoheader1
                        width: 360
                        height: 72
                        z: 2
                        anchors.top: parent.top
                        anchors.topMargin: 0
                        anchors.rightMargin: 0
                        anchors.right: parent.right
                        anchors.leftMargin: 0
                        gradient: Gradient {
                            GradientStop {
                                position: 0
                                color: "#82d0f7"
                            }

                            GradientStop {
                                position: 1
                                color: "#19a3cc"
                            }
                        }
                        anchors.left: parent.left
                    }

                    Text {
                        id: thisLabel1
                        x: 18
                        y: 32
                        z: 1
                        width: 323
                        height: 40
                        color: "#ffffff"
                        text: "Swipenokia app"
                        font.pixelSize: 32
                        font.family: "Nokia Pure Text"
                    }
                }


                Flickable {
                    id: flickable1
                    x: 0
                    y: 72
                    z: 3
                    width: 480
                    height: 861
                    maximumFlickVelocity: 1000
                    contentWidth: childrenRect.width
                    contentHeight: childrenRect.height
                    flickableDirection: Flickable.VerticalFlick
                    Text {
                        id: status1
                        x: 182
                        y: 716
                        width: 116
                        height: 26
                        text: " "
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 716
                        anchors.horizontalCenterOffset: 0
                        horizontalAlignment: Text.AlignHCenter
                    }

                    Text {
                        id: testobenvenuto
                        x: 0
                        y: 131
                        width: 421
                        height: 277
                        color: "#ffffff"
                        text: "Swipenokia is a new app for Meego Harmattan,\n that will host content related to the nokia N9 itself: UI, maintenance, accessories, and apps.\nStay tuned.\""
                        horizontalAlignment: Text.AlignHCenter
                        anchors.verticalCenter: gruppopagina.verticalCenter
                        anchors.horizontalCenterOffset: 241
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: imageAccessories.bottom
                        anchors.topMargin: 35
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                        font.family: "Nokia Pure Text Light"
                        verticalAlignment: Rectangle.Center
                        font.pixelSize: 36
                    }

                    Text {
                        id: testobenvenuto1
                        x: 30
                        y: 482
                        width: 421
                        height: 277
                        color: "#ffffff"
                        text: "A minodesign project for N9 community"
                        font.pixelSize: 16
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: imageAccessories.bottom
                        anchors.topMargin: 35
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                        anchors.horizontalCenterOffset: 241
                        anchors.verticalCenter: gruppopagina.verticalCenter
                        font.family: "Nokia Pure Text Light"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Rectangle.Center
                    }
                }

            }

    }
