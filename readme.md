Version control (gitHub) steps:
1. Git from Tools > Initialize Git Repository
2. Setting > Create Repository on GitHub > back
3. click main > "First commit" to Message >Stage and commit all changes -
4. click 'Publish branch as 'origin/main'
5. any change > step3-4 again

goto github > repository startpytest > code >

behave using docker container steps:
john_mac@MikeMac welcome-to-docker %
1. PC local: git clone https://github.com/anhsguy/robottest.git
2. cd robottest
3. docker build -t robottest_image .
4. docker run robottest_image --1GB

View detail on container or PC terminal: 

docker: Error response from daemon: failed to create task for container: failed to create shim task: OCI runtime create failed: runc create failed: unable to start container process: exec: "robot -T FirstTestCase.robot": executable file not found in $PATH: unknown.

Steps to push local to hub:

1. PC local: docker images > robottest_image  
   tag:latest

2. docker login > rename: docker tag robottest_image anhsguy792/robottest_image

3. To hub: docker push anhsguy792/robottest_image:latest

4. run: docker run anhsguy792/robottest_image

remove any image: docker rmi robottest_image or anhsguy792/robottest_image

Whenever step 4, the image in the hub will be loaded to Local and showing in PC terminal (docker images) even you delete it earlier

