{*
* 2007-2018 PrestaShop
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
* @author    PrestaShop SA <contact@prestashop.com>
* @copyright 2007-2018 PrestaShop SA
* @license   http://addons.prestashop.com/en/content/12-terms-and-conditions-of-use
* International Registered Trademark & Property of PrestaShop SA
*}

<div class="modal fade" id="moduleActionModal" tabindex="-1" role="dialog" aria-labelledby="moduleActionModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="uninstall action_available modal-title" id="moduleActionlModalLongTitle">{l s='¿Desinstalar módulo?' mod='ps_themecusto'}</h4>
                <h4 class="disable action_available modal-title" id="moduleActionlModalLongTitle">{l s='¿Deshabilitar el módulo?' mod='ps_themecusto'}</h4>
                <h4 class="reset action_available modal-title" id="moduleActionlModalLongTitle">{l s='¿Reiniciar módulo?' mod='ps_themecusto'}</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="uninstall action_available">
                    <p>{l s='Estás a punto de desinstalar' mod='ps_themecusto'} <span class="module-displayname" ></span></p>
                    <p>{l s='Esto definitivamente deshabilitará el módulo.' mod='ps_themecusto'}</p>
                </div>
                <div class="disable action_available">
                    <p>{l s='Estás a punto de deshabilitar' mod='ps_themecusto'} <span class="module-displayname" ></span></p>
                    <p>{l s='Se guardarán sus configuraciones actuales, pero el módulo ya no estará activo.' mod='ps_themecusto'}</p>
                </div>
                <div class="reset action_available">
                    <p>{l s='Estás a punto de reiniciar ' mod='ps_themecusto'} <span class="module-displayname" ></span></p>
                    <p>{l s='Esto restaurará la configuración predeterminada.' mod='ps_themecusto'}</p>
                    <p>{l s='Esta acción no se puede deshacer.' mod='ps_themecusto'}</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">{l s='Cancelar' mod='ps_themecusto'}</button>
                <a class="btn btn-primary uppercase" href="#" data-dismiss="modal" data-action="false" data-name="false" data-deletion="true">
                    <span class="uninstall action_available">{l s='Si, desintalarlo' mod='ps_themecusto'}</span>
                    <span class="disable action_available">{l s='Si, deshabilitarlo' mod='ps_themecusto'}</span>
                    <span class="reset action_available">{l s='Si, reiniciarlo' mod='ps_themecusto'}</span>
                </a>
            </div>
        </div>
    </div>
</div>