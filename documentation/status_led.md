# STATUS_LED

## NAME

status_led - display CPU utilization on the system status LED

## SYNOPSIS

status_led

## DESCRIPTION

status_led queries the current CPU utilization, and lights the system
status LED for a related portion of a second. For example, 100% CPU
utilization will cause the LED to light for the entire second, and 50%
CPU utilization will cause the CPU to light for one half of a second.

status_led will continue indefinitely. To gracefully terminate
status_led, send a USR2 signal to it's process ID.

## AUTHOR
Jay Kumar