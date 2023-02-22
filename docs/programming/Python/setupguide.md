# **A quick guide to setup python**

## **Debian Linux**

1. Update your local package <pre><code>sudo apt-get update</code></pre>
2. Upgrade the packages <pre><code>sudo apt-get -y upgrade</pre></code>
3. Install supporting software, this will give you better control over package manager. <pre><code>sudo apt install software-properties-common</code></pre> 
4. Add *Deadsnakes* PPA, if prompted press enter to continue. <pre><code>sudo add-apt-repository ppa:deadsnakes/ppa</code></pre>
5. Update the package manager again <pre><code>sudo apt-get update</code></pre>
6. Install desired python version, you can change the version to any by changing the version number after python. <pre><code>sudo apt-get install python3.9</code></pre>
7. Install pip <pre><code>sudo apt install -y python3-pip</code></pre>
8. Install required packages for python <pre><code>sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev python3-dev wget</code></pre>
9. Once teh process is complete, check python version <pre><code>pthon3 -V</code></pre>

### ***Setting up virtual environment***
***Method 1***

Using virtualenv:
1. Install vevn module <pre><code>sudo apt install -y python3-venv</code></pre>
2. Choose the directory to make the virtaul environment, if it is current directory then, <pre><code>python3.9 -m vevn NAME-ENV <br># you can also use below command for general use<br>python3 -m venv venv</code></pre>
3. Activate the env <pre><code>source NAME-ENV/bin/activate</code></pre>