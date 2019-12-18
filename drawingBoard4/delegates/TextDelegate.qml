import QtQuick 2.0
import QtQuick.Controls 2.12
import "."
import "./../common/"
import "./../validators/"
import ApplicationConstants 1.0

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
    placeholderText:placeHolderTextItem
    readOnly:!isEntry
    onTextChanged: {
        actionText = text
    }
    //text: actionText
    //font:OtherConstants.fontFamily
    //Package.name: filterName//"PatientDetailedModel"
    //text: actionText

    //font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
    color: StringConstants.actionBtnBackgroundColor
    font.pointSize:(textField.height/2) < 10?10:(textField.height/2)
    //horizontalAlignment: Text.AlignHCenter
    //verticalAlignment: Text.AlignVCenter
    //leftPadding: 0
    //padding: 0
    //color: "white"
    //font.bold: true
    //font.pixelSize:15// Constants.testPage_lblFontSize//25
    //font.weight: Font.ExtraBold
    renderType: Text.QtRendering
    validator:(numberWordindex === IntegerConstants.numberOnly)? regexpValidatorNumbersOnly:
                                                                 (numberWordindex === IntegerConstants.ageOnly)?regexpValidatorAgeOnly:
                                                                                                                 (numberWordindex === IntegerConstants.wordOnly)?regexpValidatorWordsOnly:
                                                                                                                                                                  (numberWordindex === IntegerConstants.dobOnly)?regexpValidatorDobOnly:
                                                                                                                                                                                                                  (numberWordindex === IntegerConstants.emailOnly)?regexpValidatorEmailOnly:regexpValidatorWordsNumbersOnly

}