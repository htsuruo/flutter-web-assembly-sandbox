# flutter_web_assembly_sandbox

A new Flutter project.

| Compiled | Renderer | Hosting URL |
| --- | --- | --- |
| Wasm | CanvasKit | https://flutter-web-assembly-sandbox.firebaseapp.com/#/ |
| JavaScript | CanvasKit | https://flutter-web-assembly-sandbox-js.firebaseapp.com/#/ |
| JavaScript | HTML DOM | https://flutter-web-assembly-sandbox-html.firebaseapp.com/#/ |

## requirement

- [fvm | Flutter Version Management](https://fvm.app/)(global)
- Firebase project

## How to build and deploy

```sh
# Wasm
melos run hosting:wasm

# CanvasKit renderer
melos run hosting:js

# html renderer
melos run hosting:html
```
