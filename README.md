# stop-only-action

Github action to prevent `.only` from being left in Cypress tests accidentally

## Usage

Add an action like the following to `.github/workflows/`:

```yaml
name: stop-only

on:
  pull_request:
    types: ["opened", "edited", "reopened", "synchronize"]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: stop-only
        uses: nbycomp/stop-only-action@master
```
