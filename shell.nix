{ pkgs ? import <nixpkgs> {} }:

let
  qtEnv = pkgs.qt6.env "qt-env" (with pkgs.qt6; [
    qtbase
    qtdeclarative
    qttools
    qtwayland
    qtlanguageserver
  ]);
in
pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.pkg-config
    pkgs.cmake
    pkgs.ninja
    pkgs.clang-tools
    qtEnv
  ];

  buildInputs = with pkgs; [
    rustc
    cargo
    rust-analyzer
    rustfmt
    clippy

    openssl
    libglvnd
    libglvnd.dev
  ];

  shellHook = ''
    export QMAKE="${qtEnv}/bin/qmake"
    export QT_VERSION_MAJOR="6"
    export QT_QPA_PLATFORM_PLUGIN_PATH="${qtEnv}/lib/qt-6/plugins/platforms"

    export QML_IMPORT_PATH="${qtEnv}/lib/qt-6/qml"

    export LIBRARY_PATH="${pkgs.libglvnd}/lib:$LIBRARY_PATH"
    export LD_LIBRARY_PATH="${pkgs.libglvnd}/lib:$LD_LIBRARY_PATH"
    export RUSTFLAGS="-L ${pkgs.libglvnd}/lib $RUSTFLAGS"
  '';
}
