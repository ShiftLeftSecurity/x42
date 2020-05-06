JAVA_FILE = X42.java

JAVA_BYTECODE_OUT = X42.class
JAR_MANIFEST = X42.manifest.mf
JAR_FILE = X42.jar

javac:
	@javac -g $(JAVA_FILE)

jar: javac
	@jar cfm $(JAR_FILE) $(JAR_MANIFEST) $(JAVA_BYTECODE_OUT)

run: jar
	@java -jar $(JAR_FILE) 42
