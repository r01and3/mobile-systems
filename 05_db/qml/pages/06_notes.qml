import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0

Page {
    id: page
    property var db

    function createNotes() {
        db.transaction(function(tx) {
            tx.executeSql("CREATE TABLE IF NOT EXISTS notes (" +
                          "id INTEGER PRIMARY KEY AUTOINCREMENT," +
                          "note TEXT NOT NULL);");
        });
    }

    function loadNotes() {
        notesModel.clear();
        db.readTransaction(function(tx) {
            var notes = tx.executeSql("SELECT * FROM notes;");
            for (var i = 0; i < notes.rows.length; i++) {
                notesModel.append({ id: notes.rows[i].id, note: notes.rows[i].note })
            }
        });
    }

    function addNote(note) {
        db.transaction(function(tx) {
            tx.executeSql("INSERT INTO notes (note) VALUES (?);", [note]);
        });
    }

    function removeNote(id) {
        db.transaction(function(tx) {
            tx.executeSql("DELETE FROM notes WHERE id = ?;", [id]);
        });
    }

    ListModel { id: notesModel }

    Column {
        anchors.fill: page
        SilicaListView {
            model: notesModel
            height: parent.height - noteText.height - addBtn.height
            width: parent.width
            header: PageHeader {title: "Notes"}
            delegate: Rectangle {
                width: parent.width
                height: 100
                color: "transparent"
                Text {
                    text: note
                    color: Theme.secondaryHighlightColor
                    font.pixelSize: 50
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        removeNote(id);
                        loadNotes();
                    }
                }
            }
        }
        TextField {
            id: noteText
        }
        Button {
            id: addBtn
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Add note"
            onClicked: {
                addNote(noteText.text);
                loadNotes();
            }
        }
    }

    Component.onCompleted: {
        db = LocalStorage.openDatabaseSync("notes", "1.0");
        createNotes();
        loadNotes();
    }
}
