QT       += core sql

QT       -= gui

TARGET    = test
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

ios {
    CONFIG(debug, debug|release) {
        LIBS += -lsqlitecipher_debug
    } else {
        LIBS += -lsqlitecipher
    }
}

SOURCES += main.cpp

DISTFILES += \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle.properties \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}