<h1> Manage System RAM </h1>

This script demonstrate few methods to flush or clear RAM cache. The goal is to implement a effective memory management for a linux server, designed for handling heavy numerical computations.

There are three methods to hard clean the RAM cache:

<ol>
    <li> Clear PageCache Only 
        <p> This method will only clean the common cache (disk cache) on the RAM. It is safest method in enterprise and production servers.
            <pre>
                <code>
                    #!/bin/bash
                    sync; echo 1 > /proc/sys/vm/drop_caches
                </code>
            </pre>
        </p>
    </li>

</ol>