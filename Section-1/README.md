# PollinateTimestamp API

### About
Simple REST API that will be used to submit a curl command (curl -X POST http://&lt;ipaddress&gt;/app) that will insert the date-time stamp into NoSQL database.

### Solution
[Please refer the design document](https://github.com/itsvenkyhere/Pollinate-Service-Management-Tech-Assignment/blob/main/Section-1/HighLevelDesign.pdf)

### API Methods
REST API has 2 HTTP methods implemented
1. HTTP POST on context /app
   1. Saves the current date timestamp into NoSQL Database.
   2. curl -X POST http://&lt;ipaddress&gt;/app
2. HTTP GET on context /test
   1. Added just for testing purpose
   2. curl -X GET http://&lt;ipaddress&gt;/test

### How to build and run from IntelliJ IDE
1. Checkout the GIT repository
2. Update below attributes of application.yml with respective values
   1. username
   2. password
   3. host
   4. database
3. mvn spring-boot:run
4. Access the application at http://&lt;ipaddress&gt;:8080/app

### How to build and deploy on Kubernetes
1. Checkout the GIT repository
2. mvn clean install -DskipTests
3. docker build -t itsvenkyhere/pollinate
4. docker push itsvenkyhere/pollinate
5. Require's Kubernetes Cluster
6. Create the resources in K8s from application-deployment.yaml & mongoDB-deployment.yaml file using command "kubectl apply -f filename.yml"
   1. kind: Deployment
   2. kind: Service
   3. kind: HorizontalPodAutoscaler
   4. kind: Secret
   5. kind: ConfigMap
   6. kind: PersistentVolume
   7. kind: PersistentVolumeClaim
7. Access the application at http://&lt;ipaddress&gt;:30008/app
