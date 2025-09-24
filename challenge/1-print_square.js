#!/usr/bin/env node
'use strict';

const arg = process.argv[2];
const size = parseInt(arg, 10);

if (Number.isNaN(size) || size < 1) {
  console.log('Missing size');
  process.exit(1);
}

const line = '#'.repeat(size);
for (let i = 0; i < size; i++) {
  console.log(line);
}
