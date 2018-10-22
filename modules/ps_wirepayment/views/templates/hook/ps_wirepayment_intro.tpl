{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<section>
  <p>
    {l s='Por favor transfiera el importe de la factura a nuestra cuenta bancaria. Recibirá nuestra confirmación de pedido por correo electrónico con los datos bancarios y el número de pedido.' d='Modules.Wirepayment.Shop'}
    {l s='Las mercancías se reservarán %s días para usted y procesaremos el pedido inmediatamente después de recibir el pago.' sprintf=[$bankwireReservationDays] d='Modules.Wirepayment.Shop'}
    {if $bankwireCustomText }
        <a data-toggle="modal" data-target="#bankwire-modal">{l s='Más información' d='Modules.Wirepayment.Shop'}</a>
    {/if}
  </p>

  <div class="modal fade" id="bankwire-modal" tabindex="-1" role="dialog" aria-labelledby="Bankwire information" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h2>{l s='Transferencia bancaria' d='Modules.Wirepayment.Shop'}</h2>
        </div>
        <div class="modal-body">
          <p>{l s='El pago se realiza mediante la transferencia del importe de la factura a la siguiente cuenta:' d='Modules.Wirepayment.Shop'}</p>
          {include file='module:ps_wirepayment/views/templates/hook/_partials/payment_infos.tpl'}
          {$bankwireCustomText nofilter}
        </div>
      </div>
    </div>
  </div>
</section>
