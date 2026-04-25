# Contributing to ML-Projects-Hub

Thanks for your interest in contributing. This repository is a meta-hub: most of the actual code lives in the linked submodule repositories.

## Where to make changes

| Type of change | Where it goes |
|---|---|
| Bug fix or feature inside an existing project | The **submodule's own repository** — open a PR there. |
| New ML project | Create the project in its own repository, then add it here as a submodule (see below). |
| Hub-level docs, Makefile, CI, README | This repository. |

## Adding a new project

1. Create the project as a standalone GitHub repository with its own README, license, and dependencies.
2. From this repo, add it as a submodule tracking `main`:

   ```sh
   git submodule add https://github.com/<user>/<project>.git <project>
   git config -f .gitmodules submodule.<project>.branch main
   git add .gitmodules <project>
   ```

3. Add a row to the project table in [README.md](README.md).
4. Open a PR.

## Updating submodule pointers

To advance every submodule to the latest commit on its tracked branch:

```sh
make update
git add <submodule-paths>
git commit -m "Update submodule pointers"
```

The scheduled GitHub Action (`.github/workflows/update-submodules.yml`) does this automatically once a week and opens a PR.

## Style

- Keep the README's project table sorted by relevance, not alphabetically.
- One concern per PR.
- Match the conventions of the submodule you're touching.
