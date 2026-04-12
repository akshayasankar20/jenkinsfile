Question 1 - Password Validation
App.java
import java.util.*;
public class App {
 public static List<String> validate(String input){
  List<String> res=new ArrayList<>();
  for(String p:input.split(",")){
   if(p.matches("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[$#@]).{6,12}$"))
    res.add(p);
  }
  return res;
 }
 public static void main(String[] args){
  System.out.println(validate("ABd1234@1,aF1#,2w3E*,2We3345"));
 }
}
AppTest.java
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import java.util.*;
public class AppTest{
 @Test
 public void test(){
  assertEquals(Arrays.asList("ABd1234@1"),
   App.validate("ABd1234@1,aF1#"));
 }
}
pom.xml
<project xmlns="http://maven.apache.org/POM/4.0.0">
<modelVersion>4.0.0</modelVersion>
<groupId>com.exam</groupId>
<artifactId>project</artifactId>
<version>1.0</version>

<properties>
<maven.compiler.source>17</maven.compiler.source>
<maven.compiler.target>17</maven.compiler.target>
</properties>

<dependencies>
<dependency>
<groupId>org.junit.jupiter</groupId>
<artifactId>junit-jupiter</artifactId>
<version>5.10.0</version>
<scope>test</scope>
</dependency>
</dependencies>
</project>
Jenkinsfile (Pipeline)
pipeline {
 agent any
 stages {
  stage('Build') {
   steps { bat 'mvn clean package' }
  }
  stage('Test') {
   steps { bat 'mvn test' }
  }
 }
}
Question 2 - Sorting
App.java
import java.util.*;
public class App{
 public static void main(String[] args){
  List<List<String>> data=new ArrayList<>();
  data.add(Arrays.asList("Tom","19","80"));
  data.add(Arrays.asList("John","20","90"));
  data.sort((a,b)->a.get(0).compareTo(b.get(0)));
  System.out.println(data);
 }
}
AppTest.java
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import java.util.*;
public class AppTest{
 @Test
 public void test(){
  List<List<String>> d=new ArrayList<>();
  d.add(Arrays.asList("Tom","19","80"));
  d.add(Arrays.asList("John","20","90"));
  d.sort((a,b)->a.get(0).compareTo(b.get(0)));
  assertEquals("John",d.get(0).get(0));
 }
}
pom.xml
<project xmlns="http://maven.apache.org/POM/4.0.0">
<modelVersion>4.0.0</modelVersion>
<groupId>com.exam</groupId>
<artifactId>project</artifactId>
<version>1.0</version>

<properties>
<maven.compiler.source>17</maven.compiler.source>
<maven.compiler.target>17</maven.compiler.target>
</properties>

<dependencies>
<dependency>
<groupId>org.junit.jupiter</groupId>
<artifactId>junit-jupiter</artifactId>
<version>5.10.0</version>
<scope>test</scope>
</dependency>
</dependencies>
</project>
Jenkinsfile (Pipeline)
pipeline {
 agent any
 stages {
  stage('Build') {
   steps { bat 'mvn clean package' }
  }
  stage('Test') {
   steps { bat 'mvn test' }
  }
 }
}
Question 3 - Electricity Bill
App.java
public class App{
 public static double calc(int u){
  if(u<=100) return u*2;
  else if(u<=200) return 100*2+(u-100)*3;
  else return 100*2+100*3+(u-200)*5;
 }
 public static void main(String[] args){
  System.out.println(calc(250));
 }
}
AppTest.java
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
public class AppTest{
 @Test
 public void test(){
  assertEquals(200,App.calc(100));
 }
}
pom.xml
<project xmlns="http://maven.apache.org/POM/4.0.0">
<modelVersion>4.0.0</modelVersion>
<groupId>com.exam</groupId>
<artifactId>project</artifactId>
<version>1.0</version>

<properties>
<maven.compiler.source>17</maven.compiler.source>
<maven.compiler.target>17</maven.compiler.target>
</properties>

<dependencies>
<dependency>
<groupId>org.junit.jupiter</groupId>
<artifactId>junit-jupiter</artifactId>
<version>5.10.0</version>
<scope>test</scope>
</dependency>
</dependencies>
</project>
Jenkinsfile (Pipeline)
pipeline {
 agent any
 stages {
  stage('Build') {
   steps { bat 'mvn clean package' }
  }
  stage('Test') {
   steps { bat 'mvn test' }
  }
 }
}
Question 4 - ATM
App.java
public class App{
 public static String withdraw(double bal,int amt){
  if(amt%100!=0) return "Invalid";
  if(amt>bal) return "Insufficient";
  return "Balance:"+(bal-amt);
 }
 public static void main(String[] args){
  System.out.println(withdraw(5000,1000));
 }
}
AppTest.java
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
public class AppTest{
 @Test
 public void test(){
  assertTrue(App.withdraw(5000,1000).contains("Balance"));
 }
}
pom.xml
<project xmlns="http://maven.apache.org/POM/4.0.0">
<modelVersion>4.0.0</modelVersion>
<groupId>com.exam</groupId>
<artifactId>project</artifactId>
<version>1.0</version>

<properties>
<maven.compiler.source>17</maven.compiler.source>
<maven.compiler.target>17</maven.compiler.target>
</properties>

<dependencies>
<dependency>
<groupId>org.junit.jupiter</groupId>
<artifactId>junit-jupiter</artifactId>
<version>5.10.0</version>
<scope>test</scope>
</dependency>
</dependencies>
</project>
Jenkinsfile (Pipeline)
pipeline {
 agent any
 stages {
  stage('Build') {
   steps { bat 'mvn clean package' }
  }
  stage('Test') {
   steps { bat 'mvn test' }
  }
 }
}
Question 5 - Salary
App.java
public class App{
 public static double calc(double b){
  return (b+0.2*b+0.1*b)*0.95;
 }
 public static void main(String[] args){
  System.out.println(calc(10000));
 }
}
AppTest.java
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
public class AppTest{
 @Test
 public void test(){
  assertTrue(App.calc(10000)>0);
 }
}
pom.xml
<project xmlns="http://maven.apache.org/POM/4.0.0">
<modelVersion>4.0.0</modelVersion>
<groupId>com.exam</groupId>
<artifactId>project</artifactId>
<version>1.0</version>

<properties>
<maven.compiler.source>17</maven.compiler.source>
<maven.compiler.target>17</maven.compiler.target>
</properties>

<dependencies>
<dependency>
<groupId>org.junit.jupiter</groupId>
<artifactId>junit-jupiter</artifactId>
<version>5.10.0</version>
<scope>test</scope>
</dependency>
</dependencies>
</project>
Jenkinsfile (Pipeline)
pipeline {
 agent any
 stages {
  stage('Build') {
   steps { bat 'mvn clean package' }
  }
  stage('Test') {
   steps { bat 'mvn test' }
  }
 }
}
