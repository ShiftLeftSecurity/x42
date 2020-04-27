JAVA_FILE = X42.java
SCALA_FILE = X42.java

JAVA_BYTECODE_OUT = X42.class
JAR_MANIFEST = X42.manifest.mf
JAR_FILE = X42.jar

C_FILE = X42.c
C_OUT = X42.c.out

CPP_FILE = X42.cpp
CPP_OUT = X42.cpp.out

GO_FILE = X42.go
GO_OUT = X42.go.out

LLVM_OUT = X42.ll.out

build-go:
	@go build -o $(GO_OUT) $(GO_FILE)

run-go: build-go
	@./$(GO_OUT) 42

build-llvm:
	@clang -S -emit-llvm $(C_FILE) -o $(LLVM_OUT)

build-cpp:
	@g++ $(CPP_FILE) -o $(CPP_OUT)

run-cpp: build-cpp
	@./$(CPP_OUT) 42

build-c:
	@gcc $(C_FILE) -o $(C_OUT)

run-c: build-c
	@./$(C_OUT) 42

javac:
	@javac -g $(JAVA_FILE)

jar: javac
	@jar cfm $(JAR_FILE) $(JAR_MANIFEST) $(JAVA_BYTECODE_OUT)

run-jar: jar
	@java -jar $(JAR_FILE) 42

scalac:
	@scalac -g:vars $(SCALA_FILE)

jar-scala: javac
	@jar cfm $(JAR_FILE) $(JAR_MANIFEST) $(JAVA_BYTECODE_OUT)

run-jar-scala: jar-scala
	@java -jar $(JAR_FILE) 42
