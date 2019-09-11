QT += quickcontrols2 quick qml
CONFIG += c++11
QT += widgets
# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
message(Qt version: $$[QT_VERSION])
message(Qt is installed in $$[QT_INSTALL_PREFIX])
message(Qt resources can be found in the following locations:)
message(Documentation: $$[QT_INSTALL_DOCS])
message(Header files: $$[QT_INSTALL_HEADERS])
message(Libraries: $$[QT_INSTALL_LIBS])
message(Binary files (executables): $$[QT_INSTALL_BINS])
message(Plugins: $$[QT_INSTALL_PLUGINS])
message(Data files: $$[QT_INSTALL_DATA])
message(Translation files: $$[QT_INSTALL_TRANSLATIONS])
message(Settings: $$[QT_INSTALL_SETTINGS])
message(Examples: $$[QT_INSTALL_EXAMPLES])
message(Demonstrations: $$[QT_INSTALL_DEMOS])
SOURCES += \
        lineintersect.cpp \
        main.cpp \
        medicaltestmodel.cpp \
        patientresultmodel.cpp \
        plotdatapoint.cpp \
        plotpoints.cpp \
        signalinvoker.cpp \
        sortfiltermodel.cpp \
        supplementpagepatienttablemodel.cpp \
        switchpatienttablemodel.cpp \
        testpagesupplementationmodel.cpp \
        testresultmodels.cpp

RESOURCES += qml.qrc \
    images.qrc\
     qtquickcontrols2.conf \
  #  icons/small/index.theme\
   # icons/normal/index.theme\
   # icons/big/index.theme\
    icons/all/index.theme\
  #  $$files(icons/small/32x32/*.png)\
  #  $$files(icons/small/32x32@2/*.png)\
  #  $$files(icons/small/32x32@3/*.png)\
  # $$files(icons/small/32x32@4/*.png)\
 #   $$files(icons/normal/50x50/*.png)\
 #   $$files(icons/normal/50x50@2/*.png)\
 #   $$files(icons/normal/50x50@3/*.png)\
 #   $$files(icons/normal/50x50@4/*.png)\
 #   $$files(icons/big/100x100/*.png)\
 #   $$files(icons/big/100x100@2/*.png)\
 #   $$files(icons/big/100x100@3/*.png)\
 #   $$files(icons/big/100x100@4/*.png)\
    $$files(icons/all/32x32/*.png)\
    $$files(icons/all/32x32@2/*.png)\
    $$files(icons/all/32x32@3/*.png)\
    $$files(icons/all/32x32@4/*.png)\
    $$files(icons/all/50x50/*.png)\
    $$files(icons/all/50x50@2/*.png)\
    $$files(icons/all/50x50@3/*.png)\
    $$files(icons/all/50x50@4/*.png)\
    $$files(icons/all/100x100/*.png)\
    $$files(icons/all/100x100@2/*.png)\
    $$files(icons/all/100x100@3/*.png)\
    $$files(icons/all/100x100@4/*.png)\
    $$files(appImage/*.png)

# Additional import path used to resolve QML modules in Qt Creator's code model
#QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
#QML_DESIGNER_IMPORT_PATH =
QML_IMPORT_TRACE = 1
QML_IMPORT_PATH += ./imports
QML_IMPORT_PATH += ./imports/
QML_IMPORT_PATH += ./imports/ApplicationConstants/
QML_IMPORT_PATH += ./imports/ApplicationConstants
QML_IMPORT_PATH +=$$PWD/imports/
QML2_IMPORT_PATH +=$$PWD/imports/
QML_IMPORT_PATH +=$$PWD/models/
QML2_IMPORT_PATH +=$$PWD/models/
QML_IMPORT_PATH +=$$PWD/delegates/
QML2_IMPORT_PATH +=$$PWD/delegates/
QML_IMPORT_PATH +=$$PWD/page/
QML2_IMPORT_PATH +=$$PWD/page/
QML_IMPORT_PATH +=$$PWD/common/
QML2_IMPORT_PATH +=$$PWD/common/
# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    #MpodDisplayer.qml \
    PlotterPointers.qml \
    XYPlot.qml \
    icons/all/32x32/Test.png \
    #mpIndicator.qml \
    #mpodDisplayItem.qml \
    #plotPointers.qml \
    supplementPagePatientTableModel.qml

HEADERS += \
    lineintersect.h \
    medicaltestmodel.h \
    patientresultmodel.h \
    plotdatapoint.h \
    plotpoints.h \
    signalinvoker.h \
    sortfiltermodel.h \
    supplementpagepatienttablemodel.h \
    switchpatienttablemodel.h \
    testpagesupplementationmodel.h \
    testresultmodels.h
