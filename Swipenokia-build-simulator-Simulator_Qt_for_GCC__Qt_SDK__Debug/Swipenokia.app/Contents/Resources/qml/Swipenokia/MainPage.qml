import QtQuick 1.1
import com.nokia.meego 1.1


Page {
    id: page1
//    width: 480
//    height: 854
    tools: ToolBarLayout {
               ToolItem {
                   iconId: "icon-m-toolbar-back-dimmed"; onClicked: pageStack.pop()
               }
//               ToolItem {
//                   iconId: "icon-m-weather-mostly-cloudy"; onClicked: pageStack.pop()
//               }
//               ToolItem {
//                   iconId: "icon-m-toolbar-column"; onClicked: pageStack.pop()
//               }
//               ToolItem {
//                   iconId: "icon-m-toolbar-favorite-unmark"; onClicked: pageStack.pop()
//               }
               ToolItem {
                   iconId: "icon-m-toolbar-list"; onClicked: pageStack.push(aboutPage)
               }
         }

        Rectangle {
            id: gruppopagina
            width: 480; height: 1153
            color: "#3188be"

            Item {
                id: fintoheader
                 Rectangle {
                         id: sfondoheader
                         width: 360
                         height: 72
                         z: 1
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
                         z: 2
                         font.family: "Nokia Pure Text"
                         font.pixelSize: 32
                 }
            }

            Flickable {
                id: flickable1
                x: 0
                y: 72
                width: 480
                height: 854
                smooth: true
                contentWidth: childrenRect.width; contentHeight: 1040
                flickableDirection: Flickable.VerticalFlick
                maximumFlickVelocity : 1000

//                    Button { // our Button component
//                            id: button
//                            x: 12;                text: "Start"
//                            anchors.top: parent.top
//                            anchors.topMargin: 600
//                            anchors.horizontalCenter: parent.horizontalCenter
//                            onClicked: pageStack.push(primaPagina)
//                         }

//                    Text {
//                        id: testobenvenuto
//                        x: -344
//                        y: 150
//                        width: 421
//                        height: 277
//                        color: "#ffffff"
//                        text: qsTr("Benvenuto nella primissima, non tradotta, versione 'alpha' dell'app Swipenokia.com")
//                        anchors.verticalCenterOffset: -288
//                        anchors.horizontalCenterOffset: -373
//                        horizontalAlignment: Text.AlignHCenter
//                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
//                        font.family: "Nokia Pure Text Light"
//                        anchors.verticalCenter: parent.verticalCenter
//                        anchors.horizontalCenter: parent.horizontalCenter
//                        verticalAlignment: Rectangle.Center
//                        font.pixelSize: 48
//                    }

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
                            id: imageDesign
                            x: 0
                            y: 0
                            width: 480
                            height: 213
                            fillMode: Image.PreserveAspectFit
                            anchors.top: fintoheader.bottom
                            anchors.topMargin: 0
                            source: "images/Mainpage_design.jpg"
                            MouseArea {
                                width: parent.width
                                height: parent.height
                                onClicked: pageStack.push(designPage)
                            }
                        }
                        Image {
                            id: imageFeatures
                            x: 0
                            width: 480
                            height: 216
                            anchors.top: imageDesign.bottom
                            anchors.topMargin: 0
                            fillMode: Image.PreserveAspectFit
                            source: "images/Mainpage_features.jpg"
                            MouseArea {
                                width: parent.width
                                height: parent.height
                                onClicked: pageStack.push(featuresPage)
                            }
                        }
                        Image {
                            id: imageApps
                            x: 0
                            width: 480
                            height: 216
                            anchors.top: imageFeatures.bottom
                            anchors.topMargin: 0
                            fillMode: Image.PreserveAspectFit
                            source: "images/Mainpage_apps.jpg"
                            MouseArea {
                                width: parent.width
                                height: parent.height
                                onClicked: pageStack.push(appsPage)
                            }
                        }
                        Image {
                            id: imageAccessories
                            x: 0
                            width: 480
                            height: 216
                            anchors.top: imageApps.bottom
                            anchors.topMargin: 0
                            fillMode: Image.PreserveAspectFit
                            source: "images/Mainpage_accessories.jpg"
                            MouseArea {
                                width: parent.width
                                height: parent.height
                                onClicked: pageStack.push(accessoriesPage)
                            }
                        }

           }

}



}

