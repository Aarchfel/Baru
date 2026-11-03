use std::{fs, path::Path};

pub fn collect() -> Vec<String> {
    let mut files = Vec::new();

    collect_recursive(Path::new("qml"), &mut files);

    files.sort();
    files
}

fn collect_recursive(dir: &Path, files: &mut Vec<String>) {
    println!("cargo:rerun-if-changed={}", dir.display());

    for entry in fs::read_dir(dir).unwrap() {
        let entry = entry.unwrap();

        let path = entry.path();

        if path.is_dir() {
            collect_recursive(&path, files);
        } else if path.extension().is_some_and(|ext| ext == "qml") {
            files.push(path.to_string_lossy().replace('\\', "/"));
        }
    }
}
