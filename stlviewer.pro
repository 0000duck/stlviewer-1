CONFIG += qt opengl debug
QT += opengl
RESOURCES += stlviewer.qrc
HEADERS += stlviewer.h
SOURCES += stlviewer.cpp
SOURCES += main.cpp
win32 {
    SOURCES +=  axisglwidget.cpp \
                axisgroupbox.cpp \
                dimensionsgroupbox.cpp \
                glmdichild.cpp \
                glwidget.cpp \
                meshinformationgroupbox.cpp \
                propertiesgroupbox.cpp \
                stlfile.cpp \
                vector.cpp
    HEADERS +=  axisglwidget.h \
                axisgroupbox.h \
                dimensionsgroupbox.h \
                glmdichild.h \
                glwidget.h \
                meshinformationgroupbox.h \
                propertiesgroupbox.h \
                stlfile.h \
                vector.h
}
unix {
    SOURCES +=  axisglwidget.cpp \
                axisgroupbox.cpp \
                dimensionsgroupbox.cpp \
                glmdichild.cpp \
                glwidget.cpp \
                meshinformationgroupbox.cpp \
                propertiesgroupbox.cpp \
                stlfile.cpp \
                vector.cpp
    HEADERS +=  axisglwidget.h \
                axisgroupbox.h \
                dimensionsgroupbox.h \
                glmdichild.h \
                glwidget.h \
                meshinformationgroupbox.h \
                propertiesgroupbox.h \
                stlfile.h \
                vector.h
}
!exists( main.cpp ) {
    error( "No main.cpp file found" )
}
win32:debug {
    CONFIG += console
}