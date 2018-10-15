<?php
/* Smarty version 3.1.32, created on 2018-09-21 10:42:39
  from '/home/amenitie/public_html/amenities/themes/new-theme/template/content.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5ba5035f4d7855_16243453',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1940bda47fd090d28ba02c55593c151d1c186182' => 
    array (
      0 => '/home/amenitie/public_html/amenities/themes/new-theme/template/content.tpl',
      1 => 1532476664,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ba5035f4d7855_16243453 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div id="ajax_confirmation" class="alert alert-success" style="display: none;"></div>


<?php if (isset($_smarty_tpl->tpl_vars['content']->value)) {?>
  <?php echo $_smarty_tpl->tpl_vars['content']->value;?>

<?php }
}
}
