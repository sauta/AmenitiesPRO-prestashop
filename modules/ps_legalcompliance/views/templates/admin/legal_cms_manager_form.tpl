{**
 * 2007-2016 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
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
 *  @author 	PrestaShop SA <contact@prestashop.com>
 *  @copyright  2007-2016 PrestaShop SA
 *  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 *  International Registered Trademark & Property of PrestaShop SA
 *}

<form id="legalCMSManager" class="defaultForm form-horizontal" action="{$form_action}" method="POST" enctype="multipart/form-data" novalidate>
    <input type="hidden" name="AEUC_legalContentManager" value="1">
    <div class="panel">
        <div class="panel-heading">
            <i class="icon-cogs"></i>
            {l s='Gestión de contenidos legales.' d='Modules.Legalcompliance.Admin'}
        </div>
        <p>
            {l s='La legislación de su país puede requerir que comunique cierta información legal específica a sus clientes.' d='Modules.Legalcompliance.Admin'}
        </p>
        <p>
            {l s='El módulo de Cumplimiento Legal proporciona los medios para indicar información legalmente requerida a su cliente, utilizando páginas estáticas (algunas creadas a propósito por el módulo). Es su responsabilidad completar las páginas correspondientes con el contenido requerido.' d='Modules.Legalcompliance.Admin'}
        </p>
        <p>
            {l s='Para cada uno de los temas a continuación, primero indique cuál de sus Páginas contiene la información requerida:' d='Modules.Legalcompliance.Admin'}
        </p>
        <br/>
        <div class="form-wrapper">
                {foreach from=$cms_roles_assoc key=id_cms_role item=cms_role_assoc}
                    <div class="form-group">
                        <label class="control-label col-lg-3">
                            {$cms_role_assoc['role_title']|escape:'htmlall'}
                        </label>

                        <div class="col-lg-9">
                            <select class="form-control fixed-width-xxl" name="CMSROLE_{$id_cms_role|intval}" id="CMSROLE_{$id_cms_role|intval}">
                                <option value="{$cms_pages[-1]->id|intval}" {if $cms_role_assoc['id_cms'] == $cms_pages[-1]->id}selected{/if}>{$cms_pages[-1]->meta_title|escape:'htmlall'}</option>
                                {foreach from=$cms_pages key=item_key item=cms_page}
                                    {if $item_key !== -1}
                                        <option value="{$cms_page->id|intval}" {if $cms_role_assoc['id_cms'] == $cms_page->id}selected{/if}>{$cms_page->meta_title|escape:'htmlall'}</option>
                                    {/if}
                                {/foreach}
                            </select>
                        </div>
                    </div>
                {/foreach}
        </div>
        <div class="panel-footer">
            <button type="submit" class="btn btn-default pull-right">
                <i class="process-icon-save"></i>  {l s='Guardar' d='Admin.Actions'}
            </button>
            <a href="{$add_cms_link}" class="btn btn-default">
                <i class="process-icon-plus"></i> {l s='Aañadir nueva página' d='Modules.Legalcompliance.Admin'}
            </a>
        </div>

    </div>


</form>
