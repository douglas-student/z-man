```


              .__.                      
           _/~   -"s,                   
          a'        4c                  
         j(     .    4L                 
        ]D:_s>;=;;;=;)Qc                
       .Qkwq,=mciissiiWQ.               
       jWQD`  "Wwms_IqQQ[               #          ,----,                      ____                            ,--. #
       mWQ'    ]Q!  "$QQm               #        .'   .`|                    ,'  , `.    ,---,               ,--.'| #
       QQW  a/  [    -QQQ               #     .'   .'   ;                 ,-+-,.' _ |   '  .' \          ,--,:  : | #
       QQE  Qf  ; ]Q  3QQ               #   ,---, '    .'     ,---,.   ,-+-. ;   , ||  /  ;    '.     ,`--.'`|  ' : #
      .QQQ      ; )?  mQQ.              #   |   :     ./    ,'  .' |  ,--.'|'   |  ;| :  :       \    |   :  :  | | #
      <QQQ,   .-'.   jWQQ;              #   ;   | .'  /   ,---.'   , |   |  ,', |  ': :  |   /\   \   :   |   \ | : #
      jWQQm, .`  -._mWWQQ[              #   `---' /  ;    |   |    | |   | /  | |  || |  :  ' ;.   :  |   : '  '; | #
     .QWQQP~=;    :+-4QQQQ.             #     /  ;  /     :   :  .'  '   | :  | :  |, |  |  ;/  \   \ '   ' ;.    ; #
     jWQQf   -.  .    4QQQL             #    ;  /  /--,   :   |.'    ;   . |  ; |--'  '  :  | \  \ ,' |   | | \   | #
    /jQQP     -..      $QQk=            #   /  /  / .`|   `---'      |   : |  | ,     |  |  '  '--'   '   : |  ; .' #
  ./qQQQ'              )QQQz(           # ./__;       :              |   : '  |/      |  :  :         |   | '`--' #
 .=wQQQD                $QQQw=.         # |   :     .'               ;   | |`-'       |  | ,'         '   : | #
 imQ@QQf                ]QQQWm|         # ;   |  .'                  |   ;/           `--''           ;   |.' #
)m@" QQ'                ]QQ "$m(        # `---'                      '---'                            '---' #
)"   QQ:                =QW   ?'        
     4Q:                =QF             
      Qc. . ..... ... . jW              
      ]k;===;;;;;=;;;=:=df              
       $i|+|i|i|i|ii|||i@               
      .    .-{nnnn}-                    ╔═══════════════════════════════════════════════════════════════════════════╗
     .        {mq(                      ║                                                                           ║
    .          $D          .                                      LINUX USERS MANAGER
    .. .     ..mk.      . .:            ║                                                                           ║
    -::.....:::--:_:.....::`            ╚═══════════════════════════════════════════════════════════════════════════╝
                                        
                                        


```
# Z-MAN - GESTOR DE USUÁRIOS DO LINUX [:us:](README.md)
## Exercício DIO: Criar um script que cria grupos e usuários no sistema operacional Linux

## Procedimentos de Instalação

Siga os passos abaixo para instalar e executar os scripts em seu sistema Linux.

### Pré-requisitos

Certifique-se de que você tenha o seguinte instalado em seu sistema:
- Shell Bash
- Permissões necessárias para criar usuários e grupos

### Instalando os Scripts

1. **Clone o Repositório**

   Primeiro, clone o repositório para sua máquina local. Substitua `<repository-url>` pela URL real do seu repositório.

   ```bash
   git clone https://github.com/douglas-student/z-man.git
   cd z-man
   ```

2. **Navegue até o Diretório dos Scripts**

   Mude para o diretório onde os scripts estão localizados. Por exemplo:

   ```bash
   cd ./scripts
   ```

3. **Torne os Scripts Executáveis**

   Você precisa tornar os scripts executáveis. Execute os seguintes comandos:

   ```bash
   chmod +x iac1.sh
   ```

4. **Execute o Script**

   Agora você pode executar o script usando o seguinte comando:

   - Para executar o script de Infraestrutura como Código:
     ```bash
     ./iac1.sh
     ```

### Observações

- Certifique-se de revisar os scripts antes de executá-los para entender sua funcionalidade e fazer quaisquer ajustes necessários com base em seus requisitos.
- Execute esses scripts com as permissões apropriadas (por exemplo, como root ou usando `sudo`) para evitar problemas de permissão ao criar usuários e grupos.

## Configuração do Projeto com Docker

Siga os passos abaixo para configurar e executar o projeto usando o Docker.

### Requisitos

Certifique-se de que você tenha o seguinte instalado em seu sistema:

- Git
- Docker
- Bash
- Openssl

## Instruções Passo a Passo

1. **Instale e Use uma Imagem Docker do Ubuntu**

   Baixe a imagem Docker do Ubuntu e execute-a interativamente:

   ```bash
   docker run -it ubuntu:latest /bin/bash
   ```

2. **Instale Dependências e Clone o Repositório do Projeto**

   Dentro do contêiner Docker, execute os seguintes comandos para instalar dependências e clonar o projeto:

   ```bash
   apt-get update
   apt-get install -y openssl git
   mkdir bash-scripts
   cd bash-scripts
   git clone https://github.com/douglas-student/z-man.git
   ```

3. **Navegue até o Diretório do Projeto**

   Mude para o diretório do projeto onde seus scripts estão localizados:

   ```bash
   cd z-man/scripts
   ```

4. **Execute o Script Dentro do Contêiner Docker**

   Torne o script executável e execute-o:

   ```bash
   chmod +x iac1.sh  # Certifique-se de que o script seja executável
   ./iac1.sh         # Execute o script
   ```

### Observações

- Certifique-se de revisar o script antes de executá-lo para entender sua funcionalidade e fazer quaisquer ajustes necessários com base em seus requisitos.
- Se você encontrar problemas de permissão ao executar o script, pode ser necessário executar o Docker com privilégios elevados ou como um usuário com permissões apropriadas.

## Script de Desinstalação

Para desfazer as alterações feitas pelo script `iac1.sh`, você pode usar o script `uninstall.sh`. Este script removerá os usuários, grupos e diretórios que foram criados durante a execução do `iac1.sh`.

### Instruções de Uso

1. **Abra um terminal.**

2. **Navegue até o diretório do projeto onde o script `uninstall.sh` está localizado.**
   ```bash
   cd /bash-scripts/z-man/scripts
   ```

3. **Dê permissão de execução ao script `uninstall.sh`:**
   ```bash
   chmod +x uninstall.sh
   ```

4. **Execute o script com privilégios de superusuário:**
   ```bash
   sudo ./uninstall.sh
   ```

### O que o script faz?

- Remove os seguintes usuários:
  - carlos
  - maria
  - joao
  - debora
  - sebastiana
  - roberto
  - josefina
  - amanda
  - rogerio

- Remove os seguintes grupos:
  - GRP_ADM
  - GRP_VEN
  - GRP_SEC

- Remove os seguintes diretórios:
  - /publico
  - /adm
  - /ven
  - /sec

### Atenção

- O script `uninstall.sh` remove permanentemente usuários e diretórios. Certifique-se de que não há dados importantes que você deseja manter antes de executá-lo.
- É recomendável executar este script em um ambiente de teste antes de usá-lo em um sistema de produção.

## Licença

Este projeto possui licença MIT. Veja o arquivo [LICENSE](./LICENSE) para mais detalhes.
