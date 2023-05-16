# Publish package to Hex 📦

## Usage

- Create a key on your hex.pm dashboard.
- Add the key to your GitHub repository’s secrets. Call it `HEX_API_KEY`.
- Use this GitHub Action in your workflow:

```yaml
on:
  push:
    tags:
      - "*"

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - name: Check out
        uses: actions/checkout@v3

      - name: Publish package to Hex 📦
        uses: arkemishub/publish-to-hex@v1.13.4
        env:
          HEX_API_KEY: ${{ secrets.HEX_API_KEY }}
```
