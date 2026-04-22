const path = require("node:path");
const { spawnSync } = require("node:child_process");

const targets = process.argv.slice(2);
const args = ["--codes", ...targets];
const quote = (value) => `"${String(value).replace(/(["\\])/g, "\\$1")}"`;
const luarocksBin = process.env.APPDATA
  ? path.join(process.env.APPDATA, "luarocks", "bin")
  : "";
const env = { ...process.env };

if (luarocksBin) {
  env.PATH = env.PATH
    ? `${env.PATH}${path.delimiter}${luarocksBin}`
    : luarocksBin;
}

const result = process.platform === "win32"
  ? spawnSync(["luacheck", ...args.map(quote)].join(" "), {
      stdio: "inherit",
      shell: true,
      env,
    })
  : spawnSync("luacheck", args, {
      stdio: "inherit",
      env,
    });

if ((result.error && result.error.code === "ENOENT") || result.status === 9009) {
  console.error("luacheck is required for Lua lint checks.");
  console.error("Install LuaRocks, then run: luarocks install luacheck");
  process.exit(1);
}

process.exit(result.status ?? 1);
