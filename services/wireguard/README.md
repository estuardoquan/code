# Wireguard

NOTE: On Fedora wireguard will fail by default as it seems like the module for `ip_tables` is not loaded by default.

For a quick fix:

```
$ modprobe ip_tables
```
For permanent solution load the module into the correct `/etc` directory; in the case of Fedora, we'll load:

```
$ echo ip_tables > /etc/modules_load.d/00-ip_tables.conf
```

## wg-easy
