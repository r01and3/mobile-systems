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
TARGET = 05_db

CONFIG += sailfishapp

SOURCES += src/05_db.cpp

DISTFILES += qml/05_db.qml \
    qml/cover/CoverPage.qml \
    qml/pages/01_color_list.qml \
    qml/pages/02_add_list.qml \
    qml/pages/03_color_list_js.qml \
    qml/pages/04_currency.qml \
    qml/pages/05_currency_js.qml \
    qml/pages/06_notes.qml \
    qml/pages/07_config.qml \
    qml/pages/08_config_group.qml \
    qml/pages/Main.qml \
    rpm/05_db.changes.in \
    rpm/05_db.changes.run.in \
    rpm/05_db.spec \
    rpm/05_db.yaml \
    translations/*.ts \
    05_db.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/05_db-de.ts
