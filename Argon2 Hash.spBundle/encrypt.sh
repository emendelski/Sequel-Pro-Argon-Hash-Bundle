#!/usr/bin/php
<?php
    $input = trim(fgets(STDIN));
    print password_hash($input, PASSWORD_ARGON2I, [
        'memory_cost' => 1<<17,
        'time_cost'   => 4,
        'threads'     => 2
    ]);
?>
