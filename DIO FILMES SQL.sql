--1
select Nome, Ano from Filmes

--2
select Nome, Ano from Filmes order by Ano

--3
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro'

--4
select *  from Filmes where Ano = 1997

--5
select * from Filmes where Ano > 2000

--6
select * from Filmes
where Duracao > 100 and Duracao < 150 
order by Duracao

--7
select Ano, count(*) as Quantidade
from Filmes
group by Ano
order by Quantidade desc;

--8
select * from Atores where Genero = 'M'

--9
select * from Atores where Genero = 'F' order by PrimeiroNome

--10
select Filmes.Nome as Nome_Filme, Generos.Genero as Genero
from FilmesGenero
JOIN Filmes on FilmesGenero.IdFilme = Filmes.ID
JOIN Generos on FilmesGenero.IdGenero = Generos.ID;

--11
select Filmes.Nome as Nome_Filme, Generos.Genero AS Genero
from FilmesGenero
JOIN Filmes on FilmesGenero.IdFilme = Filmes.ID
JOIN Generos on FilmesGenero.IdGenero = Generos.ID
where Generos.Genero = 'Mistério'

--12
select Filmes.Nome as Nome_Filme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
from ElencoFilme
JOIN Filmes on ElencoFilme.IdFilme = Filmes.ID
JOIN Atores on ElencoFilme.IdAtor = Atores.ID;

