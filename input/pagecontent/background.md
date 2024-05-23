O INSPIRERS é um ecosistema propõe o fornecimento de um conjunto de ferramentas para automonitorização de doenças crónicas e apoio à sua autogestão. Os dados são introduzidos e acedidos utilizando interfaces específicos para cada caso de uso, desenhados para a pessoa com doença, para o profissional de saúde ou para o investigador. Os dados que são então transmitidos de forma segura a um servido que acomoda um repositório de dados de saúde. A partir deste repositório é possivel agregar serviçoes adicionais baseados no processsamento dos dados fornecidos, como por exemplo a geração de recomendações  com base na informação autoreportada e evidência clínica para apoio à auto gestão da doença entre visitas médicas.

# Cenários de utilização e o seu contexto
## Pessoa adulta com diagnóstico de doença respiratória obstrutiva crónica

A app AIRDOC: Aplicação móvel Inteligente para suporte individualizado e monitorização da função e sons Respiratórios de Doentes Obstrutivos Crónicos - é interface mais genérico do ecossistema INSPIRERS. Foi desenhada com o propósito de fornecer apoio na auto monitorização e auto gestão das doenças respiratórias obstrutivas crónicas, nomeadamente asma e doença pulmonar obstrutiva crónica.

A asma é uma doença inflamatória crónica das vias aéreas que se caracteriza pelo estreitamento dos brônquios, cujo tratamento passa pelo uso de medicação de controlo, de forma a reduzir os sintomas e o risco de exacerbações. A Doença Pulmonar Obstrutiva Crónica (DPOC) é uma condição pulmonar progressiva e crónica caracterizada por uma obstrução persistente do fluxo de ar nos pulmões. Essa obstrução dificulta a respiração e piora com o tempo. 

A app AIRDOC contém módulos de monitorização e suporte à adesão terapêutica, monitorização de sintomas, registo de sons respiratórios e de apoio à gestão da doença via recomendações automáticas. Inclui também a possibilidade do mesmo utilizador gerir vários perfis de monitorização de forma a acomodar situações em que o utilizador seja o cuidador de pessoas com doença respiratória crónica que não utilizem a app de forma autonoma.

## Cuidador de criança ou jovem com doença respiratória

A InspirersKids é uma aplicação móvel especialmente dedicada aos cuidadores de crianças e adolescentes com doença respiratória. Dada a comuhão de sintomas entre as doenças repiratórias agudas e crónicas a app está preparada para monitorizar ambas as situações. Contém módulos de monitorização e suporte à adesão terapêutica, monitorização de sintomas e registo de sons respiratórios, sendo os dois últimos especialmente adaptados à idade pediátrica. 

## Pessoa com diagnóstico de asma grave

A CARATm – Caraterísticas Auto-reportadas de Asma em Tecnologias Móveis, é uma aplicação móvel para pessoas com asma grave, com objetivo de monitorização e caraterização da doença através de dados auto-reportados pelo doente. É uma ferramenta de recolha de dados para apoio à consulta da especialidade, através da sua integração no RAG e também de apoio à realização de estudos de investigação clínica.

A asma grave é um tipo de asma que não responde bem ao tratamento.  Assim, na asma grave não há resposta ao tratamento habitual, permanecendo mal controlada, apesar de intensamente tratada.
O Registo de Asma Grave Portugal (RAG) é um registo nacional de doentes com asma moderada a grave (no degrau 4 ou 5 de tratamento, de acordo com diretivas da Global Initiative for Asthma), baseado na internet, disponível em asmagrave.pt, após autenticação.

A REAG-Rede de Especialistas de Asma Grave é uma rede colaborativa informal de especialistas em asma (imunoalergologistas, pediatras, pneumologistas) que se dedicam à melhoria dos cuidados aos doentes com asma grave em hospitais portugueses, desde 2011. A REAG desenvolveu o Registo de Asma Grave (RAG) Portugal que tem como objetivos:

1. Melhorar a prestação de cuidados de saúde para a asma grave, identificando e promovendo melhores práticas clínicas de diagnóstico e tratamento de asma grave e harmonização a sua documentação;

2. Facilitar projetos colaborativos, promovendo a cooperação entre os centros, auxiliando a execução dos projetos de investigação e permitindo a participação em redes ou projetos internacionais;

3. Contribuir para a definição e a adoção de políticas de saúde que ajudem os Portugueses com asma grave.

# Casos de Uso:
  ## Registo ou alteração do plano terapêutico
- **Descrição**: A pessoa em tratamento precisa de definir o seu plano terapêutico.
- **Fluxo de Trabalho**:
  1. A pessoa em tratamento acede ao sistema  solicita o plano de tratamento que lhe da acesso a uma lista dos medicamentos anteriormente registados, se exitirem, ou propõe a introdução de umnovo plano terapêutico.
  2. Nesta lista é possivel editar ou apagar medicamentos ou solicitar a inclusão de um novo medicamento no seu plano terapêutico.
  3. Para incluir um novo medicamento é prenchido um formulário em que se indicam as informações sobre o medicamento e tomas programadas (nome do medicamento, quantidade por toma, agendamento das tomas, data de início e duração do tratamento).
  4. Ao iniciar a escrita do nome do medicamento o utilizador é apoiado pela sugestão de nome (nome comercial e formulação terapêutica) a partir de uma lista de medicamentos cosntruida com base na informação do infomed. Estas sugestõe snão são mandatórias e o utilizador pode introduzir ummedicamento não listado.
  5. Ao editar um medicamento é possivel alterar uma ou mais das informações acima listadas.
  6. O sistema valida e armazena as informações inseridas pela pessoa em tratamento. 
  7. O sistema envia toda a informação recolhida e gerado (resposta ao questionário, indices derivados, observações e diagnósticos) para o reporitório de dados.

 #### Monitorização da adesão à medicação
- **Descrição**: A pessoa em tratamento precisa de registar as tomas efetuadas segundo o seu plano terapêutico.
- **Fluxo de Trabalho**:
  1. A pessoa em tratamento recebe do sistema a notificação de toma, com as informações do medicamento e posologia.
  2. A pessoa em tratamento regista a toma como efetuada ou não efetuada.
  3. O sistema valida e armazena as informações inseridas pelo utilizador.
  4. O sistema envia toda a informação recolhida e gerado (resposta ao questionário, indices derivados, observações e diagnósticos) para o reporitório de dados.

  #### Autoreporte de informação de caraterização por iniciativa do utilizador
- **Descrição**: A pessoa em tratamento autoreporta informação sobre si ou a sua história clínica por sua iniciativa
- **Fluxo de Trabalho**:
  1. O sistema disponibiliza uma lista de questionáriso de caraterização do utilizador e história clínica.
  2. A pessoa escolhe o questionário.
  3. O sistema verifica se há informação em falta necessária à resposta do questionário escolhido e em caso afirmativo dá essa informação ao utilizador e propõe a resposta prévia ao questionário necessário,
  4. O sistema apresenta as perguntas om o formato e sequência predefinidos, respeitando eventuais questões condicionais a respostas prévias. 
  5. O sistema calcula indices associados ao questionário e guarda os valores gerados. 
  6. O sistema regista diagnósticos e observações de acordo com o definido no questionário e guarda os valores gerados.
  7. O sistema valida e armazena as informações inseridas pelo utilizador.
  8. O sistema envia toda a informação recolhida e gerado (resposta ao questionário, indices derivados, observações e diagnósticos) para o reporitório de dados.

#### Visualização das respostas a questionários

- **Descrição**: A pessoa em tratamento, assim como o médico autorizado pela mesma, pode consultar as respostas aos questionários de história clinica e monitorização

- **Fluxo de Trabalho**:

  **Consulta pelo professional de saúde**:
  1. O profissional de saúde acede ao sistema, escolhe a pessoa em tratamento cujos questionários quer visualizar, e os tipos de questionários que quer visualizar e o intervalo de tempo relevante.
  2. O sistema produz uma lista ordenada por tipo e data dos questionários respondidos no intervalo de tempo indicado.
  3. O profissional de saúde seleciona o questionário e as perguntas e respostas são mostradas no idioma selecionado no perfil do profissional de saúde.

  **Consulta pela pessoa em tratamento**:
  1. A pessoa em tratamento acede ao sistema, escolhe intervalo de tempo relevante e os tipos de questionários que quer visualizar.
  2. O sistema produz uma lista ordenada por tipo e data dos questionários respondidos no intervalo de tempo indicado.
  3. A pessoa em tratamento seleciona o questionário e as perguntas e respostas são mostradas no idioma selecionado no perfil do profissional de saúde.