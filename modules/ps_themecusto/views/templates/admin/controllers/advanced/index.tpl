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

<div id="psthemecusto">
    <div class="panel col-lg-12">
        <div class="panel-heading">
            {l s='Personalización avanzada' mod='ps_themecusto'}
        </div>
        <div class="row">
            <div class="col-ld-12">
                <p>{l s='Puede editar su hoja de tema usando la función de tema Padre/hijo' mod='ps_themecusto'}:</p>
            </div>
            {if $is_ps_ready}
            <div class="alert alert-warning" role="alert">
                <b>{l s='Sólo uso avanzado.' mod='ps_themecusto'}</b>
                <p class="alert-text">
                    {l s='Es posible que el equipo de soporte no pueda asistirlo en los problemas creados por el tema de su propio hijo.' mod='ps_themecusto'}
                </p>
            </div>
            {/if}
            <div class="col-ld-12 steps">
                <div class="col-lg-3">
                    <div class="col-lg-12 center-img">
                        <img src="{$images}download.png"/>
                    </div>
                    <b>1 - {l s='Descarga tu tema actual' mod='ps_themecusto'}</b>
                    <div class="col-lg-12">
                        <p>{l s='¿Escogiste un tema pero aún quieres traer algunos ajustes específicos? Obtenga un tema infantil, le permitirá conservar las partes que desea y personalizar las otras.' mod='ps_themecusto'}</p>
                    </div>
                </div>
                <div class="col-lg-3 col-lg-push-1">
                    <div class="col-lg-12 center-img">
                        <img src="{$images}edit.png"/>
                    </div>
                    <b>2 - {l s='Edit your child theme' mod='ps_themecusto'}</b>
                    <div class="col-lg-12">
                        <p>{l s='Once the child theme created, next step is simple: apply the changes you want within the desired files, it will handle the customization part while keeping the parent theme’s look and functionality.' mod='ps_themecusto'}</p>
                    </div>
                </div>
                <div class="col-lg-3 col-lg-push-2">
                    <div class="col-lg-12 center-img">
                        <img src="{$images}reupload.png"/>
                    </div>
                    <b>3 - {l s='Upload your child theme' mod='ps_themecusto'}</b>
                    <div class="col-lg-12">
                        <p>{l s='As you only bring modification to the child theme, you can upgrade the parent theme easily, without losing your customization.' mod='ps_themecusto'}</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row row-buttons">
            <div class="col-lg-3">
                <div class="alert alert-danger download_child_theme_error" role="alert">
                    <b>{l s='An error occurred' mod='ps_themecusto'}</b>
                    <p class="alert-text">{l s='Please check that you have the rights to write to the folders /app/cache/ and /themes/' mod='ps_themecusto'}</p>
                </div>
                <div class="btn btn-primary btn-lg btn-block" rel="noopener" id="download_child_theme">
                    {l s='Download theme' mod='ps_themecusto'}
                </div>
                <div class="btn btn-primary btn-lg btn-block js-loader" rel="noopener" >
                    {l s='Downloading' mod='ps_themecusto'}<div class="loader"></div>
                </div>
            </div>
            <div class="col-lg-3 col-lg-push-1">
                <a href="https://devdocs.prestashop.com/1.7/themes/reference/template_inheritance/parent_child_feature/" class="link-child btn btn-outline-secondary btn-lg btn-block" rel="noopener" target="_blank">{l s='How to use parents/child themes' mod='ps_themecusto'} <i class="icon-external-link"></i></a>
            </div>
            <div class="col-lg-3 col-lg-push-2">
                <a href="#" class="btn btn-primary btn-lg btn-block" rel="noopener" data-toggle="modal" data-target="#upload-child-modal" >{l s='Upload child theme' mod='ps_themecusto'}</a>
            </div>
        </div>
        <div class="alert alert-info col-lg-12" role="alert">
            <b>{l s='Information' mod='ps_themecusto'}</b>
            {if $is_ps_ready}
                <p class="alert-text">{l s='By using this method you can only override the CSS of your theme.' mod='ps_themecusto'}</p>
            {else}
                <p class="alert-text">{l s='By using this method you can override the CSS and html of your theme, and add analytics tags.' mod='ps_themecusto'}</p>
            {/if}
            <p class="alert-text">{l s='Make sure you zip your edited theme files directly to the root of your child theme\'s folder before uploading it.' mod='ps_themecusto'}</p>
            <p class="alert-text">{l s='Once uploaded, the child theme will be available in your Theme & Logo section' mod='ps_themecusto'}</p>
        </div>
        {include file="./elem/modal.tpl"}
    </div>
</div>