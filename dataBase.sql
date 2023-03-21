--CREACION DE REGISTROS

--TABLA DE USUARIOS
INSERT INTO public.users (
"name",
email,
"Password",
"Age"
) VALUES(
'Pierina Corzo',
'pierinacorzo1@gmail.com',
'root',
31
),
(
'Eugenio Cardenas',
'eugeniocardenas1@gmail.com',
'root',
35
);

--TABLA COURSE
INSERT INTO public.courses(
title,
description,
"level",
teacher,
user_id
) VALUES(
'React',
'Aprenda a trabajar con el Framework de Javascript más utilizado hoy en el marcado laboral',
'beginner',
'Anonimo'::character varying,
1
),
(
'Node Js',
'Aprende lo básico de Node, un entorno de ejecución JavaScript para el backend',
'advanced',
'Anonimo'::character varying,
2
);

--TABLA CATEGORIES
INSERT INTO public.categories
("name")
VALUES('FrontEnd'), ('BackEnd'), ('CSS'), ('HTML'), ('JS');

--TABLA COURSE_CATEGORIES
INSERT INTO public.course_categories (
course_id, 
category_id
) VALUES(1,1), (2,2);

--TABLA COURSE_VIDEOS
INSERT INTO public.course_videos (
	title,
	url,
	course_id
) VALUES(
	'Curso de Reactjs desde Cero para principiantes',
	'https://www.youtube.com/watch?v=rLoWMU4L_qE',
	1
),
(
	'Nodejs Curso Práctico desde Cero (Javascript en el Backend)',
	'https://www.youtube.com/watch?v=i3OdKwuBjeM',
	2
);

--TABLA VIDEOS_CATEGORIES
INSERT INTO public.videos_categories
(course_video_id, category_id)
values
	(1, 1), (1, 3), (1, 4),
	(2, 2), (2, 4), (2,5);