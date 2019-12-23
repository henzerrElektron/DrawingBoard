import QtQuick 2.0
import QtQuick 2.12
import "."
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0

/*!
   \qmltype EmailValidator
   \brief A validator for email address ,but does not allow special charcters other than those valid for email address
  This control provides a validator for email address.
  It allows only words,numbers and special characters valid for email address to be entered in inputs
  where this filter is used
  This is used in TextDelegate.qml

   \image tobeprovided.png

   \section1 Sample usage

   To set filters for inputs that allow only email address in the text fields use it as below:

   \qml
TextField {
    id: textField
    EmailValidator{
        id:regexpValidatorEmailOnly;
    }
    validator: regexpValidatorEmailOnly:
}
   \endqml

*/
RegExpValidator{
    id:regexpValidatorEmailOnly;
    objectName: StringConstants.objectName_regexpValidatorEmailOnly
    regExp: StringConstants.txtValidatorEmailOnly
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}
