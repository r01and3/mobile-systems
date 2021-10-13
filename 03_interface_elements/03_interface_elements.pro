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
TARGET = 03_interface_elements

CONFIG += sailfishapp

SOURCES += src/03_interface_elements.cpp

DISTFILES += qml/03_interface_elements.qml \
    qml/cover/CoverPage.qml \
    qml/pages/02_textfield.qml \
    qml/pages/03_button.qml \
    qml/pages/04_counter.qml \
    qml/pages/05_date.qml \
    qml/pages/06_time.qml \
    qml/pages/07_list.qml \
    qml/pages/08_toggle.qml \
    qml/pages/09_slider.qml \
    qml/pages/Main.qml \
    rpm/03_interface_elements.changes.in \
    rpm/03_interface_elements.changes.run.in \
    rpm/03_interface_elements.spec \
    rpm/03_interface_elements.yaml \
    translations/*.ts \
    03_interface_elements.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/03_interface_elements-de.ts
