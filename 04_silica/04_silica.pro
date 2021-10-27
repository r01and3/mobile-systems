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
TARGET = 04_silica

CONFIG += sailfishapp

SOURCES += src/04_silica.cpp

DISTFILES += qml/04_silica.qml \
    qml/cover/CoverPage.qml \
    qml/pages/01_stack_depth.qml \
    qml/pages/02_attached_page.qml \
    qml/pages/02_back_page.qml \
    qml/pages/03_text_dialog.qml \
    qml/pages/04_date_dialog.qml \
    qml/pages/05_time_dialog.qml \
    qml/pages/06_list.qml \
    qml/pages/07_web.qml \
    qml/pages/08_slideshow.qml \
    qml/pages/09_menus.qml \
    qml/pages/10_context.qml \
    qml/pages/Main.qml \
    rpm/04_silica.changes.in \
    rpm/04_silica.changes.run.in \
    rpm/04_silica.spec \
    rpm/04_silica.yaml \
    translations/*.ts \
    04_silica.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/04_silica-de.ts
