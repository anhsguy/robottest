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


Using Jenkins (3 ways: 1. Jenkinsfile_apt-get_pytest 2. Jenkinsfile_virtual_pip 3. requirements.txt)
Steps to run the pytest codes with image 'myjenkins-blueocean:2.414.3-1' in docker container:
1. run the image
   docker run --name jenkins-blueocean --restart=on-failure --detach \
   --network jenkins --env DOCKER_HOST=tcp://docker:2376 \
   --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 \
   --publish 8080:8080 --publish 50000:50000 \
   --volume jenkins-data:/var/jenkins_home \
   --volume jenkins-docker-certs:/certs/client:ro \
   myjenkins-blueocean:2.414.3-1
2. (Jenkins Dashboard) Browse to http://localhost:8080 or http://localhost:8080/blue/organizations/jenkins/pipelines     jyang 3333


3. Add Jenkinsfile in github (anhsguy/robottest)
4. Configure > Pipeline script from SCM > Git > URL: https://github.com/anhsguy/robottest.git > Branch: main > Save
5. Build Now > Declarative: Checkout SCM > Checkout > Set up Python Virtual Environment > Run Tests > Declarative : Post Actions
  It takes about 13s to build

+ robot -T FirstTestCase.robot
values assigned 1 and 2
==============================================================================
FirstTestCase                                                                 
==============================================================================
TC1 :: My first test case in ride                                     | PASS |
------------------------------------------------------------------------------
Launch py File                                                        hello world
| PASS |
------------------------------------------------------------------------------
Calling function from python                                          | PASS |
------------------------------------------------------------------------------
Class: sum from python                                                values assigned 1 and 2
| PASS |
------------------------------------------------------------------------------
Class: diff from python                                               | PASS |
------------------------------------------------------------------------------
Compare Strings                                                       | PASS |
------------------------------------------------------------------------------
String_match                                                          | PASS |
------------------------------------------------------------------------------
FirstTestCase                                                         | PASS |
7 tests, 7 passed, 0 failed
==============================================================================
Output:  /var/jenkins_home/workspace/robot_test/output-20231203-205301.xml
Log:     /var/jenkins_home/workspace/robot_test/log-20231203-205301.html
Report:  /var/jenkins_home/workspace/robot_test/report-20231203-205301.html