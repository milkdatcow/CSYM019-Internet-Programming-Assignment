<h1>
  CYSM019 Internet Programming Assignment
</h1>
<article>
  <p>
  Hello! This page is dedicated to my assignment work for my Internet Programming Module. 
  </p>
  <p>
    This repository contains the code for an events management website themed around arts and crafts. It is still in active development, so please excuse any unfinished code.
  </p>
</article>
<h2>
  Below are commands to run the website in a docker container.
</h2>
<p>
To create the server:<br>
docker build -t db-website . <br>
To turn the server on:<br> 
docker run -d -p 8080:80 --name db-website-container db-website <br><br>
To access the website:<br>
localhost:8080/index.html<br><br>
To turn the server off and remove it:<br> 
docker stop db-website-container<br>
docker rm db-website-container<br>
docker rmi db-website<br>
</p>
