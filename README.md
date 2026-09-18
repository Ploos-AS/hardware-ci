# Ploos-AS hardware-ci

Central reusable GitHub Actions workflows for Ploos-AS open-hardware projects.

## Goals

- keep hardware qualification logic in one maintained place;
- provide a consistent maker-friendly manufacturing gate;
- generate reproducible manufacturing packages;
- emit machine-readable and human-readable qualification reports;
- keep project repositories responsible for their own hardware sources, exceptions, and documentation.

## Reusable workflow

Projects call:

```yaml
uses: Ploos-AS/hardware-ci/.github/workflows/manufacturing.yml@main
```

The reusable workflow locates a single KiCad PCB by default. Projects with multiple boards should supply `board_path` explicitly.

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
