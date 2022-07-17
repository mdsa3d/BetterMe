# Cheatsheet Crontab

## Editing Crontab
```shell
crontab -e
```
You may need to set your default editor through the EDITOR shell variable.
You can use an inline environment variable:
```shell
EDITOR=vi crontab -e
```
## Crontab File Format

```shell
*        *      *             *      *             <command>
# minutes  hours  day of month  month  day of week
```
<table border=2>
<tr><th>field</th><th>allowed values</th></tr>
<tr><td>minute</td><td>0-59</td></tr>
<tr><td>hour</td><td>0-23</td></tr>
<tr><td>day of month</td><td>1-31</td></tr>
<tr><td>month</td><td>1-12</td></tr>
<tr><td>day of week</td><td>0-7 (0 or 7 is Sun, or use names)</td></tr>
</table>
