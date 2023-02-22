# CLI
User can use either `zypper` or `yast2` command for managing and updating installed software including Linux kernel.

## **Zypper**
It is a command line package manager, equivalent to
<table border=2>
    <tr>
        <th>Package Manager</th>
        <th>Linux Flavours</th>
    </tr>
    <tr>
        <td><code>apt/apt-get</code></td>
        <td>Debian/Ubuntu</td>
    </tr>
    <tr>
        <td><code>apk</code></td>
        <td>Alpine</td>
    </tr>
    <tr>
        <td><code>yum</code></td>
        <td>CentOS/RHEL/Fedora</td>
    </tr>
</table>

Zypper commands can be used to:
- Install new packages
- Delete or remove software
- Update Linux kernel on OpenSUSE
- Update all installed packages with newer available version and more
- Apply patches and more

<table border=2>
    <caption>Commonly used zypper commands</caption>
    <tr>
        <th><center>Description</center></th>
        <th><center>Commands</center></th>
    </tr>
    <tr>
        <td>Commands Manual</td>
        <td><center><code>man zypper</code></center></td>
    </tr>
    <tr>
        <td>Verify that repos are enabled</td>
        <td><center><code>zypper repos --uri</code></center></td>
    </tr>
        <td>Referesh openSUSE repositories</td>
        <td>
            <ul>
            <li><code>sudo zypper refresh</code></li>
            <li><code>sudo zypper ref</code></li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>List all applicable patches</td>
        <td>
            <ul>
                <li><code>sudo zypper list-patches</code></li>
                <li><code>sudo zypper lp</code></li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>List all available updates</td>
        <td>
            <ul>
                <li><code>sudo zypper list-updates</code></li>
                <li><code>sudo zypper lu</code></li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>Upgrade to latest packages</td>
        <td>
            <ul>
                <li><code>sudo zypper update</code></li>
                <li><code>sudo zypper up</code></li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>View outdated processes</td>
        <td><center><code>zypper ps -s</code></center></td>
    </tr>
</table>
<br>
<br>

## **yast/yast2**
YaST is universal configuration utility and comes with both GUI and TUI. Just run the following command to apply severe security updates:
<pre><code>sudo yast2 online_update</code></pre>

<br>

## **References**
- [OpenSUSE kernel commands](https://www.cyberciti.biz/faq/update-opensuse-linux-software-kernel-command/)