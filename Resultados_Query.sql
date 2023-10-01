--1 - Buscar o nome e ano dos filmes
Select id,nome,ano from Filmes
order by id

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
Select nome,ano from Filmes
order by ano asc

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
Select nome,ano,Duracao from Filmes
where nome = 'De Volta para o Futuro'

--4 - Buscar os filmes lançados em 1997
Select nome, ano, duracao from Filmes
where ano = '1997'

--5 - Buscar os filmes lançados APÓS o ano 2000
Select nome, ano, duracao from Filmes
where ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
Select nome, ano, duracao from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao asc

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
Select f.ano, COUNT(f.id) as quantidade  
from Filmes as f
group by f.ano
order by sum(f.Duracao) desc

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select id,PrimeiroNome,UltimoNome from Atores
where Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select id,PrimeiroNome,UltimoNome from Atores
where Genero = 'F'
order by PrimeiroNome asc

--10 - Buscar o nome do filme e o gênero
select f.Nome, g.Genero from filmes as f
inner join FilmesGenero as fg
inner join Generos as g on
g.Id = fg.IdGenero
on f.id = fg.IdFilme

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select f.Nome, g.Genero from filmes as f
inner join FilmesGenero as fg
inner join Generos as g on
g.Id = fg.IdGenero
on f.id = fg.IdFilme
where g.Genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

select f.Nome,a.PrimeiroNome,a.UltimoNome,ef.Papel from filmes as f
inner join ElencoFilme as ef
on ef.IdFilme = f.Id 
inner join Atores as a
on a.id = ef.IdAtor