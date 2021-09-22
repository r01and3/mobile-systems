# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = 02_rectangle_and_input

CONFIG += sailfishapp

SOURCES += src/02_rectangle_and_input.cpp

DISTFILES += qml/02_rectangle_and_input.qml \
    qml/cover/CoverPage.qml \
    qml/pages/02_anchors_rect.qml \
    qml/pages/03_row_column_rect.qml \
    qml/pages/04_grid_rect.qml \
    qml/pages/05_mutation.qml \
    qml/pages/06_animation.qml \
    qml/pages/07_inputs.qml \
    qml/pages/MainPage.qml \
    rpm/02_rectangle_and_input.changes.in \
    rpm/02_rectangle_and_input.changes.run.in \
    rpm/02_rectangle_and_input.spec \
    rpm/02_rectangle_and_input.yaml \
    translations/*.ts \
    02_rectangle_and_input.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/02_rectangle_and_input-de.ts
