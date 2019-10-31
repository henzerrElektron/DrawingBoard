import QtQuick 2.0
import QtQuick 2.12
import "."
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0
//QtObject{
//    readonly property var ageRex: regexpValidatorAgeOnly
    RegExpValidator{
        id:regexpValidatorAgeOnly;
        regExp: StringConstants.txtValidatorAgeOnly
    }

//}

