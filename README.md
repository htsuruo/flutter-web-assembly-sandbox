# flutter_web_assembly_sandbox

This repository is a demo hosted with various build options, focusing on Flutter Web's Wasm support. You can check the differences in behavior and more by visiting the URLs listed in the following table.

| BuildOptions | Hosting URL |
| --- | --- |
| `--wasm` | https://flutter-web-assembly-sandbox.firebaseapp.com/#/ |
| `--web-renderer canvaskit` | https://flutter-web-assembly-sandbox-js.firebaseapp.com/#/ |
| `--web-renderer html` | https://flutter-web-assembly-sandbox-html.firebaseapp.com/#/ |

## Requirements

- [fvm | Flutter Version Management](https://fvm.app/)(global)
- Firebase project

## Build and deploy

```sh

# All build options
dart run melos run hosting:all

# Wasm
dart run melos run hosting:wasm

# CanvasKit renderer
dart run melos run hosting:js

# html renderer
dart run melos run hosting:html
```
