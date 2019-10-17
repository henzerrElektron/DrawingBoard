pragma Singleton
import QtQuick 2.0
import QtQml 2.0

QtObject {
    readonly property var locale: Qt.locale()
    readonly property date currentDate: new Date()
    property string dateString

    Component.onCompleted: {
        dateString = currentDate.toLocaleDateString();
        print(Date.fromLocaleDateString(dateString));
    }
}
