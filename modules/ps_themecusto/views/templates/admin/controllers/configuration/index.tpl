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
    {if $is_ps_ready}
    <div class="panel col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
        <div class="panel-heading">
            {l s='Cambia los colores, la tipografía y la posición de tu logotipo.' mod='ps_themecusto'}
        </div>
        <div class="row">
            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                <img src="{$iconConfiguration}"/>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                <p>
                    {l s='Utilice el módulo configurador de temas para personalizar los elementos gráficos principales de su sitio web: colores, botones, tipografía, posición del logotipo.' mod='ps_themecusto'}:<br/>
                </p>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                <a href="{$themeConfiguratorUrl}" class="btn btn-primary btn-lg btn-block" rel="noopener">{l s='Configurar' mod='ps_themecusto'}</a>
            </div>
        </div>
    </div>
    {/if}
    <div class="panel col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
        <div class="panel-heading">
            {l s='Tema principal de los módulos de la cartografía.' mod='ps_themecusto'}
        </div>
        <div class="row">
            <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                {include file="./elem/wireframe.tpl"}
            </div>
            <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 module-list">
                {foreach from=$elementsList key=categoryname item=categories name=cat}
                <div class="row configuration-rectangle">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 js-module-name js-title-{$categoryname}" data-module_name="{$categoryname}">
                        <span class="col-lg-11 col-sm-11 col-xs-11 col-md-11">
                            {$listCategories[$categoryname]}
                        </span>
                        <span class="col-lg-1 col-sm-1 col-xs-1 col-md-1 configuration-rectangle-caret">
                            <i class="material-icons down">keyboard_arrow_down</i>
                            <i class="material-icons up">keyboard_arrow_up</i>
                        </span>
                    </div>
                    {foreach from=$categories key=type item=elements}
                        {if $type == 'pages'}
                            {foreach from=$elements item=page}
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 module-informations">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                                            <i class="icon-cogs"></i>
                                        </div>
                                        <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <b>{$page.displayName}</b>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-7 description">
                                                {$page.description}
                                            </div>
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1 general-action">
                                                <a class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-radius-right btn btn-primary-reverse btn-outline-primary light-button" href="{$page.url}">
                                                    {l s='Configuracion' mod='ps_themecusto'}
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            {/foreach}
                        {else}
                            {foreach from=$elements item=module name=mods}
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 module-informations">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                                            <img class="module-logo" src="{$ps_uri|cat:$module.logo}"/>
                                        </div>
                                        <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <b>{$module.displayName}</b>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-7 description">
                                                {$module.description}
                                            </div>
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                                                {include file="./elem/module_actions.tpl"}
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            {/foreach}
                        {/if}
                    {foreachelse}
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 module-informations">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                                    <i class="material-icons hidden-xs">extension</i>
                                </div>
                                <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <b>{l s='No hay módulo para esta sección.' mod='ps_themecusto'}</b>
                                    </div>
                                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-7 description">
                                        {l s='Puede instalar un módulo para esta sección desde nuestra Selección de módulos' mod='ps_themecusto'}
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1 general-action">
                                        <a class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-radius-right btn btn-primary-reverse btn-outline-primary light-button" href="{$selectionModulePage}" >
                                            {l s='Ver selección de módulos.' mod='ps_themecusto'}
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/foreach}
                </div>
                {/foreach}
                <div class="row">
                    <div class="col-lg-4 col-lg-offset-8">
                        <a class="btn btn-primary btn-lg btn-block" href="{$installedModulePage}#theme_modules">{l s='Ver todos los módulos del tema' mod='ps_themecusto'}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {include file="./elem/modal.tpl"}
</div>

