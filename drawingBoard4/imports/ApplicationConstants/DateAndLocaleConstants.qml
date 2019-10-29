pragma Singleton
import QtQuick 2.0
import QtQml 2.0

QtObject {
    readonly property var locale: Qt.locale()
    readonly property date currentDate: new Date()
    readonly property date currentYear: currentDate.getFullYear();
    readonly property date previousYear: currentDate.getFullYear() - 1;
    readonly property date previousTwoYear: currentDate.getFullYear() - 2;
    readonly property date previousThreeYear: currentDate.getFullYear() - 3;
    readonly property date currentMonthJVS: currentDate.getMonth();
    readonly property date currentMonth: currentDate.getMonth() + 1;
    readonly property date sixMonthJVS: currentDate.getMonth() -6;
    readonly property date sixMonth: (currentDate.getMonth() -6)+1;
    readonly property date startWeek:getStartOfWeek(currentDate)
    readonly property date endWeek: getEndOfWeek(currentDate)
    property string dateString:"testing"
    function getStartOfWeek (date){
           var iDayOfWeek = date.getDay();
           var iDifference = date.getDate() - iDayOfWeek + (iDayOfWeek === 0 ?  -6:1);
           return new Date(date.setDate(iDifference));
       }

       function getEndOfWeek(date){
           return new Date(date.setDate(date.getDate() + (7 - date.getDay()) === 7 ? 0 : (7 - date.getDay()) ));
       }

    Component.onCompleted: {
        dateString = currentDate.toLocaleDateString();
        print(Date.fromLocaleDateString(locale,dateString,"ddd yyyy-MM-dd hh:mm:ss"));
        console.log("The current year is"+currentYear);
        console.log("The previous year is"+previousYear,previousTwoYear,previousThreeYear,currentMonth,sixMonth);

    }
}
