# PERFORMANCE_MONITOR

## NAME

performance_monitor - gather and display performance metrics

## SYNOPSIS

performance_monitor

## DESCRIPTION

performance_monitor gathers various system performance metrics using the
vcgencmd command available on Raspberry Pi. The data gathered includes
the system temperature, CPU frequency, core voltage, whether or not the
CPU frequency has been capped,a nd whether or not the system is currently
throttled.

All data is written to standard output, separated by tabs. Each line is
prefaced with the number of seconds elapsed since the script was
started.

performance_monitor will continue indefinitely. To gracefully terminate
performance_monitor, send a USR1 signal to it's process ID.

## AUTHOR
Jay Kumar

