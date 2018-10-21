{extends file='customer/page.tpl'}

{block name='page_title'}
  <h1 class="h1">{l s='Detalles de retorno' d='Shop.Theme.Customeraccount'}</h1>
{/block}

{block name='page_content'}
  {block name='order_return_infos'}
    <div id="order-return-infos" class="card">
      <div class="card-block">
        <p>
          <strong>{l
            s='%number% en %date%'
            d='Shop.Theme.Customeraccount'
            sprintf=['%number%' => $return.return_number, '%date%' => $return.return_date]}
          </strong>
        </p>
        <p>{l s='Hemos registrado su solicitud de devolución.' d='Shop.Theme.Customeraccount'}</p>
        <p>{l
          s='Su paquete debe ser devuelto dentro de %number% días después de recibir su pedido.'
          d='Shop.Theme.Customeraccount'
          sprintf=['%number%' => $configuration.number_of_days_for_return]}</p>
        <p>
          {* [1][/1] is for a HTML tag. *}
          {l
            s='El estado actual de su devolución de mercancía es: [1] %status% [/1]'
            d='Shop.Theme.Customeraccount'
            sprintf=[
              '[1]' => '<strong>',
              '[/1]' => '</strong>',
              '%status%' => $return.state_name
            ]
          }
        </p>
        <p>{l s='Lista de artículos a devolver:' d='Shop.Theme.Customeraccount'}</p>
        <table class="table table-striped table-bordered">
          <thead class="thead-default">
            <tr>
              <th>{l s='Producto' d='Shop.Theme.Catalog'}</th>
              <th>{l s='Cantidad' d='Shop.Theme.Checkout'}</th>
            </tr>
          </thead>
          <tbody>
          {foreach from=$products item=product}
            <tr>
              <td>
                <strong>{$product.product_name}</strong>
                {if $product.product_reference}
                  <br />
                  {l s='Referencia' d='Shop.Theme.Catalog'}: {$product.product_reference}
                {/if}
                {if $product.customizations}
                  {foreach from=$product.customizations item="customization"}
                    <div class="customization">
                      <a href="#" data-toggle="modal" data-target="#product-customizations-modal-{$customization.id_customization}">{l s='Product customization' d='Shop.Theme.Catalog'}</a>
                    </div>
                    <div class="modal fade customization-modal" id="product-customizations-modal-{$customization.id_customization}" tabindex="-1" role="dialog" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title">{l s='Personalización del producto' d='Shop.Theme.Catalog'}</h4>
                          </div>
                          <div class="modal-body">
                            {foreach from=$customization.fields item="field"}
                              <div class="product-customization-line row">
                                <div class="col-sm-3 col-xs-4 label">
                                  {$field.label}
                                </div>
                                <div class="col-sm-9 col-xs-8 value">
                                  {if $field.type == 'text'}
                                    {if (int)$field.id_module}
                                      {$field.text nofilter}
                                    {else}
                                      {$field.text}
                                    {/if}
                                  {elseif $field.type == 'image'}
                                    <img src="{$field.image.small.url}">
                                  {/if}
                                </div>
                              </div>
                            {/foreach}
                          </div>
                        </div>
                      </div>
                    </div>
                  {/foreach}
                {/if}
              </td>
              <td>
                {if $product.customizations}
                  {$product.product_quantity}
                {else}
                  {foreach $product.customizations as $customization}
                    {$customization.quantity}
                  {/foreach}
                {/if}
              </td>
            </tr>
          {/foreach}
          </tbody>
        </table>
      </div>
    </div>
  {/block}

  {if $return.state == 2}
    <section class="card">
      <div class="card-block">
        <h3 class="card-title h3">{l s='Reminder' d='Shop.Theme.Customeraccount'}</h3>
        <p class="card-text">
          {l
            s='Toda la mercancía debe devolverse en su embalaje original y en su estado original.'
            d='Shop.Theme.Customeraccount'
          }<br>
          {* [1][/1] is for a HTML tag. *}
          {l
            s='Imprima el [1]formulario de devoluciones[/1] e inclúyalo con su paquete.'
            d='Shop.Theme.Customeraccount'
            sprintf=[
              '[1]' => '<a href="'|cat:$return.print_url|cat:'">',
              '[/1]' => '</a>'
            ]
          }
          <br>
          {* [1][/1] is for a HTML tag. *}
          {l
            s='Por favor revise el [1]formulario de devoluciones[/1] para la dirección correcta.'
            d='Shop.Theme.Customeraccount'
            sprintf=[
              '[1]' => '<a href="'|cat:$return.print_url|cat:'">',
              '[/1]' => '</a>'
            ]
          }
        </p>
        <p class="card-text">
          {l
            s='Cuando recibamos su paquete, se lo notificaremos por correo electrónico. Entonces comenzaremos a procesar el reembolso de la orden.'
            d='Shop.Theme.Customeraccount'
          }<br>
          <a href="{$urls.pages.contact}">
            {l
              s='Por favor, háganos saber si tiene alguna pregunta.'
              d='Shop.Theme.Customeraccount'
            }
          </a><br>
          {l
            s='Si no se respetan las condiciones de devolución mencionadas anteriormente, nos reservamos el derecho de rechazar su paquete y/o reembolso.'
            d='Shop.Theme.Customeraccount'
          }
        </p>
      </div>
    </section>
  {/if}
{/block}
