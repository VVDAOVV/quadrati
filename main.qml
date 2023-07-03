import QtQuick
import QtQuick.Window
import QtQuick.Controls 2.5


Window {
    width: 240
    height: 360
    visible: true
    title: qsTr("Quadradic Equation")

    Rectangle {
        y:10
        width: 240
        height: 40
        color: "red"
        border.color: "black"
        border.width: 1
        radius: 30

        Text {
            y:5
            id: name
            font.family: "Helvetica"
            font.pointSize: 12
            text: qsTr("    Introduceti variabilele a, b,c")
        }

    }

    TextInput {
        x:20
        y:70
        id:a
               width: 50
               height: 50
               text: "a"
               font.family: "Helvetica"
               font.pointSize: 20
               color: "red"
               focus: true
               Keys.onReturnPressed:
                   {
                    a.focus =false
                    b.focus =true
                   }

    }
    TextInput {
        x:90
        y:70
        id:b
               width: 50
               height: 50
               text: "b"
               font.family: "Helvetica"
               font.pointSize: 20
               color: "blue"
               focus: true
               Keys.onReturnPressed:
                   {
                   b.focus =false
                    c.focus =true
                   }
    }
    TextInput {
        x:170
        y:70
        id:c
               width: 50
               height: 50
               text: "c"
               font.family: "Helvetica"
               font.pointSize: 20
               color: "orange"
               focus: true
               Keys.onReturnPressed:
                   {
                   c.focus =false
                                       }

    }


    Text {
        x:40
        y:250
        id: x1
        font.pixelSize: 20
        text: "X1= " +  grad2()
    }
    Text {
        x:40
        y:290
        id: x2
        font.pixelSize: 20
        text: "X2= " + grad3()
    }

    property real aa :a.text
    property real bb :b.text
    property real cc :c.text
   // property real result: aa+bb+cc

    function grad2() {
       var delta = Math.sqrt((bb*bb-4*aa*cc))
                if (delta >=0)
                    var x11 = ((-bb +delta)/(2*aa))
               else
                    x11 = "complex"
    return x11
}

    function grad3() {
       var delta = Math.sqrt((bb*bb-4*aa*cc))
                if (delta >=0)
                    var x11 = ((-bb -delta)/(2*aa))
                else
                     x11 = "complex"
    return x11
}





}
