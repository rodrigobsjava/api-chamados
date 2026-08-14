-- ============================================================
-- CARGA INICIAL - SISTEMA DE CHAMADOS
-- 50 registros
-- Período: 2026-05-15 até 2026-08-11
-- ============================================================


-- ============================================================
-- 01
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Computador não liga',
        'O computador do setor administrativo não apresenta sinais de energia.',
        'ABERTO',
        'ALTA',
        'João Silva',
        'Carlos Oliveira',
        '2026-05-15 08:15:00',
        '2026-05-15 08:15:00'
    );


-- ============================================================
-- 02
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Problema com impressora',
        'A impressora está apresentando erro ao tentar imprimir documentos.',
        'EM_ATENDIMENTO',
        'MEDIA',
        'Maria Santos',
        'Carlos Oliveira',
        '2026-05-22 09:30:00',
        '2026-05-22 10:15:00'
    );


-- ============================================================
-- 03
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Acesso ao sistema',
        'Usuário não consegue acessar o sistema interno.',
        'RESOLVIDO',
        'CRITICA',
        'Pedro Souza',
        'Ana Costa',
        '2026-05-28 07:45:00',
        '2026-05-28 09:20:00'
    );


-- ============================================================
-- 04
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Computador lento',
        'O computador apresenta lentidão durante a execução dos sistemas corporativos.',
        'ABERTO',
        'MEDIA',
        'Fernanda Almeida',
        'Marcos Ribeiro',
        '2026-06-02 08:20:00',
        '2026-06-02 08:20:00'
    );


-- ============================================================
-- 05
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Senha expirada',
        'Usuário não consegue acessar sua conta devido à senha expirada.',
        'RESOLVIDO',
        'BAIXA',
        'Ricardo Mendes',
        'Carlos Oliveira',
        '2026-06-07 10:10:00',
        '2026-06-07 10:35:00'
    );


-- ============================================================
-- 06
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Sem acesso à internet',
        'Computador do setor financeiro perdeu o acesso à rede.',
        'EM_ATENDIMENTO',
        'ALTA',
        'Juliana Martins',
        'Ana Costa',
        '2026-06-12 08:50:00',
        '2026-06-12 09:40:00'
    );


-- ============================================================
-- 07
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Instalação do Microsoft Office',
        'Solicitação de instalação do pacote Microsoft Office no computador do usuário.',
        'FECHADO',
        'BAIXA',
        'Lucas Ferreira',
        'Carlos Oliveira',
        '2026-06-15 13:20:00',
        '2026-06-16 09:10:00'
    );


-- ============================================================
-- 08
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Monitor sem imagem',
        'Monitor apresenta tela preta mesmo com o computador ligado.',
        'ABERTO',
        'ALTA',
        'Patrícia Souza',
        'Marcos Ribeiro',
        '2026-06-19 07:55:00',
        '2026-06-19 07:55:00'
    );


-- ============================================================
-- 09
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Problema no teclado',
        'Algumas teclas do teclado não estão funcionando corretamente.',
        'RESOLVIDO',
        'BAIXA',
        'Rafael Gomes',
        'Carlos Oliveira',
        '2026-06-23 14:05:00',
        '2026-06-23 15:00:00'
    );


-- ============================================================
-- 10
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Sistema interno indisponível',
        'Sistema corporativo apresenta erro ao realizar login.',
        'EM_ATENDIMENTO',
        'CRITICA',
        'Marcos Lima',
        'Ana Costa',
        '2026-06-27 08:05:00',
        '2026-06-27 08:30:00'
    );


-- ============================================================
-- 11
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Configuração de e-mail',
        'Usuário necessita configurar sua conta de e-mail corporativo.',
        'FECHADO',
        'MEDIA',
        'Camila Rodrigues',
        'Carlos Oliveira',
        '2026-06-30 11:15:00',
        '2026-07-01 08:45:00'
    );


-- ============================================================
-- 12
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Impressora sem conexão',
        'Impressora da recepção não está disponível na rede.',
        'EM_ATENDIMENTO',
        'ALTA',
        'Beatriz Santos',
        'Ana Costa',
        '2026-07-03 09:10:00',
        '2026-07-03 10:20:00'
    );


-- ============================================================
-- 13
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Instalação de navegador',
        'Solicitação de instalação e configuração de navegador para acesso aos sistemas.',
        'RESOLVIDO',
        'BAIXA',
        'André Carvalho',
        'Carlos Oliveira',
        '2026-07-06 15:20:00',
        '2026-07-06 16:00:00'
    );


-- ============================================================
-- 14
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'VPN não conecta',
        'Usuário não consegue estabelecer conexão com a VPN corporativa.',
        'ABERTO',
        'ALTA',
        'Daniel Oliveira',
        'Marcos Ribeiro',
        '2026-07-10 08:35:00',
        '2026-07-10 08:35:00'
    );


-- ============================================================
-- 15
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Troca de computador',
        'Equipamento apresenta falhas recorrentes e necessita ser substituído.',
        'EM_ATENDIMENTO',
        'CRITICA',
        'Renata Martins',
        'Ana Costa',
        '2026-07-14 10:05:00',
        '2026-07-14 11:30:00'
    );


-- ============================================================
-- 16
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Erro ao imprimir documento',
        'Sistema apresenta erro durante o envio de documentos para impressão.',
        'ABERTO',
        'MEDIA',
        'Gustavo Pereira',
        'Carlos Oliveira',
        '2026-07-19 13:40:00',
        '2026-07-19 13:40:00'
    );


-- ============================================================
-- 17
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Criação de usuário',
        'Solicitação de criação de novo usuário para colaborador recém-contratado.',
        'FECHADO',
        'ALTA',
        'Simone Costa',
        'Carlos Oliveira',
        '2026-07-23 08:10:00',
        '2026-07-23 10:00:00'
    );


-- ============================================================
-- 18
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Acesso a pasta compartilhada',
        'Usuário necessita acesso a uma pasta compartilhada do departamento.',
        'RESOLVIDO',
        'MEDIA',
        'Eduardo Santos',
        'Ana Costa',
        '2026-07-27 09:25:00',
        '2026-07-27 11:05:00'
    );


-- ============================================================
-- 19
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Computador não reconhece pendrive',
        'Portas USB não reconhecem dispositivos externos.',
        'EM_ATENDIMENTO',
        'MEDIA',
        'Vanessa Lima',
        'Carlos Oliveira',
        '2026-07-31 14:15:00',
        '2026-07-31 15:00:00'
    );


-- ============================================================
-- 20
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Falha no sistema financeiro',
        'Sistema financeiro apresenta erro crítico durante o processamento de pagamentos.',
        'ABERTO',
        'CRITICA',
        'Roberto Alves',
        'Ana Costa',
        '2026-08-03 07:40:00',
        '2026-08-03 07:40:00'
    );


-- ============================================================
-- 21
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Atualização de software',
        'Solicitação de atualização de software utilizado pelo setor administrativo.',
        'FECHADO',
        'BAIXA',
        'Larissa Ferreira',
        'Carlos Oliveira',
        '2026-08-06 10:30:00',
        '2026-08-06 13:15:00'
    );


-- ============================================================
-- 22
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Problema no scanner',
        'Scanner não está sendo reconhecido pelo computador.',
        'RESOLVIDO',
        'MEDIA',
        'Thiago Martins',
        'Ana Costa',
        '2026-08-09 08:45:00',
        '2026-08-09 09:30:00'
    );


-- ============================================================
-- 23
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Bloqueio de conta',
        'Conta do usuário foi bloqueada após várias tentativas de autenticação.',
        'EM_ATENDIMENTO',
        'ALTA',
        'Sérgio Rodrigues',
        'Carlos Oliveira',
        '2026-08-11 09:05:00',
        '2026-08-11 09:40:00'
    );


-- ============================================================
-- 24
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Falha no Wi-Fi',
        'Computador não consegue manter conexão estável com a rede sem fio.',
        'ABERTO',
        'MEDIA',
        'Amanda Souza',
        'Marcos Ribeiro',
        '2026-05-18 09:20:00',
        '2026-05-18 09:20:00'
    );


-- ============================================================
-- 25
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Erro no sistema de protocolo',
        'Sistema apresenta mensagem de erro ao registrar novos protocolos.',
        'RESOLVIDO',
        'ALTA',
        'Bruno Martins',
        'Ana Costa',
        '2026-05-25 08:40:00',
        '2026-05-25 10:25:00'
    );


-- ============================================================
-- 26
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Solicitação de acesso à rede',
        'Novo colaborador necessita de acesso à rede corporativa.',
        'FECHADO',
        'MEDIA',
        'Carolina Mendes',
        'Carlos Oliveira',
        '2026-06-04 10:00:00',
        '2026-06-04 14:20:00'
    );


-- ============================================================
-- 27
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'HD com falha',
        'Computador apresenta erros de leitura e gravação no disco.',
        'EM_ATENDIMENTO',
        'CRITICA',
        'Diego Fernandes',
        'Marcos Ribeiro',
        '2026-06-10 07:50:00',
        '2026-06-10 08:35:00'
    );


-- ============================================================
-- 28
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Configuração de impressora',
        'Solicitação de instalação de impressora em estação de trabalho.',
        'FECHADO',
        'BAIXA',
        'Elaine Souza',
        'Carlos Oliveira',
        '2026-06-17 13:10:00',
        '2026-06-17 15:30:00'
    );


-- ============================================================
-- 29
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Sistema travando',
        'Aplicação corporativa trava durante o processamento de relatórios.',
        'EM_ATENDIMENTO',
        'ALTA',
        'Felipe Costa',
        'Ana Costa',
        '2026-06-21 09:15:00',
        '2026-06-21 10:00:00'
    );


-- ============================================================
-- 30
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Problema com áudio',
        'Computador não reproduz áudio pelos alto-falantes.',
        'RESOLVIDO',
        'BAIXA',
        'Gabriela Lima',
        'Carlos Oliveira',
        '2026-06-25 14:30:00',
        '2026-06-25 15:10:00'
    );


-- ============================================================
-- 31
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Falha de autenticação',
        'Usuário recebe erro ao tentar autenticar no sistema corporativo.',
        'ABERTO',
        'ALTA',
        'Henrique Alves',
        'Ana Costa',
        '2026-06-29 08:25:00',
        '2026-06-29 08:25:00'
    );


-- ============================================================
-- 32
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Atualização do antivírus',
        'Antivírus instalado na estação necessita de atualização.',
        'FECHADO',
        'BAIXA',
        'Isabela Rocha',
        'Marcos Ribeiro',
        '2026-07-02 11:00:00',
        '2026-07-02 11:45:00'
    );


-- ============================================================
-- 33
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Acesso ao servidor de arquivos',
        'Usuário não consegue acessar os diretórios compartilhados do servidor.',
        'EM_ATENDIMENTO',
        'ALTA',
        'Jorge Santos',
        'Ana Costa',
        '2026-07-05 08:15:00',
        '2026-07-05 09:00:00'
    );


-- ============================================================
-- 34
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Teclado com defeito',
        'Teclado apresenta várias teclas sem funcionamento.',
        'FECHADO',
        'BAIXA',
        'Karen Oliveira',
        'Carlos Oliveira',
        '2026-07-08 10:40:00',
        '2026-07-08 13:00:00'
    );


-- ============================================================
-- 35
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Servidor indisponível',
        'Servidor interno apresenta indisponibilidade para os usuários.',
        'EM_ATENDIMENTO',
        'CRITICA',
        'Leonardo Silva',
        'Marcos Ribeiro',
        '2026-07-12 07:30:00',
        '2026-07-12 07:55:00'
    );


-- ============================================================
-- 36
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Configuração de monitor',
        'Solicitação de configuração de segundo monitor na estação de trabalho.',
        'RESOLVIDO',
        'BAIXA',
        'Márcia Santos',
        'Carlos Oliveira',
        '2026-07-16 14:20:00',
        '2026-07-16 15:00:00'
    );


-- ============================================================
-- 37
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Erro no sistema de folha',
        'Sistema de folha de pagamento apresenta erro durante consulta.',
        'ABERTO',
        'CRITICA',
        'Natália Ferreira',
        'Ana Costa',
        '2026-07-20 08:00:00',
        '2026-07-20 08:00:00'
    );


-- ============================================================
-- 38
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Problema com webcam',
        'Webcam não é reconhecida durante reuniões virtuais.',
        'RESOLVIDO',
        'MEDIA',
        'Otávio Mendes',
        'Carlos Oliveira',
        '2026-07-24 09:35:00',
        '2026-07-24 10:20:00'
    );


-- ============================================================
-- 39
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Acesso ao sistema de compras',
        'Usuário não possui permissão para acessar o sistema de compras.',
        'EM_ATENDIMENTO',
        'ALTA',
        'Paula Ribeiro',
        'Ana Costa',
        '2026-07-28 13:15:00',
        '2026-07-28 14:10:00'
    );


-- ============================================================
-- 40
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Falha no scanner de documentos',
        'Scanner apresenta falha durante digitalização de documentos.',
        'ABERTO',
        'MEDIA',
        'Quésia Martins',
        'Marcos Ribeiro',
        '2026-08-01 10:25:00',
        '2026-08-01 10:25:00'
    );


-- ============================================================
-- 41
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Erro no sistema administrativo',
        'Sistema administrativo apresenta erro inesperado durante o acesso.',
        'EM_ATENDIMENTO',
        'ALTA',
        'Rodrigo Alves',
        'Carlos Oliveira',
        '2026-08-02 08:45:00',
        '2026-08-02 09:30:00'
    );


-- ============================================================
-- 42
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Instalação de aplicativo',
        'Solicitação de instalação de aplicativo necessário para as atividades do setor.',
        'FECHADO',
        'BAIXA',
        'Sandra Lima',
        'Marcos Ribeiro',
        '2026-08-04 11:20:00',
        '2026-08-04 13:10:00'
    );


-- ============================================================
-- 43
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Problema de DNS',
        'Estação não consegue resolver endereços internos da rede.',
        'EM_ATENDIMENTO',
        'CRITICA',
        'Tânia Costa',
        'Ana Costa',
        '2026-08-05 07:50:00',
        '2026-08-05 08:30:00'
    );


-- ============================================================
-- 44
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Configuração de rede',
        'Necessária configuração de rede em nova estação de trabalho.',
        'RESOLVIDO',
        'MEDIA',
        'Ubirajara Santos',
        'Carlos Oliveira',
        '2026-08-06 14:00:00',
        '2026-08-06 15:30:00'
    );


-- ============================================================
-- 45
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Conta de usuário bloqueada',
        'Usuário não consegue acessar os sistemas após bloqueio da conta.',
        'ABERTO',
        'ALTA',
        'Valéria Souza',
        'Marcos Ribeiro',
        '2026-08-07 08:10:00',
        '2026-08-07 08:10:00'
    );


-- ============================================================
-- 46
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Erro de certificado',
        'Sistema apresenta erro relacionado ao certificado digital.',
        'EM_ATENDIMENTO',
        'CRITICA',
        'Wellington Rocha',
        'Ana Costa',
        '2026-08-08 09:00:00',
        '2026-08-08 09:45:00'
    );


-- ============================================================
-- 47
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Configuração de estação',
        'Nova estação necessita de configuração para utilização pelo setor.',
        'RESOLVIDO',
        'MEDIA',
        'Yasmin Ferreira',
        'Carlos Oliveira',
        '2026-08-09 13:20:00',
        '2026-08-09 15:00:00'
    );


-- ============================================================
-- 48
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Problema no login',
        'Usuário não consegue realizar login no sistema corporativo.',
        'ABERTO',
        'ALTA',
        'Zélia Martins',
        'Marcos Ribeiro',
        '2026-08-10 08:35:00',
        '2026-08-10 08:35:00'
    );


-- ============================================================
-- 49
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Falha na conexão VPN',
        'Conexão VPN apresenta falhas intermitentes durante o acesso remoto.',
        'EM_ATENDIMENTO',
        'ALTA',
        'Alexandre Costa',
        'Ana Costa',
        '2026-08-10 14:10:00',
        '2026-08-10 15:00:00'
    );


-- ============================================================
-- 50
-- ============================================================

INSERT INTO chamados
    (titulo, descricao, status, prioridade, solicitante, tecnico_responsavel, data_abertura, data_atualizacao)
VALUES
    (
        'Atualização do sistema operacional',
        'Estação necessita atualização do sistema operacional e reinicialização.',
        'FECHADO',
        'MEDIA',
        'Bianca Oliveira',
        'Carlos Oliveira',
        '2026-08-11 10:15:00',
        '2026-08-11 13:45:00'
    );