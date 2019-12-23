import QtQuick 2.0
import QtQuick 2.12
import "."
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0
/*!
   \qmltype AllValidators
   \brief An Item that holds all validators
  This control provides a validator for numbers,words,dobs ,emails etc
  Each of the validators are explained in their seperate qml types


   \image tobeprovided.png

   \section1 Sample usage

   The samples of how to use each validators are provided in their own qml types

*/
Item {
    id: validators
    objectName: StringConstants.objectName_validators
    RegExpValidator
    {
        id: regexpValidatorNumberOnlyValidator;
        regExp: StringConstants.txtValidatorNumbersOnly;
    }
    RegExpValidator{
        id:regexpValidatorAgeOnly;
        regExp: StringConstants.txtValidatorAgeOnly
    }
    RegExpValidator{
        id:regexpValidatorWordsNumberOnly
        regExp: StringConstants.txtValidatorWordsNumbersOnly
    }
    RegExpValidator{
        id:regexpValidatorDobOnly
        regExp: StringConstants.txtValidatorDobOnly
    }
    RegExpValidator{
        id:regexpValidatorEmailOnly
        regExp: StringConstants.txtValidatorEmailOnly
    }
    RegExpValidator{
        id:regexpValidatorWordsOnly
        regExp: StringConstants.txtValidatorWordsOnly
    }
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}
