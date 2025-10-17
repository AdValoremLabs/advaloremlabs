<repo>/
├─ README.md                 ← landing page (what/why/how)
├─ LICENSE                   ← MIT (or your pick)
├─ CHANGELOG.md              ← human-readable release notes
├─ docs/
│  ├─ quickstart.html|md
│  ├─ setup.md
│  ├─ troubleshooting.md
│  └─ images/ (screenshots, diagrams)
├─ scripts/
│  ├─ flash_<kit>.sh
│  └─ verify_checksum.sh
├─ config/
│  ├─ sample.yaml/json (HA network, Proxmox cloud-init, etc.)
│  └─ overlays/ (boot cmdline, udev rules if any)
├─ releases/                 ← small artifacts you commit (not huge)
│  └─ SHA256SUMS.txt
└─ .github/
   ├─ workflows/ (CI)
   └─ ISSUE_TEMPLATE/ PULL_REQUEST_TEMPLATE.md
