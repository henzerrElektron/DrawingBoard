import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.0
//import QtQml.Models 2.1
import "."
import "./../images/"
import ApplicationConstants 1.0

ListModel {
    id:contactDetailModel
    readonly property var modelElements: [
        {
            actionName:StringConstants.lbl_npContactMobile,
            actionText:StringConstants.lbl_npContactMobile,
            placeHolderText:StringConstants.lbl_npContactMobilePh,
            validationText:StringConstants.txtValidatorNumbersOnly,
            valueText:"",
            isLabel:true,
            isEntry:false,
            type:"labelItem",
            index:1
        }
    ]
}
