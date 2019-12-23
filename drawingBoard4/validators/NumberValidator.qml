import QtQuick 2.0
import QtQuick 2.12
import "."
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0

/*!
   \qmltype NumberValidator
   \brief A validator for  numbers ,but does not allow special charcters and words

  This control provides a validator for numbers.
  It allows only numbers to be entered in inputs
  where this filter is used
  This is used in TextDelegate.qml

   \image tobeprovided.png

   \section1 Sample usage

   To set filters for inputs that allow only numbers in the text fields use it as below:

   \qml
TextField {
    id: textField
    NumberValidator{
        id:regexpValidatorNumbersOnly;
    }
    validator: regexpValidatorNumbersOnly:
}
   \endqml

*/
RegExpValidator{
    id:regexpValidatorNumbersOnly;
    objectName: StringConstants.objectName_regexpValidatorNumbersOnly
    regExp: StringConstants.txtValidatorNumbersOnly
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}
