import QtQuick 2.0
import QtQuick.Controls 2.12
import "."
import "./../validators/"
import "./../common/"
import ApplicationConstants 1.0

Component {
    Item {
        //id: name
       // width: 200
       // height: 75
        Column {
            id: column
            //id: labelAndTextItem
            //id: rectangle
            spacing: 10
            Label {
                id: label
                text: actionName
                anchors.horizontalCenter: parent.horizontalCenter
                 horizontalAlignment: Text.AlignHCenter//qsTr("Label")
                onTextChanged: {
                    console.log("The value of the text is"+text)
                }
            }
            TextField {
                id: textField
                AgeValidator{
                    id:regexpValidatorAgeOnly;
                }

                NumberValidator{
                    id:regexpValidatorNumbersOnly;
                }
                WordValidtor{
                    id:regexpValidatorWordsOnly;
                }
                DobValidator{
                    id:regexpValidatorDobOnly
                }
                EmailValidator{
                    id:regexpValidatorEmailOnly
                }
                WordNumberValidator{
                    id:regexpValidatorWordsNumbersOnly
                }
                onTextChanged: {
                    actionText = text
                }
                //text: qsTr("Text Field")
                placeholderText: placeHolderTextItem
                font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
                renderType: Text.QtRendering
                horizontalAlignment: Text.AlignHCenter
                //        validator:(numberWordindex === IntegerConstants.numberOnly)? regexpValidatorNumbersOnly:
                //                  (numberWordindex === IntegerConstants.ageOnly)?regexpValidatorAgeOnly:
                //                  (numberWordindex === IntegerConstants.wordOnly)?regexpValidatorWordsOnly:
                //                  (numberWordindex === IntegerConstants.dobOnly)?regexpValidatorDobOnly:
                //                  (numberWordindex === IntegerConstants.emailOnly)?regexpValidatorEmailOnly:regexpValidatorWordsNumbersOnly
            }
        }
    }
}









/*##^## Designer {
    D{i:2;anchors_x:246;anchors_y:24}D{i:1;anchors_x:224;anchors_y:32}
}
 ##^##*/
