# golang-sublimetext3-docker
golang with ide sublimetext<br>
<p>
##build image<br>##
<code>docker build -t genchilu/golang-sublimetext3 .</code>
<p>
##for mac<br>##
<code>docker run -ti --rm -e DISPLAY=${virtualbox host ip}:0 genchilu/golang-sublimetext3</code>
<p>
##for ubuntu<br>##
<code>docker run -ti --rm -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix genchilu/golang-sublimetext3</code>

<p>
##reference
[how to run gui program in docker with mac](http://kartoza.com/how-to-run-a-linux-gui-application-on-osx-using-docker/ "Title")
