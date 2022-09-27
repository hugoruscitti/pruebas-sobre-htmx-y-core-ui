% rebase('base.tpl', title='Diálogos modales')

<p>
  <button hx-get="/agregar-fecha" 
    hx-target="#fechas"
    hx-swap="afterend"
    >Agregar fecha</button>
</p>

<div id="fechas" class="">
  <div class="ba b--red pa2 ma1">
    <input class="fecha">
  </div>
</div>


<script>

  function convertirWidgets() {
    var elementos = document.querySelectorAll('.fecha')

      for (el in elementos) {
        var dateMask = IMask(elementos[el], {
                mask: Date,
                min: new Date(1990, 0, 1),
                max: new Date(2020, 0, 1),
                lazy: false
        });
      }
  }
  
  document.addEventListener('DOMContentLoaded', () => {
      convertirWidgets();
  });

  document.addEventListener('htmx:afterSwap', () => {
      convertirWidgets();
  });

</script>


<p><a href="/">Regresar a la página principal</a></p>

