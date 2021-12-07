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
TARGET = 06_state

CONFIG += sailfishapp

SOURCES += src/06_state.cpp

DISTFILES += qml/06_state.qml \
    qml/cover/CoverPage.qml \
    qml/pages/01_traffic_lights.qml \
    qml/pages/02_traffic_lights_men.qml \
    qml/pages/03_hello_world.qml \
    qml/pages/04_traffic_lights_component.qml \
    qml/pages/05_button_creator.qml \
    qml/pages/06_stopwatch.qml \
    qml/pages/07_page_stack_signal.qml \
    qml/pages/ButtonCreator.qml \
    qml/pages/Main.qml \
    qml/pages/TrafficLights.qml \
    rpm/06_state.changes.in \
    rpm/06_state.changes.run.in \
    rpm/06_state.spec \
    rpm/06_state.yaml \
    translations/*.ts \
    06_state.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/06_state-de.ts
