JFLAGS = -g
JC = javac
JVM = java
FILE = 
.SUFFIXES: .java .class

.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = \
	MathClient.java \
	MathServer.java

MAIN = Experiment

default: classes

classes: $(CLASSES:.java=.class)

run: $(MAIN).class
	$(JVM) $(MAIN) $(FILE)

clean:
	$(RM) *.class
