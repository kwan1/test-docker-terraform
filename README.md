# How to Install Docker on Ubuntu 20 🤔

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/95eaa3fa-d676-4f67-bcf6-a2c9778ac9bf/Untitled.png)

# **Option 1: Installing Docker from Official Repository**

# **Step 1: Updating the Software Repository**

Start by opening a terminal window and updating the local repository:

```
sudo apt update
```

Wait for the process to complete.

# **Step 2: Downloading Dependencies**

Allow your Ubuntu 20.04 system to access the Docker repositories over HTTPS by running:

```
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
```

The above-mentioned command:

- Gives the package manager permission to transfer files and data over **https**.
- Allows the system to check security certificates.
- Installs **curl**, a a tool for transferring data.
- Adds scripts for managing software.

# **Step 3: Adding Docker’s GPG Key**

Next, add the GPG key to ensure the authenticity of the software package:

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

![https://phoenixnap.com/kb/wp-content/uploads/2021/04/add-the-docker-gpg-key.png](https://phoenixnap.com/kb/wp-content/uploads/2021/04/add-the-docker-gpg-key.png)

# **Step 4: Installing the Docker Repository**

Now install the Docker repository using the command:

```
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"
```

The command installs the latest repository for your specific Ubuntu release (in this case, 20.04 Focal Fossa).

# **Step 5: Installing the Latest Docker**

Start by updating the repository again:

```
sudo apt update
```

Now you can install the latest Docker version with:

```
sudo apt-get install docker-ce
```

# **Step 6: Verifying Docker Installation**

To confirm the installation check the version of Docker:

```
docker --version
```

![https://phoenixnap.com/kb/wp-content/uploads/2021/04/check-docker-version-on-ubuntu-20-04.png](https://phoenixnap.com/kb/wp-content/uploads/2021/04/check-docker-version-on-ubuntu-20-04.png)

It should show the Docker version, as in the image above.

# **Step 7: Enable Docker Service**

To start the Docker service run the following commands:

```
sudo systemctl start docker
```

Enable Docker to run at startup with:

```
sudo systemctl enable docker
```

Subscribe : 

LinkedIn 🤝 : [https://www.linkedin.com/in/nasiullha-chaudhari-5a80601a8/](https://www.linkedin.com/in/nasiullha-chaudhari-5a80601a8/)

# **Option 2: Installing Docker from Default Repositories**

# **Step 1: Updating the Local Repository**

Open a terminal window and update the local repository with:

```
sudo apt update
```

# **Step 2: Uninstalling Old Docker Versions**

Before installing the software, make sure you remove any old Docker packages on your Ubuntu 20.04 by running the command:

```
sudo apt-get remove docker docker-engine docker.io
```

# **Step 3: Installing Docker**

Now let’s install Docker on Ubuntu 20.04. Run the following command in the terminal window:

```
sudo apt install docker.io
```

Type **`y`** and hit **Enter** to confirm the installation. Once the install is completed, the output notifies you Docker has been installed.

# **Step 4: Checking Docker Installation**

To verify the installation check the Docker version:

```
docker --version
```

The output displays the Docker version, as in the image below.

![https://phoenixnap.com/kb/wp-content/uploads/2021/04/check-docker-version-on-ubuntu-20-04.png](https://phoenixnap.com/kb/wp-content/uploads/2021/04/check-docker-version-on-ubuntu-20-04.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0befd333-1ff2-407d-9f6d-0f2381a4c3e3/Untitled.png)

[Docker Commands without sudo ](https://www.notion.so/Docker-Commands-without-sudo-18701b301d7647bfaccdc92a49ca5235)
