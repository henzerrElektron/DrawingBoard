import QtQuick 2.0
import QtQuick 2.12
import "."
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0

/*!
   \qmltype AgeValidator
   \brief A validator for ages
  This control provides a validator for age.
  It allows only numbers that is sensible for age[0-99] of a person  to be entered in input fields
  where this filter is used
  This is used in TextDelegate.qml

   \image tobeprovided.png

   \section1 Sample usage

   To set filters for inputs that allow only valid ages in the text fields use it as below:

   \qml
TextField {
    id: textField
    AgeValidator{
        id:regexpValidatorAgeOnly;
    }
    validator: regexpValidatorAgeOnly:
}
   \endqml

*/

    RegExpValidator{
        id:regexpValidatorAgeOnly;
        objectName: StringConstants.objectName_regexpValidatorAgeOnly//"regexpValidatorAgeOnly"
        regExp: StringConstants.txtValidatorAgeOnly
        Component.onDestruction: { cleanup()    }
        function init() { console.log("INIT "+Component.objectName)    }
        function cleanup() {  console.log("CLEANUP "+Component.objectName) }
    }


