use cxx_qt_build::{CxxQtBuilder, QmlModule};

fn main() {
    CxxQtBuilder::new_qml_module(
        QmlModule::new("com.baru.app")
            .qml_file("qml/main.qml")
            .qml_file("qml/components/TitleBar.qml")
            .qml_file("qml/components/WindowButton.qml"),
    )
    .qrc("assets/fonts.qrc")
    .qrc("assets/icons.qrc")
    .build();
}
