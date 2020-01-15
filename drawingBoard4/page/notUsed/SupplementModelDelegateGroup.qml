import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.0
import QtQml.Models 2.12
//import QtQml.Models 2.1
import "."
import "./../images/"
import "./../validators/"
import ApplicationConstants 1.0

DelegateModel {
    id:supplementDelegateModel
    items.objectName: "SupplementDelegateModel"
    items.includeByDefault: false
    persistedItems.includeByDefault: false

}
