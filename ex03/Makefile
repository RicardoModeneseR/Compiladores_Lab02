# Comando do compilador Java
JAVAC=javac
# Comando da JVM
JAVA=java
# ROOT é a raiz dos diretórios com todos os roteiros de laboratórios
YEAR=$(shell pwd | grep -o '20..-.')
ROOT=/home/ricardo/faculdade/compiladores/CC_Lab02
# Caminho para o JAR do ANTLR em labs/tools
ANTLR_PATH=$(ROOT)/tools/antlr-4.13.2-complete.jar
# Opção de configuração do CLASSPATH para o ambiente Java
CLASS_PATH_OPTION=-cp .:$(ANTLR_PATH)
# Configuração do comando de compilação do ANTLR
ANTLR4=$(JAVA) -jar $(ANTLR_PATH)
# Configuração do ambiente de teste do ANTLR
GRUN=$(JAVA) $(CLASS_PATH_OPTION) org.antlr.v4.gui.TestRig
# Nome da gramática
GRAMMAR_NAME=Exemplo03
# Diretório para aonde vão os arquivos gerados
GEN_PATH=parser

# Executa o ANTLR e o compilador Java
all: antlr javac
	@echo "Done."
# Executa o ANTLR para compilar a gramática
antlr: $(GRAMMAR_NAME).g
	$(ANTLR4) -no-listener -o $(GEN_PATH) $(GRAMMAR_NAME).g
# Executa o javac para compilar os arquivos gerados
javac:
	$(JAVAC) $(CLASS_PATH_OPTION) $(GEN_PATH)/*.java
# Executa o parser. Comando: $ make run FILE=arquivo_de_teste
run:
	cd $(GEN_PATH) && $(GRUN) $(GRAMMAR_NAME) begin -gui $(FILE)
# Remove os arquivos gerados pelo ANTLR
clean:
	@rm -rf $(GEN_PATH)

