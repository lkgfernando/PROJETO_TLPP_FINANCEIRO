# Sistema de Gestão Financeira Pessoal (TLPP)

Este projeto consiste numa aplicação de back-end desenvolvida em **TLPP** (TopLevel Protheus Programing) para o controlo e gestão de finanças pessoais. O sistema permite a gestão de contas, categorização de despesas/receitas e controlo de fluxo de caixa.

## 📋 Funcionalidades Core
- Cadastro de Contas Bancárias e Carteiras.
- Classificação por Categorias e Subcategorias.
- Lançamentos de Movimentações (Receitas e Despesas).
- Controlo de Status (Pendente vs. Realizado).
- Cálculo dinâmico de saldo por conta.

---

## 🗄️ Estrutura da Base de Dados

### 1. Contas (`FIN_CONTAS`)
| Campo | Tipo | Descrição |
| :--- | :--- | :--- |
| `ID_CONTA` | Integer | PK - Identificador único |
| `DESCRICAO`| Varchar | Ex: "Conta Corrente", "Investimentos" |
| `TIPO`     | Varchar | (Corrente, Poupança, Crédito, Investimento) |
| `SALDO_INI`| Numeric | Saldo inicial no momento da abertura |
| `ATIVO`    | Boolean | Status de uso da conta |

### 2. Categorias (`FIN_CATEGORIAS`)
| Campo | Tipo | Descrição |
| :--- | :--- | :--- |
| `ID_CAT`   | Integer | PK - Identificador único |
| `NOME`     | Varchar | Ex: "Alimentação", "Transporte" |
| `TIPO_CAT` | Char(1) | (R = Receita, D = Despesa) |
| `ID_PAI`   | Integer | FK - Relacionamento para Subcategoria |

### 3. Movimentações (`FIN_MOVIMENTOS`)
| Campo | Tipo | Descrição |
| :--- | :--- | :--- |
| `ID_MOV`    | Integer | PK - Identificador único |
| `ID_CONTA`  | Integer | FK - Referência à tabela FIN_CONTAS |
| `ID_CAT`    | Integer | FK - Referência à tabela FIN_CATEGORIAS |
| `VALOR`     | Numeric | Valor da transação |
| `DATA_VENC` | Date    | Data prevista |
| `DATA_PAG`  | Date    | Data da efetivação (Baixa) |
| `STATUS`    | Char(1) | (A = Aberto, P = Pago, C = Cancelado) |

---

## ⚙️ Regras de Negócio

### R1: Integridade de Saldo
O saldo de uma conta não deve ser um campo editável diretamente. Ele é o resultado da soma de todos os movimentos com `STATUS = 'P'` (Pagos) somados ao `SALDO_INI`.

### R2: Transferências
Operações de transferência devem ser atómicas. No **TLPP**, utilize `Begin Transaction` e `End Transaction`.

---

## 🚀 Desafios de Implementação (TLPP)
1. **POO:** Criar classes com `Encapsulamento` e `Namespaces`.
2. **Manipulação de Dados:** Utilizar `Embedded SQL`.
3. **Integração:** Expor os dados via `TLPP WebServices` (JSON).
