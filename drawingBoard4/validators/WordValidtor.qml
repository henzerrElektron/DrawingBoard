import QtQuick 2.0
import QtQuick 2.12
import "."
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0

/*!
   \qmltype WordValidtor
   \brief A validator for words

  This control provides a validator for words.
  It allows only words to be entered in inputs
  where this filter is used
  This is used in TextDelegate.qml

   \image tobeprovided.png

   \section1 Sample usage

   To set filters for inputs that allow only words in the input fields use it as below:

   \qml
TextField {
    id: textField
    WordValidtor{
        id:regexpValidatorWordsOnly;
    }
    validator: regexpValidatorWordsOnly:
}
   \endqml

*/
RegExpValidator{
    id:regexpValidatorWordsOnly;
    objectName: StringConstants.objectName_regexpValidatorWordsOnly
    regExp: StringConstants.txtValidatorWordsOnly
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}
