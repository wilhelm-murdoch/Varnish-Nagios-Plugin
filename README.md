This bash script must be made executable with `sudo chmod a+x` and executed locally on the host machine. At the moment this, this Nagios plugin attempts to check if the Varnish process is running. If not, it will attempt to restart automatically. If that fails, it will exit with a CRITICAL event.

