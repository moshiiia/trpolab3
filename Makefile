APP=Projectrpo3
CC=g++
FLAGS = -Wall -Werror

SRC_DIR = ./obj/src/geometry
OBJ_DIR = ./obj

SRC = $(wildcard $(SRC_DIR)/*.cpp) 
OBJ = $(patsubst $(SRC_DIR)/%.cpp, $(OBJ_DIR)/%.o, $(SRC)) 


$(APP) : $(OBJ)
	$(CC) $(OBJ) -o $(APP)

main.o : main.cpp 
	$(CC) main.cpp -o main.o $(FLAGS)


Circle.o : Circle.cpp 
	$(CC) -c Circle.cpp -o Circle.o $(FLAGS)


Point.o : Point.cpp 
	$(CC) -c Point.cpp -o Point.o $(FLAGS)

#общий вид
#$(SRC_DIR)/%.o : $(OBJ_DIR)/%.cpp\
	$(CC) -c $< -o $@ $(FLAGS)\
$<- слева $@ - справа

#крч я вот так сделала \
но у челика в видосе заголовочные файлы валялись в одной папке с сишными\
и он их вообще нигде не указывал а у меня они типа в разных\
и вот вопрос мне с этим что-то делать нужно?\

go:
	./$(APP)

clean:
	rm $(APP) $(OBJ_DIR)/*.o 

.PHONY: clean