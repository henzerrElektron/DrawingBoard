import QtQuick 2.0
import QtQuick 2.12
import "."
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0
Item {
    id: validators
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
}
