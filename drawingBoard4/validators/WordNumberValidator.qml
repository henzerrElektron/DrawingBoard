import QtQuick 2.0
import QtQuick 2.12
import "."
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0

/*!
   \qmltype WordNumberValidator
   \brief A validator for words and numbers ,but does not allow special charcters

  This control provides a validator for words and numbers.
  It allows only words and numbers to be entered in inputs
  where this filter is used
  This is used in TextDelegate.qml

   \image tobeprovided.png

   \section1 Sample usage

   To set filters for inputs that allow only words and numbers in the text fields use it as below:

   \qml
TextField {
    id: textField
    WordNumberValidator{
        id:regexpValidatorWordsNumbersOnly;
    }
    validator: regexpValidatorWordsNumbersOnly:
}
   \endqml

*/
RegExpValidator{
    id:regexpValidatorWordsNumbersOnly;
    objectName: StringConstants.objectName_regexpValidatorWordsNumbersOnly
    regExp: StringConstants.txtValidatorWordsNumbersOnly
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}
