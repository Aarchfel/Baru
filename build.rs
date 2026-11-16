mod build_support;
use cxx_qt_build::{CxxQtBuilder, QmlModule};

fn main() {
    CxxQtBuilder::new_qml_module(
        QmlModule::new("io.github.aarchfel.baru").qml_files(build_support::qml::collect()),
    )
    .qrc("assets/fonts.qrc")
    .qrc("assets/icons.qrc")
    .build();
}
