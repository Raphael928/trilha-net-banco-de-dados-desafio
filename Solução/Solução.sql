/*1 - Buscar o nome e ano dos filmes*/
select Nome
     , Ano 
  from Filmes

/*2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano*/
select Nome
     , Ano 
  from Filmes
 order by Ano

/*3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração*/
select Nome
     , Ano
	 , Duracao
  from Filmes
 where nome like '%de volta para o futuro%'

/*4 - Buscar os filmes lançados em 1997*/
select *
  from Filmes
 where ano = 1997

/*5 - Buscar os filmes lançados APÓS o ano 2000*/
 select *
  from Filmes
 where ano > 2000

 /*6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente*/
 select *
  from Filmes
 where duracao > 100 and Duracao < 150
 order by duracao

/*7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente*/
SELECT 
    Ano,
    COUNT(*) AS Quantidade
FROM 
    filmes
GROUP BY 
    Ano
ORDER BY 
    Quantidade DESC;

/*8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome*/
SELECT 
    *
FROM 
    Atores
where Genero = 'M'

/*9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome*/
SELECT 
    *
FROM 
    Atores
where Genero = 'F'

/*10 - Buscar o nome do filme e o gênero*/
SELECT 
    fil.Nome,
	gen.Genero
FROM Filmes fil
join FilmesGenero fil_gen 
  on fil_gen.IdFilme = fil.Id
join Generos gen 
  on gen.Id = fil_gen.IdGenero

/*11 - Buscar o nome do filme e o gênero do tipo "Mistério"*/
SELECT 
    fil.Nome,
	gen.Genero
FROM Filmes fil
join FilmesGenero fil_gen 
  on fil_gen.IdFilme = fil.Id
join Generos gen 
  on gen.Id = fil_gen.IdGenero
where gen.Genero = 'Mistério'

/*12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel*/
SELECT 
	 fil.Nome,
     ator.PrimeiroNome,
	 ator.UltimoNome,
	 elen.Papel
FROM Filmes fil
join ElencoFilme elen
  on elen.IdFilme = fil.Id
join Atores ator 
  on ator.Id = elen.IdAtor