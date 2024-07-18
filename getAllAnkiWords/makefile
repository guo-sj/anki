TARGET = first
SOURCE = 01.l
RESULT = all_anki_words
BACKUP_FILE = newest_note

all: $(RESULT)

$(RESULT): $(TARGET) $(BACKUP_FILE)
	cat ./$(BACKUP_FILE) |\
	./$(TARGET) |\
	tr A-Z a-z |\
	sed 's/^[\t ]\+//g' |\
	sed 's/[\t ]\+$$//g' |\
	sort |\
	uniq >$(RESULT)
	
$(TARGET): $(SOURCE)
	lex $(SOURCE)
	cc lex.yy.c -o $(TARGET) -ll

$(BACKUP_FILE):
	file_a=$$(ls -t ../ankiBackup/ | head -1) &&\
	cp ../ankiBackup/$$file_a $(BACKUP_FILE)

clean:
	rm -rf lex.yy.c $(TARGET) $(RESULT) $(BACKUP_FILE)
	rb
