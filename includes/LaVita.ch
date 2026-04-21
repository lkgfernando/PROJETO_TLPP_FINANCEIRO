/*
	Header : personalng.ch
	Copyright (c) 2011, PersonalNG
	All rights reserved.
*/

#INCLUDE "Protheus.ch"
#INCLUDE "FwBrowse.ch"

//-----------------
// Cores de fontes
//-----------------
#DEFINE CLR_PNBLUE 7163680
#DEFINE CLR_PNHGRAY 9276813
#DEFINE CLR_PNGRAY 5329233
#DEFINE CLR_PNGRAY2 15658734
#DEFINE CLR_OBRIGAT 5258495
//-------------------
// Tamanho de fontes
//-------------------
#DEFINE oArialB20 TFont():New("Arial",,20,,.T.)
#DEFINE oArialB18 TFont():New("Arial",,18,,.T.)
#DEFINE oArialB16 TFont():New("Arial",,16,,.T.)
#DEFINE oArialB14 TFont():New("Arial",,14,,.T.)
#DEFINE oArialB13 TFont():New("Arial",,13,,.T.)
#DEFINE oArialB10 TFont():New("Arial",,10,,.T.)

#DEFINE oCorbel14 TFont():New("Corbel", , 14, .T., .F.)
#DEFINE oCorbel20 TFont():New("Corbel", , 20, .T., .F.)
#DEFINE oCorbel22 TFont():New("Corbel", , 22, .T., .F.)

#DEFINE oVerdanaB12 TFont():New("Verdana",,12,,.T.)
#DEFINE oVerdanaB20 TFont():New("Verdana",,20,,.T.)
#DEFINE oVerdanaB30 TFont():New("Verdana",,30,,.T.)

//----------------------------
// Configura pintura da TGrid
//----------------------------
#DEFINE cCSSGRID "QTableView{ alternate-background-color: #f7f7F7; selection-background-color: #b2cbe7; height: 25px; font-size: 12px; font-weight: bold; font-face: Arial; color: #515151;}"

//---------------------------------------
// Configura pintura do Header da TGrid
//---------------------------------------
#DEFINE cCSSHEAD "QHeaderView::section { background-color: #28485f; color: #FFFFFF; border: 1px solid #28485f; height:35px; font-size: 14px; font-weight: bold; font-face: Arial;}"


//------------------------------------------
// Definicoes do Metodo SetPropety
//------------------------------------------
#DEFINE PROPERTY_FIELD_TITULO   	1
#DEFINE PROPERTY_FIELD_IDFIELD  	2
#DEFINE PROPERTY_FIELD_TIPO     	3
#DEFINE PROPERTY_FIELD_TAMANHO  	4
#DEFINE PROPERTY_FIELD_DECIMAL  	5
#DEFINE PROPERTY_FIELD_PICTURE  	6
#DEFINE PROPERTY_FIELD_VALID    	7
#DEFINE PROPERTY_FIELD_OBRIGAT  	8
#DEFINE PROPERTY_FIELD_LEVEL    	9
#DEFINE PROPERTY_FIELD_INIT    		10
#DEFINE PROPERTY_FIELD_LOOKUP  		11
#DEFINE PROPERTY_FIELD_WHEN    		12
#DEFINE PROPERTY_FIELD_CANCHANGE	13
#DEFINE PROPERTY_FIELD_COMBOBOX		15
#DEFINE PROPERTY_FIELDFOLDER_NUMBER	16
#DEFINE PROPERTY_FIELD_NOUPD   		17
#DEFINE PROPERTY_FIELD_PVAR			18
#DEFINE PROPERTY_FIELD_TRIGGER     	19

//--------------------------------------------------------
// Opções do menu popup para abertura de funcionalidades
//--------------------------------------------------------
#DEFINE __TELA_PRINCIPAL__  0
#DEFINE __MOTORISTA_CADASTRO__  1
#DEFINE __VEICULO_CADASTRO__   2
#DEFINE __CONTADOR_CADASTRO__  3
#DEFINE __RESTRICAO_CADASTRO__ 4
#DEFINE __CARTAO_CADASTRO__    5
#DEFINE __MANUTBASICA_CADASTRO__ 6
#DEFINE __ABASTECIMENTO_CADASTRO__ 7
#DEFINE __CONVENIADOS_CADASTRO__ 8
#DEFINE __RELATORIOS_CADASTRO__ 9
#DEFINE __DASHBOARD_CADASTRO__ 10
#DEFINE __GRUPOS_CADASTRO__ 11
#DEFINE __ABASTMOTO_CONSULTA__ 12
#DEFINE __ABASTPOST_CONSULTA__ 13
#DEFINE __ABASTVEIC_CONSULTA__ 14

//--------------------------------------------------------
// Opções de chamada de rotinas
//--------------------------------------------------------
#DEFINE __NOPCAO_BROWSE__ 1
#DEFINE __NOPCAO_VISUAL__ 2
#DEFINE __NOPCAO_INCLUI__ 3
#DEFINE __NOPCAO_ALTERA__ 4
#DEFINE __NOPCAO_EXCLUI__ 5
#DEFINE __NOPCAO_CONFIRM__ 10
#DEFINE __NOPCAO_CANCELA__ 11
