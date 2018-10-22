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

{if $status == 'ok'}
    <p>
      {l s='Su pedido en %s está completo.' sprintf=[$shop_name] d='Modules.Wirepayment.Shop'}<br/>
      {l s='Por favor envíenos una transferencia bancaria con:' d='Modules.Wirepayment.Shop'}
    </p>
    {include file='module:ps_wirepayment/views/templates/hook/_partials/payment_infos.tpl'}

    <p>
      {l s='Por favor, especifique su referencia de pedido% s en la descripción de bankwire.' sprintf=[$reference] d='Modules.Wirepayment.Shop'}<br/>
      {l s='We\'ve also sent you this information by e-mail.' d='Modules.Wirepayment.Shop'}
    </p>
    <strong>{l s='Su pedido será enviado tan pronto como recibamos el pago.' d='Modules.Wirepayment.Shop'}</strong>
    <p>
      {l s='Si tiene preguntas, comentarios o inquietudes, póngase en contacto con nuestro [1]experto equipo de soporte al cliente[/1].' d='Modules.Wirepayment.Shop' sprintf=['[1]' => "<a href='{$contact_url}'>", '[/1]' => '</a>']}
    </p>
{else}
    <p class="warning">
      {l s='Notamos un problema con su pedido. Si cree que esto es un error, no dude en ponerse en contacto con nuestro[1]eexperto equipo de soporte al cliente[/1].' d='Modules.Wirepayment.Shop' sprintf=['[1]' => "<a href='{$contact_url}'>", '[/1]' => '</a>']}
    </p>
{/if}
