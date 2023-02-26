# img2pdf
Dockerfile for creating an image with the img2pdf application, which you will use to merge graphic files into a single PDF file.

Before I proceed, I just wanted to mention that I create my images in the simplest way possible, so that they are easy to understand and do not require extensive knowledge of Docker. Therefore, they may not always comply with accepted standards.<br />

<b>Why is that?</b>

Well, today's image is a perfect example. To adapt it to the standard, i.e., to use ENTRYPOINT and CMD in the appropriate form, it would be better to write a script, for example in bash or use the find command with quite complex options. In my opinion, it would make things more complicated in such a simple image, making it difficult to read. If you know Docker and understand what I'm talking about, then this is a challenge for you :).
Sometimes I need to merge several images into a single PDF file, especially for presentations, which I sometimes create in image format. Therefore, I have created an image that, by providing a directory containing the images, merges them into a single PDF file.

Github: https://github.com/kgodzisz/img2pdf<br />
Blog: https://dockeryzacjaswiata.pl<br />
Docker Hub: https://hub.docker.com/r/kgodzisz/img2pdf<br />

To download the file from GitHub:

<code>git clone https://github.com/kgodzisz/img2pdf.git</code>

To create your own image in your local repository:

<code>docker build -t img2pdf .</code>

To run the tool:

<code>docker run --rm -e NAME=<name> -v /path/to/folder:/app img2pdf</code>

Or to download the prepared file from the Docker Hub repository:

<code>docker run --rm -e NAME=<name> -v /path/to/folder:/app kgodzisz/img2pdf</code>

Description of the options used in the commands: 

<code>--rm</code> - the container will automatically remove itself after completing the task; <br />
<code>-e</code> - we specify an environment variable that will be used to name the PDF file. If you don't specify a name, the file will be named default.pdf. <br />
<code>-v</code> - the address to the images you want to create the PDF from: the working directory of the container. If you don't set /app here, you need to designate the appropriate directory in the Dockerfile; <br />
<code>img2pdf</code> - the name of the created image we want to use;<br />
<code>kgodzisz/img2pdf</code> - the address to the image on the DockerHub platform.<br />
