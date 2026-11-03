mod build_support;
use cxx_qt_build::{CxxQtBuilder, QmlModule};

fn main() {
    CxxQtBuilder::new_qml_module(
        QmlModule::new("com.baru.app").qml_files(build_support::qml::collect()),
    )
    .qrc("assets/fonts.qrc")
    .qrc("assets/icons.qrc")
    .build();
}
