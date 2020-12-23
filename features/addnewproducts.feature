# encoding: utf-8
#language:pt

Funcionalidade: Adicionar produtos no carrinho

Cenário: Adicionar produto no carrinho a partir da pagina inicial
	Dado que estou logado no site
	Quando digito o produto
	E seleciono o produto
	Então o sistema adiciona no carrinho de compras
	E repito o processo com outro produto
