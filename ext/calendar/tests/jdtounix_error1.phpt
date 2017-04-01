--TEST--
Test jdtounix() function : error conditions
--CREDITS--
edgarsandi - <edgar.r.sandi@gmail.com>
--INI--
date.timezone=UTC
--SKIPIF--
<?php include 'skipif.inc'; ?>
--FILE--
<?php
var_dump(jdtounix()) . PHP_EOL;
var_dump(jdtounix(2440579)) . PHP_EOL;
?>
--EXPECTF--
Warning: jdtounix() expects exactly 1 parameter, 0 given in %s on line %d
NULL
bool(false)