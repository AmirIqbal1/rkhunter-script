# rkhunter-script
This bash script checks for rootkits installed on Ubuntu 18.04 OS.

Follow guide https://kifarunix.com/how-to-install-rkhunter-rootkit-hunter-on-ubuntu-18-04/ to install rkhunter and remember to whitelist "/etc/.java" on conf file (/etc/rkhunter.conf).

The script automatically updates rkhunter to latest version and performs a check without any keypress needed, just make sure you follow link above to initialize first install.

# Run as Root!

Run the command below to check for any unrecognised configuration options. If any configuration problems are found, then they will be displayed and the return code will be set to 1.

rkhunter -C

Once you followed guide above do this:

chmod +x rkhunter-check.sh

Then run it:

./rkhunter-check.sh
