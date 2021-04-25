%sintomas habituales
%
%sintoma(daniel,tos_seca).
%sintoma(daniel,cansancio).
%sintoma(daniel,fiebre).

%sintomas menos comunes

%sintoma(dolor_de_garganta,si).
%sintoma(diarrea,si).
%sintoma(conjuntivitis,si).
%sintoma(perdida_olfato,si).
%sintoma(perdida_gusto,si).

%sintomas graves


%sintoma(dificultad_para_respirar,si).
%sintoma(dolor_muscular,si).




recomendacion(quedarse_en_casa).
recomendacion(avisar_a_personas_con_quienes_ha_estado_en_contacto).
recomendacion(realizarse_la_prueba).
recomendacion(seguir_su_vida_normal).
recomendacion(abrigarse_y_tomar_acetaminofén).
recomendacion(notificar_a_eps).
recomendacion(solicitar_examen_a_domicilio).
recomendacion(dirigirse_a_urgencias).

quedarse_en_casa(tos_seca).
quedarse_en_casa(cansancio).
quedarse_en_casa(fiebre).
quedarse_en_casa(personas_con_comorbilidades).
quedarse_en_casa(personas_en_contacto_con_contagiados).

realizarse_la_prueba(personas_con_sintomas_comunes).
realizarse_la_prueba(personas_en_contacto_con_contagiados).
realizarse_la_prueba(personas_que_han_estado_en_grupos_sin_tapabocas).
realizarse_la_prueba(personas_que_no_han_seguido_recomendaciones_de_desinfeccion).

seguir_su_vida_normal(personas_que_han_usado_su_tapabocas).
seguir_su_vida_normal(personas_que_han_seguido_recomendaciones_de_desinfeccion).
seguir_su_vida_normal(personas_que_no_han_tenido_sintomas).

abrigarse_acetaminofen(personas_con_fiebre_o_dolor_de_garganta).
abrigarse_acetaminofen(personas_que_no_han_estado_en_contacto_con_contagiados).
abrigarse_acetaminofen(personas_con_resfriado_leve).

solicitar_examen_domicilio(personas_con_comorbilidades).
solicitar_examen_domicilio(personas_que_han_tenido_contacto_con_contagiados).
solicitar_examen_domicilio(personas_con_sintomas).

dirigirse_urgencias(personas_que_han_tenido_contacto_con_contagiados).
dirigirse_urgencias(personas_con_sintomas).
dirigirse_urgencias(personas_con_comorbilidades).
dirigirse_urgencias(personas_con_sintomas_graves).


notificar_a_personas_en_contacto(personas_que_han_tenido_contacto_con_contagiados).
notificar_a_personas_en_contacto(personas_con_sintomas).
notificar_a_personas_en_contacto(personas_que_han_estado_en_grupo_sin_tapabocas).


%recomendación por parámetro

reco(tos_seca, quedarse_en_casa).
reco(tos_seca, consultar_con_medico).
reco(tos_seca, evitar_condiciones_que_empeoren_sintomas).

reco(cansancio, quedarse_en_casa).
reco(cansancio, reposo).
reco(cansancio, evitar_actividades_demandantes).

reco(fiebre, quedarse_en_casa).
reco(fiebre, evitar_condiciones_que_empeoren_sintomas).

%recomendaciones por síntomas comunes
reco(sintomas_comunes, quedarse_en_casa).
reco(sintomas_comunes, realizarse_la_prueba).
reco(sintomas_comunes, notificar_a_eps).
reco(sintomas_comunes, notificar_a_personas_en_contacto).
reco(sintomas_comunes, abrigarse_acetaminofen).


%recomendaciones a personas en contacto con contagiados
reco(contacto_con_contagiado,notificar_a_eps).
reco(contacto_con_contagiado,realizarse_la_prueba).
reco(contacto_con_contagiado,notificar_a_personas_en_contacto).

%recomendaciones a personas con comorbilidades
reco(comorbilidades, quedarse_en_casa).
reco(comorbilidades, evitar_exposiciones_al_virus).

% recomendaciones a personas que han estado en reuniones con varias
% personas en espacios cerrados

reco(reuniones_espacios_cerrados, quedarse_en_casa).
reco(reuniones_espacios_cerrados, realizarse_la_prueba).
reco(reuniones_espacios_cerrados, notificar_a_personas_en_contacto).
reco(reuniones_espacios_cerrados, evitar_reuniones_con_varias_personas_en_espacios_cerrados).

% recomendaciones a personas que han estado en reuniones sin uso de
% tapabocas

reco(reuniones_sin_tapabocas, quedarse_en_casa).
reco(reuniones_sin_tapabocas, realizarse_la_prueba).
reco(reuniones_sin_tapabocas, notificar_a_personas_en_contacto).
reco(reuniones_sin_tapabocas, usar_tapabocas).
reco(reuniones_sin_tapabocas, evitar_reuniones_con_varias_personas_en_espacios_cerrados).

% recomendaciones a personas que han seguido las recomendaciones de
% desinfeccion

reco(seguido_p_desinfeccion, quedarse_en_casa).
reco(seguido_p_desinfeccion, seguir_su_vida_normal).
reco(seguido_p_desinfeccion, usar_tapabocas).
reco(seguido_p_desinfeccion, evitar_reuniones_con_varias_personas_en_espacios_cerrados).





reco(personas_con_comorbilidades, quedarse_en_casa).
reco(personas_en_contacto_con_contagiados, quedarse_en_casa).

reco(personas_con_sintomas_comunes, realizarse_la_prueba).
reco(personas_en_contacto_con_contagiados, realizarse_la_prueba).
reco(personas_que_han_estado_en_grupos_sin_tapabocas, realizarse_la_prueba).
reco(personas_que_no_han_seguido_recomendaciones_de_desinfeccion, realizarse_la_prueba).

reco(personas_que_han_usado_su_tapabocas, seguir_su_vida_normal).
reco(personas_que_han_seguido_recomendaciones_de_desinfeccion, seguir_su_vida_normal).
reco(personas_que_no_han_tenido_sintomas, seguir_su_vida_normal).

reco(personas_en_contacto_con_contagiados, abrigarse_acetaminofen).
reco(personas_con_sintomas, abrigarse_acetaminofen).
reco(personas_que_han_estado_en_grupo_sin_tapabocas, abrigarse_acetaminofen).

reco(personas_con_comorbilidades, solicitar_examen_domicilio).
reco(personas_que_han_tenido_contacto_con_contagiados, solicitar_examen_domicilio).
reco(personas_con_sintomas, solicitar_examen_domicilio).

reco(personas_que_han_tenido_contacto_con_contagiados, dirigirse_urgencias).
reco(personas_con_sintomas, dirigirse_urgencias).
reco(personas_con_comorbilidades, dirigirse_urgencias).
reco(personas_con_sintomas_graves, dirigirse_urgencias).

reco(personas_que_han_tenido_contacto_con_contagiados, notificar_a_personas_en_contacto).
reco(personas_con_sintomas, notificar_a_personas_en_contacto ).
reco(personas_que_han_estado_en_grupo_sin_tapabocas,  notificar_a_personas_en_contacto).


contacto_con_contagiado(daniel,si).
reuniones_varias_personas(daniel,si).
grupo_sin_tapabocas(daniel,si).
seguido_p_desinfeccion(daniel,no).



:- dynamic notificar_a_personas_en_contacto/1.
:- dynamic dirigirse_urgencias/1.
:- dynamic solicitar_examen_domicilio/1.
:- dynamic notificar_eps/1.
:- dynamic abrigarse_acetaminofen/1.
:- dynamic seguir_su_vida_normal/1.
:- dynamic realizarse_la_prueba/1.
:- dynamic quedarse_en_casa/1.

:- dynamic paciente/1.
:- dynamic padece/2.
:- dynamic comorbilidad/2.
:- dynamic sintoma/2.

:- dynamic contacto_con_contagiado/2.
:- dynamic reuniones_varias_personas/2.
:- dynamic grupo_sin_tapabocas/2.
:- dynamic seguido_p_desinfeccion/2.
:- dynamic comorbilidades/2.
:- dynamic persona/1.

:- dynamic reco/1.


%recomendaciones a personas con tos seca
recomienda(X) :- persona(X), sintoma(X,tos_seca),reco(tosa_seca,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z).

%recomendaciones a personas con fiebre
recomienda(X) :- persona(X), sintoma(X,fiebre),reco(fiebre,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z).

%recomendaciones a personas con fiebre
recomienda(X) :- persona(X), sintoma(X,cansancio),reco(cansancio,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z).

%recomendaciones por síntomas
recomienda(X) :- persona(X), (sintoma(X,tos_seca); sintoma(X,fiebre);sintoma(X,cansancio)),reco(sintomas_comunes,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z).

%recomendaciones personas en contacto con contagiados
recomienda(X) :- persona(X), contacto_con_contagiado(X,si),reco(contacto_con_contagiado,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z).

%recomendaciones a personas con comorbilidades
recomienda(X) :- persona(X), comorbilidades(X,si) ,reco(comorbilidades,Y), atom_concat('Se le recomienda: ',Y,Z),print(Z).

% recomendaciones a personas que han estado en reuniones en espacios
% cerrados sin ventilación
recomienda(X) :- persona(X), reuniones_varias_personas(X,si) ,reco(reuniones_espacios_cerrados,Y), atom_concat('Se le recomienda: ',Y,Z),print(Z).

% recomendaciones a personas que han estado en reuniones sin uso de
% tapabocas
recomienda(X) :- persona(X), grupo_sin_tapabocas(X,si) ,reco(reuniones_sin_tapabocas,Y), atom_concat('Se le recomienda: ',Y,Z),print(Z).

% recomendaciones a personas que han seguido las recomendaciones de
% desinfeccion
recomienda(X) :- persona(X), seguido_p_desinfeccion(X,si), reco(seguido_p_desinfeccion,Y), atom_concat('Se le recomienda: ',Y,Z),print(Z).


%recomendaciones a personas con comorbilidades y síntomas
recomienda(X) :- persona(X), (sintoma(X,tos_seca); sintoma(X,fiebre);sintoma(X,cansancio)), comorbilidades(X,si),
                 reco(sintomas_comunes,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z),
                 reco(comorbilidades,Y), atom_concat('Se le recomienda: ',Y,Z),print(Z).

%recomendaciones a personas en contacto con contagiados y comorbilidades
recomienda(X) :- persona(X), contacto_con_contagiado(X,si),comorbilidades(X,si),
                 reco(contacto_con_contagiado,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z),
                 reco(comorbilidades,Y), atom_concat('Se le recomienda: ',Y,Z),print(Z).

% recomendaciones a personas con síntomas y contacto con contagiados
recomienda(X) :- persona(X), (sintoma(X,tos_seca); sintoma(X,fiebre);sintoma(X,cansancio)), contacto_con_contagiado(X,si),
                 reco(sintomas_comunes,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z),
                 reco(contacto_con_contagiado,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z).


% recomendaciones a personas con síntomas y que han estado sin uso de
% tapabocas
recomienda(X) :- persona(X), (sintoma(X,tos_seca); sintoma(X,fiebre);sintoma(X,cansancio)),grupo_sin_tapabocas(X,si),
                 reco(reuniones_sin_tapabocas,Y), atom_concat('Se le recomienda: ',Y,Z),print(Z),
                 reco(sintomas_comunes,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z).

% recomendaciones a personas que han estado sin tapabocas y en contacto
% con contagiados.

recomienda(X) :- persona(X), contacto_con_contagiado(X,si),grupo_sin_tapabocas(X,si),
                 reco(reuniones_sin_tapabocas,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z),
                 reco(contacto_con_contagiado,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z).

%recomendaciones a personas con comorbilidades y sin uso de tapabocas
recomienda(X) :- persona(X), comorbilidades(X,si) ,grupo_sin_tapabocas(X,si),
                 reco(reuniones_sin_tapabocas,Y), atom_concat('Se le recomienda: ',Y,Z),print(Z),
                 reco(comorbilidades,Y), atom_concat('Se le recomienda: ',Y,Z),print(Z).

% recomendaciones a personas que estuvieron en contacto con personas
% contagiadas y en grupos grandes en lugares con poca ventilación
recomienda(X) :- persona(X), contacto_con_contagiado(X,si),reuniones_varias_personas(X,si),
                 reco(reuniones_espacios_cerrados,Y), atom_concat('Se le recomienda: ',Y,Z),print(Z),
                 reco(contacto_con_contagiado,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z).

% recomendaciones a personas que han seguido recomendaciones de
% desinfección pero estuvieron en contacto con contagiados.
recomienda(X) :- persona(X), contacto_con_contagiado(X,si), seguido_p_desinfeccion(X,si),
                 reco(contacto_con_contagiado,Y),atom_concat('Se le recomienda: ',Y,Z),print(Z),
                 reco(seguido_p_desinfeccion,Y), atom_concat('Se le recomienda: ',Y,Z),print(Z).


asintoma(Z,X) :- (X == 'si'),persona(Y),assertz(sintoma(Y,Z)).


iniciar():- nombre().
nombre():- print('Ingrese su nombre: '),read(X),assertz(persona(X)),nl,aviso().
aviso():- print('Por favor responer si o no en las siguientes preguntas:'),nl,contacto().
contacto():- print('¿Ha tenido contacto con contagiados?'),read(X),persona(Z),assertz(contacto_con_contagiado(Z,X)),nl,desinfe().
desinfe():- print('¿Ha seguido las recomendaciones de desinfección?'),read(X), persona(Z),assertz(seguido_p_desinfeccion(Z,X)),nl,tos().
tos():- print('¿Ha sufrido de tos seca?'),read(X),asintoma(tos_seca,X),nl,fiebre().
fiebre():- print('¿Ha sufrido de fiebre?'),read(X),asintoma(fiebre,X),nl,cansan().
cansan():- print('¿Ha sufrido de cansancio?'),read(X),asintoma(cansancio,X),nl,comor().
comor():- print('¿Tiene comorbilidades?'),read(X),persona(Z),assertz(comorbilidades(Z,X)),nl,grupos().
grupos():- print('¿Ha estado en reuniones con varias personas en espacios cerrados?'),
           read(X),persona(Z),assertz(reuniones_varias_personas(Z,X)),nl,tapa().
tapa():- print('¿Ha estado en grupos sin uso de tapabocas?'),read(X),persona(Z),assertz(grupo_sin_tapabocas(Z,X)).





%recomienda(X) :- (print_message(warning, 'Seguir su vida normal')).




