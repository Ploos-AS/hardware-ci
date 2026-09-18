# Ploos-AS hardware-ci

Central reusable GitHub Actions workflows for Ploos-AS open-hardware projects.

## Goals

- keep hardware qualification logic in one maintained place;
- provide a consistent maker-friendly manufacturing gate;
- generate reproducible manufacturing packages;
- emit machine-readable and human-readable qualification reports;
- keep project repositories responsible for their own hardware sources, exceptions, and documentation.

## Reusable workflow

Hardware projects should pin the stable major tag:

```yaml
uses: Ploos-AS/hardware-ci/.github/workflows/manufacturing.yml@v1
```

The reusable workflow locates a single KiCad PCB by default. Projects with multiple boards should supply `board_path` explicitly.

Do not point production hardware projects at `@main`. Development happens on `main`; a tested backward-compatible release may later move the `v1` major tag forward. Immutable release tags such as `v1.0.0` may also be used when an exact CI implementation must be frozen.

## Self-test

`.github/workflows/self-test.yml` runs on changes to `main`, pull requests, and manual dispatch. It validates the public reusable-workflow contract and versioning documentation before a new revision should be considered for the stable major tag.

Moving the `v1` major tag is a deliberate release operation and must only happen after the candidate on `main` has passed its CI and compatibility review.

## Policy

Project-local policy and release documentation remain canonical for each project. This repository centralizes CI implementation, not project-specific engineering decisions.

Hardware projects should continue to include, as applicable:

- `MANUFACTURING.md`
- `MAKER-FRIENDLY.md`
- `COMPONENT-POLICY.md`
- `MANUFACTURER-PROFILES.md`
- `ORDERING.md`
- `HARDWARE-RELEASE-CHECKLIST.md`
- `LICENSE-HARDWARE`
- `LICENSE-SOFTWARE`

The default philosophy is **maker friendly first, cost second**.
