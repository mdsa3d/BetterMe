# **Cheatsheet for ***[Git](https://git-scm.com)*****

<table border=1>
<tr>
<th><b>Command</b></th>
<th><b>Description</b></th>
</tr>
<tr>
    <td><code>git init<code></td>
    <td>Register a project as local git repository</td>
</tr>
<tr>
    <td><code>git add .</code></td>
    <td>add all the files with changes to staging</td>
</tr>
<tr>
    <td><code>git add filename</code></td>
    <td>add a specific file to staging</td>
</tr>
<tr>
    <td><code>git commit -m</code></td>
    <td>Commit your changes</td>
</tr>
<tr>
    <td><code>git pull</code></td>
    <td>Pull the latest changes from the repository host</td>
</tr>
<tr>
    <td><code>git push</code></td>
    <td>Push the changes to the repository host</td>
</tr>
<tr>
    <td><code>git push origin branch_name</code></td>
    <td>Push the changes to the remote repository</td>
</tr>
<tr>
    <td><code>git branch branch_name</code></td>
    <td>creates a new branch with name <b>branch_name</b></td>
</tr>
<tr>
    <td><code>git switch branch_name</code></td>
    <td>switch the branch to <b>branch_name</b></td>
</tr>
<tr>
    <td><code>git pull origin branch_name --allow-unrelated-histories</code></td>
    <td>allow mismatching and force pulls everything from the repository host to local directory</td>
</tr>
</table>

## **References**
- [Git cheat sheet by Tower](https://www.git-tower.com/blog/git-cheat-sheet/)
- [Connecting local folder to repository](https://stackoverflow.com/questions/36132956/how-to-connect-local-folder-to-git-repository-and-start-making-changes-on-branch)
- [Merge unrelated histories](https://stackoverflow.com/questions/37937984/git-refusing-to-merge-unrelated-histories-on-rebase)