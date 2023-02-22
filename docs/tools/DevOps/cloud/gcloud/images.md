# Pushing and Pulling Images


### Different `hostname`, which specifies location where you will store the image.
<table border=1>
    <tr>
        <th><center>Server</center></th>
        <th>Description</th>
    </tr>
    <tr>
        <td><center>gcr.io</center></td> 
        <td> hosts images in data centers in the United States, but the location may change in the future</td>
    </tr>
    <tr>
        <td><center>`us.gcr.io`</center></td> 
        <td> hosts images in data centers in the United States, in a separate storage bucket from images hosted by gcr.io</td>
    </tr>
    <tr>
        <td><center>`eu.gcr.io`</center></td> 
        <td> hosts the images in the European Union</td>
    </tr>
    <tr>
        <td><center>`asia.gcr.io`</center></td> 
        <td> hosts images in data centers in Asia</td>
    </tr>
</table>

## References
- [push and pull container images on gcloud](https://cloud.google.com/container-registry/docs/pushing-and-pulling)