# Plagen v2.0.0

## Descrição

Métodos para suavizar superficies


## Requisitos

* Minetest 0.4.15 ou superior


## Licença LGPL v3.0
Plagen é um software livre; você pode redistribuí-lo e/ou modificá-lo dentro dos termos da Licença Pública Geral Menor GNU como publicada pela Fundação do Software Livre (FSF); na versão 3 da Licença, ou (na sua opinião) qualquer versão. Este programa é distribuído na esperança de que possa ser útil, mas SEM NENHUMA GARANTIA; sem uma garantia implícita de ADEQUAÇÃO a qualquer MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a Licença Pública Geral Menor GNU para maiores detalhes. Você deve ter recebido uma cópia da Licença Pública Geral Menor GNU junto com este programa, se não, veja http://www.gnu.org/licenses/.

### Autores e contribuidores do código fonte

Originalmente por BrunoMine, Bruno Borges <borgesdossantosbruno@gmail.com>


## Como importar e usar

Você precisa apenas copiar o arquivo `plagen.lua` para algum lugar de seu mod (por exemplo em um subdiretório `lib`)
Você pode montar of métodos em uma variavel global ou local, ambos irão funcionar exatamente da mesma forma.

### Pegando métodos
```lua
-- Pegando métodos
local plagen = dofile(minetest.get_modpath("my_modname").."/lib/plagen.lua")
```

### Métodos
```txt
plagen.planificar(pos, tipo, largura, amplitude, nodes, borda, calc_media, verif_mapa) : Planificar uma area e gerar degrais ao redor para suavizar a topografia 
	`pos` [tabela] do centro da area a ser planificada
	`tipo` [string] tipo de planificação
		"quadrada" para planificar uma area quadrada
	`largura` [número inteiro] largura da area planificada
	`amplitude` [número inteiro] Quantidade de blocos para cima e para baixo em que ocorre a operação (colocação de blocos)
	`nodes` [tabela] É o material utilizado na planificação
		^ {rocha="string", subsolo="string", solo="string"}
	`borda` É quantos blocos a partir da area planificada serão afetado para formar os degrais
	`calc_media` [booleano] é booleano para planificar em uma faixa de altura média da area a planificar
	`verif_mapa` [booleano] Verificar se o mapa está gerado por segurança
``
