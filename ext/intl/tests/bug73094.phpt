--TEST--
Unexpected object IntlRuleBasedBreakIterator still created with null input object. bug #73094
--SKIPIF--
<?php if( !extension_loaded( 'intl' ) ) print 'skip'; ?>
--FILE--
<?php
    $ahihi = new IntlRuleBasedBreakIterator("");
    var_dump($ahihi);
    $ahihi->next();
?>
--EXPECT--
NULL
