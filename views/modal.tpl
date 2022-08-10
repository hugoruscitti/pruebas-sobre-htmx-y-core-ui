% rebase('base.tpl', title='Diálogos modales')

<p>
  <button hx-get="/contenido-modal" hx-target="#modal">Abrir</button>
</p>

<!-- El contenido del modal se obtuvo de esta página: https://coreui.io/docs/components/modal/ -->
<!-- el contenido de este div se mostrará a partir de lo que retorne la ruta /contenido-modal -->

<!-- tener en cuenta que el modal se mostrará en pantalla porque hay código en el archivo
     static/app.js que ejecuta código cada vez que htmx intenta dibujar en un bloque
     que tiene el id modal -->
<div class="modal fade" id="modal" tabindex="-1" aria-labelledby="modal" aria-hidden="true">

</div>
<!-- este elemento sirve para que podamos cerrar el diálogo modal desde htmx. Para cerrar
     el modal se tiene que hacer un elemento con el atributo hx-target="cerrar-modal" e invocarlo.
     Para ver un ejemplo de esto abrir el archivo views/contenido-modal.tpl. -->
<div style="display: none" id="cerrar-modal"></div>


<p><a href="/">Regresar a la página principal</a></p>

