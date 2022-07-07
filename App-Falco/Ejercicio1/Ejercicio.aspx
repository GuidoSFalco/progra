<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio.aspx.cs" Inherits="Ejercicio1.Ejercicio_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title></title>
</head>
<body>
    <script type="text/javascript">
        var item = 1;
        $(function () {


            $('.proyecto__caracteristicas-boton').click(function () {
                if (item == 1) {
                    abrir()
                    item = 0
                } else {
                    cerrar()
                    item = 1
                }
            })

        })



        function abrir() {
            $('.proyecto__caracteristicas-boton').css('margin', '200px 0 0px 180px')
            $('.proyecto__caracteristicas').css('width', '200px')
            $('.proyecto__caracteristicas-titulo').css('display', 'table')

            $('.caracteristicas__titulo').css('display', 'table-cell')
            $('.caracteristicas__texto').css('display', 'block')

            $('.btn-abrir').css('display', 'none')
            $('.btn-cerrar').css('display', 'block')
        }

        function cerrar() {
            $('.proyecto__caracteristicas-boton').css('margin', '200px 0 0px 0')
            $('.proyecto__caracteristicas').css('width', '20px')
            $('.proyecto__caracteristicas-titulo').css('display', 'none')
            $('.caracteristicas__titulo').css('display', 'none')
            $('.caracteristicas__texto').css('display', 'none')

            $('.btn-cerrar').css('display', 'none')
            $('.btn-abrir').css('display', 'block')
        }


    </script>

    <style>
        * {
    padding: 0;
    margin: 0;
    color: white;

    --verde: #2a9d8f;
    --fondoheader: #22223b;
}

.header {
    background-color: var(--fondoheader);
    width: 100vw; height: auto;
    display: flex;
}

.header__izquierda {
    position: relative;
    width: 14%;
    height: auto;
}

.header__derecha {
    width: 86%;
    text-align: right;
}

/* Inicio configuracion links header */

.header__izquierda b,
.header__derecha b {
    display: inline-block;
    padding: 15px 20px;
    text-decoration: none;
    color: var(--verde);
}

.header__izquierda b:hover,
.header__derecha b:hover {
    background-color: grey;
    color: var(--fondoheader);
}

/* Fin configuracion links header */


/* Inicio Contenedor general */
.contenedor {
    background-color: lightblue;
    position: absolute;
    width: 100vw; height: 100vh;
}
/* Fin Contenedor general */

/*Inicio Primer parte*/

.seccion__presentacion {
    background-color: var(--verde);
    position: relative;
    width: 100vw; height: 100vh;
    display: flex;
}

.presentacion__contenido {
    background-color: #264653;
    position: relative;
    width: 62%; height: 40%;

    box-shadow: 20px 20px rgb(38, 70, 83,0.7);
    border-style: none;
    margin: auto;
    display: flex;
    text-align: center;
}

.presentacion__contenido section{
    margin: auto;
    font-size: 50px;
}

/* Fin Primer parte */

/* Inicio Segunda parte */

.proyectos {
    background-color: var(--fondoheader);
    position: relative;
    width: 100vw; height: 140vh;

}

.proyectos__titulo {
    text-align: center;
    padding-top: 40px;

}

.proyectos__lista {
    display: flex;
    flex-wrap: wrap;
    height: 100vh;
    justify-content: space-between;
    padding: 40px;
}

.proyecto {
    background-color: lightcoral;
    position: relative;
    width: 500px; height: 400px;
    min-width: 500px;
    margin: 60px 40px;
    box-shadow: 20px 20px rgb(165, 87, 87);
}

.proyecto__caracteristicas {
    background-color: rgb(121, 65, 65,0.8);
    position: relative;
    width: 20px; height: 100%;
    display: flex;
    transition: 0.3s ease;
}

/* Inicio Configuracion contenido de las caracteristicas de los proyectos */

/* Inicio configuracion titulo del contenido */
.proyecto__caracteristicas-titulo {
    position: absolute;
    width: 100%; height: 80px;
    text-align: center;
    display: none;

}

.caracteristicas__titulo {
    display: table-cell;
    vertical-align: middle;
    text-shadow: 0 0 10px white;
}

/* Fin configuracion titulo del contenido */

/* Inicio configuracion texto del contenido */

.proyecto__caracteristicas-texto {
    position: absolute;
    margin-top: 80px;
    width: 100%; height: 320px;
    padding: 10px;
}

.caracteristicas__texto {
    display: none;
}

/* Fin configuracion texto del contenido */

/* Fin Configuracion contenido de las caracteristicas de los proyectos */

/* Inicio Configuracion botones para abrir y cerrar caracteristicas */
.proyecto__caracteristicas-boton {
    background-color: rgb(121, 65, 65);
    /* background-color: red; */
    position: absolute;
    width: 40px; height: 40px;
    margin: 200px 0 0px 0px;
    border-radius: 50%;
    transition: 0.3s ease;
}

.btn-abrir,
.btn-cerrar {
    margin-left: 15px;
    margin-top: 6px;
}

.btn-cerrar {
    display: none;
}

html {
    scroll-behavior:smooth;
}

/* Fin Configuracion botones para abrir y cerrar caracteristicas */


/* Inicio seccion de lenguajes ------------------------*/

.seccion__lenguajes {
    background-color: lightgray;
    position: relative;
    width: 100vw; height: 50vh;
    padding: 40px;
    background: linear-gradient(to left, blue, rgb(175, 0, 0));
}

/* Inicio configuracion cabecera */
.seccion__lenguajes--inicio {
    width: 100%; height: 40px;
    margin: 0 auto;
    color: #2a9d8f;
    font-size: 260%;
    transition: 0.3s ease;
    text-align: center;
    cursor: pointer;
}

.seccion__lenguajes--inicio:hover {
    font-size: 300%;
}

.seccion__lenguajes--inicio_hr  {
    width: 10vw;
    transition: 0.3s ease;
}
/* Fin configuracion cabecera */

/* Inicio configuracion contenido especialidades*/
.seccion__lenguajes--especialidades {
    position: relative;
    margin: 0 auto;
    width: 80vw; 
    transition: 0.5s ease;
    display: flex;
}
/* Fin configuracion contenido especialidades */


/* Configuracion general de las especialidades */
.especialidadesylenguajes {
    background-color: rgb(38, 70, 83,0.7);
    width: 16vw; height: 10vh;
    text-align: center;
    font-size: 160%;
    margin: 20px;
    display: table;
    vertical-align: middle;
    cursor: pointer;
}

.especialidadesylenguajes:hover {
    background-color: rgb(38, 70, 83,0.9);
}


.especialidadesylenguajes span {
    display: table-cell;
    transition: 0.3s;

}


/* Hover de cada especialidad */
.especialidad__fullstack:hover span:nth-last-of-type(1),
.especialidad__android:hover span:nth-last-of-type(1),
.especialidad__arduino:hover span:nth-last-of-type(1) {
    text-shadow: 0 0 20px green;
}
.especialidad__fullstack:hover span:nth-last-of-type(2),
.especialidad__android:hover span:nth-last-of-type(2),
.especialidad__arduino:hover span:nth-last-of-type(2) {
    text-shadow: 0 0 10px white;
}
/* Fin Hover de cada especialidad */

/* Fin Configuracion general de las especialidades */


/* Fin configuracion cabecera */

/* Fin seccion de lenguajes ------------------------*/
    </style>

    <nav class="navbar">
    <div class="header">
        <div class="header__izquierda">
            <a href=""><b>Portafolio personal</b></a>
        </div>
        <div class="header__derecha">
            <a href=""><b>Quien soy?</b></a>
            <a href="#proyectos"><b>Trabajos</b></a>
        </div>
    </div>
  </nav>

<div class="contenedor">
    <div class="seccion__presentacion">
        <div class="presentacion__contenido">
            <section>
                
                <p>Hola! Soy <span style="color: aqua;text-shadow: 0 0 10px aqua;">Guido</span></p>
                <br>
                <p><i style="color: #df2935;"> un Desarrollador de Software</i></p>
                
            </section>
        </div>
    </div>
    
    <div class="proyectos" id="proyectos">
        <h1 class="proyectos__titulo" id="proyectos__titulo">Estas son algunas de las paginas web que cree</h1>
        <hr style="border-width: 3px; width: 70%; margin: 0 auto;">
        <div class="proyectos__lista">
            <div class="proyecto">
                <div class="proyecto__caracteristicas">
                    <div class="proyecto__caracteristicas-titulo">
                        <h1 class="caracteristicas__titulo">App 1</h1>
                    </div>
                    <div class="proyecto__caracteristicas-texto">
                        <p class="caracteristicas__texto">Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus dolor ipsa, assumenda cumque excepturi voluptatum debitis, in officiis eos magni rem laudantium sunt adipisci iste porro perspiciatis! Ducimus, incidunt ab!</p>
                    </div>
                    <div class="proyecto__caracteristicas-boton">
                        <i class="btn-abrir fas fa-angle-right fa-2x"></i>
                        <i class="btn-cerrar fa-solid fa-angle-left fa-2x"></i>
                    </div>
                </div> 
            </div>
            <div class="proyecto">
                <div class="proyecto__caracteristicas">
                    <div class="proyecto__caracteristicas-titulo">
                        <h1 class="caracteristicas__titulo">App 2</h1>
                    </div>
                    <div class="proyecto__caracteristicas-texto">
                        <p class="caracteristicas__texto">Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus dolor ipsa, assumenda cumque excepturi voluptatum debitis, in officiis eos magni rem laudantium sunt adipisci iste porro perspiciatis! Ducimus, incidunt ab!</p>
                    </div>
                    <div class="proyecto__caracteristicas-boton">
                        <i class="btn-abrir fas fa-angle-right fa-2x"></i>
                        <i class="btn-cerrar fa-solid fa-angle-left fa-2x"></i>
                    </div>
                </div> 
            </div>
            <div class="proyecto">
                <div class="proyecto__caracteristicas">
                    <div class="proyecto__caracteristicas-titulo">
                        <h1 class="caracteristicas__titulo">App 3</h1>
                    </div>
                    <div class="proyecto__caracteristicas-texto">
                        <p class="caracteristicas__texto">Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus dolor ipsa, assumenda cumque excepturi voluptatum debitis, in officiis eos magni rem laudantium sunt adipisci iste porro perspiciatis! Ducimus, incidunt ab!</p>
                    </div>
                    <div class="proyecto__caracteristicas-boton">
                        <i class="btn-abrir fas fa-angle-right fa-2x"></i>
                        <i class="btn-cerrar fa-solid fa-angle-left fa-2x"></i>
                    </div>
                </div> 
            </div>
            <div class="proyecto">
                <div class="proyecto__caracteristicas">
                    <div class="proyecto__caracteristicas-titulo">
                        <h1 class="caracteristicas__titulo">App 4</h1>
                    </div>
                    <div class="proyecto__caracteristicas-texto">
                        <p class="caracteristicas__texto">Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus dolor ipsa, assumenda cumque excepturi voluptatum debitis, in officiis eos magni rem laudantium sunt adipisci iste porro perspiciatis! Ducimus, incidunt ab!</p>
                    </div>
                    <div class="proyecto__caracteristicas-boton">
                        <i class="btn-abrir fas fa-angle-right fa-2x"></i>
                        <i class="btn-cerrar fa-solid fa-angle-left fa-2x"></i>
                    </div>
                </div> 
            </div>
            <div class="proyecto">
                <div class="proyecto__caracteristicas">
                    <div class="proyecto__caracteristicas-titulo">
                        <h1 class="caracteristicas__titulo">App 5</h1>
                    </div>
                    <div class="proyecto__caracteristicas-texto">
                        <p class="caracteristicas__texto">Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus dolor ipsa, assumenda cumque excepturi voluptatum debitis, in officiis eos magni rem laudantium sunt adipisci iste porro perspiciatis! Ducimus, incidunt ab!</p>
                    </div>
                    <div class="proyecto__caracteristicas-boton">
                        <i class="btn-abrir fas fa-angle-right fa-2x"></i>
                        <i class="btn-cerrar fa-solid fa-angle-left fa-2x"></i>
                    </div>
                </div> 
            </div>
            <div class="proyecto">
                <div class="proyecto__caracteristicas">
                    <div class="proyecto__caracteristicas-titulo">
                        <h1 class="caracteristicas__titulo">App 6</h1>
                    </div>
                    <div class="proyecto__caracteristicas-texto">
                        <p class="caracteristicas__texto">Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus dolor ipsa, assumenda cumque excepturi voluptatum debitis, in officiis eos magni rem laudantium sunt adipisci iste porro perspiciatis! Ducimus, incidunt ab!</p>
                    </div>
                    <div class="proyecto__caracteristicas-boton">
                        <i class="btn-abrir fas fa-angle-right fa-2x"></i>
                        <i class="btn-cerrar fa-solid fa-angle-left fa-2x"></i>
                    </div>
                </div> 
            </div>
        </div>
    </div>

    <div class="seccion__lenguajes">
        <div class="seccion__lenguajes--inicio">
            <p class="seccion__lenguajes--inicio_titulo">Especialidades y Lenguajes</p>
            <hr class="seccion__lenguajes--inicio_hr" style="border-width: 3px; margin: 0 auto;">
        </div>
        <div class="seccion__lenguajes--especialidades">
            
            <div class="especialidadesylenguajes especialidad__fullstack">
                
                <span>Desarrollo Web</span>
                <span style="color: green;">(Full Stack)</span> 
            </div>

            <div class="especialidadesylenguajes especialidad__android">
                
                <span>Desarrollo</span>
                <span style="color: green;"> Android</span> 
            </div>

            <div class="especialidadesylenguajes especialidad__arduino">
                
                <span>Domotica</span>
                <span style="color: green;"> (Arduino)</span> 
            </div>
        </div>
    </div>
</div>
</body>
</html>
