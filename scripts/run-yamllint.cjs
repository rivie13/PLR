const { spawnSync } = require("node:child_process");

const targets = process.argv.slice(2);
const candidates = [
  { cmd: "python", args: ["-m", "yamllint", ...targets] },
  { cmd: "py", args: ["-m", "yamllint", ...targets] },
];

let lastNotFound = false;

for (const candidate of candidates) {
  const result = spawnSync(candidate.cmd, candidate.args, { stdio: "inherit" });

  if (result.error && result.error.code === "ENOENT") {
    lastNotFound = true;
    continue;
  }

  process.exit(result.status ?? 1);
}

if (lastNotFound) {
  console.error("yamllint is required for YAML lint checks.");
  console.error("Install Python yamllint: python -m pip install --user yamllint");
}

process.exit(1);
