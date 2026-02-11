# graphicgen

Single-file dithering playground (`dithering-effect.html`) with Fly.io deployment.

## Continue Work Anywhere (Home/Office)

Use one of these two flows:

1. Local machine flow
   - Commit and push from current machine.
   - On the other machine: clone (or pull) and continue.

2. Cloud flow (GitHub Codespaces)
   - Open this repository on GitHub.
   - Click `Code` -> `Codespaces` -> `Create codespace on main`.
   - In terminal:
     - `python3 -m http.server 8000`
   - Open forwarded port `8000` preview.

## Files

- App: `dithering-effect.html`
- Container: `Dockerfile`
- Fly config: `fly.toml`
- Codespaces config: `.devcontainer/devcontainer.json`

## Deploy

```bash
fly deploy -a graphicgen
```
