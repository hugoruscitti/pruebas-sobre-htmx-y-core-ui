  <ul>
    % for item in lista_de_numeros:
    <li>{{item}}</li>
    % end
  </ul>


<div id="resumen" class="card pa2 ba b--red mb2" hx-swap-oob="true">
  Resumen: hay {{cantidad}} Elementos en la lista.
</div>

