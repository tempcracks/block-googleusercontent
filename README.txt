## BLOCK-GOOGLEUSERCONTENT

A simple config file for pf firewall for block googleusercontent.com

### Intro

If you're have encountered a problem as:

[phpbb](https://www.phpbb.com/community/viewtopic.php?t=2627241)

also

[reddit](https://www.reddit.com/r/privacytoolsIO/comments/jwglv1/blocking_access_to_all_sites/)

block-googleusercontent is a file configuration for pf firewall

## Using

```

pfctl -e
cp pf.conf /etc/pf.conf
pfctl -nf /etc/pf.conf

```

## Addition
>[!TIP]
>Helpful advice for doing things betterr or more easily

>[!STRONG]
>make owner,group  file root,wheel

```
sudo chown root:wheel pf.conf

```
