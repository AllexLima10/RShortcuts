# Definindo diretório de Trabalho
setwd(getwd()) # Substituir "getwd()" pelo endereço da pasta de interesse para a análise

#setwd(file.choose(T)) ou você pode escolher manualmente a pasta

endereco_pasta <-  "./Pastas a trocar" # Aqui você pode trocar o endereço pela pasta em que deseja 

#endereco_pasta <- file.choose(T) # ou você pode escolher manualmente onde elas estão

pastas <- list.dirs(path=endereco_pasta, full.names=TRUE, recursive = FALSE) # Armazenando no vetor pastas os endereços de todas as pastas que se deseja alterar o nome

i <- 0 # Criando indice para dar os novos nomes e adicionar uma barra de progresso

for(pasta in pastas){
  i <- i + 1 #Atualizando indice
  print(pasta) # mostrando nome a ser trocado
  novo_nome <-  paste("./Pastas a trocar/Pasta",i) #Criando um novo nome
  file.rename(from = pasta, to = novo_nome) # Trocando o nome da pasta pelo novo nome criado
  print(novo_nome) # mostrando o novo nome
  print(paste0("Progresso: ",round(i/length(pastas)*100,2),"%")) # Mostrando uma barra de progresso
}

print(paste(length(pastas), "pastas modificadas com sucesso")) # Indicando o término do programa com o número de pastas modificadas

rm(list = ls())

   