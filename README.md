User Manual
1. Download JDK version 17.0.5 and run file setup file. Download link: https://download.oracle.com/java/17/archive/jdk-17.0.5_windows-x64_bin.exe

2. Setup CLASS PATH for JDK. Tutorial link: 
https://youtu.be/7dc-Ea8HGGM?si=LNI0Eb88dOfx2zXm&t=300

3. Download newest version of Eclipse and run setup file. Download link: https://www.eclipse.org/downloads/download.php?file=/oomph/epp/2024-03/R/eclipse-inst-jre-win64.exe
*Notes:
- When setting up Eclipse:  choose Eclipse IDE for Enterprise Java and Web Developers
-  Java 17+ VM: link to file JDK
- You can set default setting for other part.

4.Create new workspace and add Apache Tomcat server into workspace. Tutorial link:
 https://youtu.be/7dc-Ea8HGGM?si=H3e0o-f4A9Ix-9Xd&t=545
*Notes:
- Current version of our app is using Apache Tomcat version 10.0.27
- How to download Apache Tomcat (In New Server window): Choose Apache > Tomcat v10.0 Server > Add... > Download and Install > Finish > (Chang directory to the folder contains Apache Tomcat) > Wait for server to download > Finish

5. Import project into workspace (extract project from .rar file, or using github). Link github:
https://github.com/DominateProbabilitywithconcent/OOSE_FINAL_PROJECT
On the tool bar of workspace: Chọn File > Open Projects from File System > Diectory (Change directory to folder named FruitStore) > Finish

7. Run project.
Inside Project Explorer: Rightclick into project > Run As > Run On Server (> Choose Apache Tomcat 10.0.27 if you doesn’t have it yet) > Run

