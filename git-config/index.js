#!/usr/bin/env node

import * as p from "@clack/prompts";
import { setTimeout } from "node:timers/promises";
import color from "picocolors";
import { spawn } from "child_process";
import fs from "fs";
import os from "os";
const SSHDIR = os.homedir() + "/.ssh";

const clear = () => {
  const cleanssh = spawn("ssh-add", ["-D"]);
  cleanssh.stdout.on("data", (data) => console.log(`${data}`));
  cleanssh.stderr.on("data", (data) => console.log(`${data}`));
  cleanssh.on("close", (code) =>
    console.log(`Process 1 exited with code: ${code}`)
  );
};

const attach = (path) => {
  sshpathIsValid(path);
  const add = spawn("ssh-add", [path]);
  add.stdout.on("data", (data) => console.log(`${data}`));
  add.stderr.on("data", (data) => console.log(`${data}`));
  add.on("close", (code) =>
    console.log(`Process 2 exited with code:  ${code}`)
  );
};

function sshpathIsValid(path) {
  if (!fs.existsSync(path)) {
    throw new Error("SSH PATH IS INVALID");
  }
}

function toggler(profile) {
  const absolutePath =
    profile === "personal"
      ? SSHDIR + "/ahmedsaheed"
      : SSHDIR + "/ahmedsaheed_toast";
  clear();
  attach(absolutePath);
}

async function main() {
  console.clear();
  await setTimeout(1000);
  p.intro(`${color.bgCyan(color.black(" Git Manager "))}`);

  const project = await p.group({
    who: () =>
      p.select({
        message: "Who's using git",
        initialValue: "work",
        options: [
          { value: "personal", label: "Personal" },
          { value: "Work", label: "Work" },
        ],
      }),
  });

  toggler(project.who);

}

main().catch(console.error);
