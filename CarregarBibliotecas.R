# Definindo diretório de Trabalho
setwd(getwd()) # Substituir "getwd()" pelo endereço da pasta de interesse para a análise


# Carregando Bibliotecas, caso necessário
bibliotecas <- c( "tm",
                  "dplyr",
                  "officer"
                  )  # Insira aqui o nome das bibliotecas cuja qual deseja garantir a instalação

Carregar_bibliotecas <- function(bibliotecas){
  for (pacote in bibliotecas){
    if (!paste0("package:", pacote) %in% search()){
      if (!pacote %in% as.data.frame(installed.packages())$Package){install.packages(pacote)}
      library(pacote, character.only = T)
      }
  }
  
}
Carregar_bibliotecas(bibliotecas)
