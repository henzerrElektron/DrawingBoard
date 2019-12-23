import QtQuick 2.0
import QtQuick 2.12
import "."
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0

/*!
   \qmltype EmailValidator
   \brief A validator for date of births
  This control provides a validator for DOB's.
  It allows only words,numbers and special characters valid for email address to be entered in inputs
  where this filter is used
  This is used in TextDelegate.qml

   \image tobeprovided.png

   \section1 Sample usage

   To set filters for inputs that allow only dates in the text fields use it as below:

   \qml
TextField {
    id: textField
    DobValidator{
        id:regexpValidatorDobOnly;
    }
    validator: regexpValidatorDobOnly:
}
   \endqml

*/
RegExpValidator{
    id:regexpValidatorDobOnly;
    objectName:StringConstants.objectName_regexpValidatorDobOnly
    regExp: StringConstants.txtValidatorDobOnly
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}
