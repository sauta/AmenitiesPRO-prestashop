<?php
/* Smarty version 3.1.32, created on 2018-09-21 10:42:44
  from '/home/amenitie/public_html/amenities/themes/default/template/content.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5ba5036465d702_70033613',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7c25a4ea91a10799a12d1d8f12001602f3293309' => 
    array (
      0 => '/home/amenitie/public_html/amenities/themes/default/template/content.tpl',
      1 => 1532476664,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ba5036465d702_70033613 (Smarty_Internal_Template $_smarty_tpl) {
?><div id="ajax_confirmation" class="alert alert-success hide"></div>
<div id="ajaxBox" style="display:none"></div>


<div class="row">
	<div class="col-lg-12">
		<?php if (isset($_smarty_tpl->tpl_vars['content']->value)) {?>
			<?php echo $_smarty_tpl->tpl_vars['content']->value;?>

		<?php }?>
	</div>
</div>
<?php }
}
