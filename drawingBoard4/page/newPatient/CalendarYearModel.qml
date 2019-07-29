import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.11
import QtQuick.Templates 2.5
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4
import QtQuick.Dialogs.qml 1.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.calendar 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import Qt.labs.settings 1.0
import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.2
//import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import TestResultModels 0.1
import QtQml.Models 2.12
import Qt.labs.calendar 1.0

CalendarModel {
    id:calModel
    property var difference: calModel.yearAt(0)
    from: new Date(1900, 0, 1)
    to: new Date()//(2015, 11, 31)
    function calculateYears() { // birthday is a date
        // var years = new Date(new Date() - new Date(1900, 0, 1)).getFullYear() - 1970;
        var years = new Date(to - from).getFullYear() - 1970;
        console.log(years);
        return years;
        //                               var ageDifMs = Date.now() - birthday.getTime();
        //                               var ageDate = new Date(ageDifMs); // miliseconds from epoch
        //                               console.log("The difference is"+ ageDifMs + ageDate + Math.abs(ageDate.getUTCFullYear() - 1970))
        //                               return Math.abs(ageDate.getUTCFullYear() - 1970);
    }
}
