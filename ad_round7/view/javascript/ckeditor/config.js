/**
 * @license Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'en';
	// config.uiColor = '#AADC6E';
	
	config.filebrowserBrowseUrl = 'index.php?route=common/filemanager';
	config.filebrowserImageBrowseUrl = 'index.php?route=common/filemanager';
	config.filebrowserFlashBrowseUrl = 'index.php?route=common/filemanager';
	config.filebrowserUploadUrl = 'index.php?route=common/filemanager';
	config.filebrowserImageUploadUrl = 'index.php?route=common/filemanager';
	config.filebrowserFlashUploadUrl = 'index.php?route=common/filemanager';
	
	config.filebrowserWindowWidth = '960';
	config.filebrowserWindowHeight = '580';
	
	config.htmlEncodeOutput = false;
	config.entities = false;

    config.contentsLangDirection = 'ltr';
	//config.contentsLangDirection = 'rtl';
	config.skin = 'kama';
	// config.skin = 'moono';
	config.toolbar = 'full';
  //config.toolbar = 'Custom';
  config.font_names = 
  'Arial/Arial, Helvetica, sans-serif;' +
  'FuturaPTWebMedium;'+
 	'Comic Sans MS/Comic Sans MS, cursive;' +
 	'Courier New/Courier New, Courier, monospace;' +
	'Georgia/Georgia, serif;' +
 	'Lucida Sans Unicode/Lucida Sans Unicode, Lucida Grande, sans-serif;' +
 	'Tahoma/Tahoma, Geneva, sans-serif;' +
 	'Times New Roman/Times New Roman, Times, serif;' +
	'Trebuchet MS/Trebuchet MS, Helvetica, sans-serif;' +
  'Century Gothic/Century Gothic, Apple Gothic, sans-serif;' +
  'Courier New, Courier, Andale Mono, monospace;'+
  'Verdana, Geneva, Tahoma, sans-serif;'+
  'Times, Times New Roman, Georgia, serif;'+
  'Arial, sans-serif;'+
  'Trebuchet MS, Lucida Sans Unicode, sans-serif;'+
  'Georgia, Palatino, Palatino Linotype, Times, Times New Roman, serif;'+
  'Impact, Haettenschweiler, Arial Narrow Bold, Gadget, sans-serif;'+
  'Arial Black, Arial Bold, Gadget, sans-serif;'+
  'Tahoma, Geneva, Verdana, sans-serif;'+
  'Palatino, Palatino Linotype, Georgia, Times, Times New Roman, serif;'+
  'Arial Narrow, Arial, sans-serif;'+
  'sans-serif;'+
 	'Verdana/Verdana, Geneva, sans-serif';

// config.toolbar_Custom =
// [
//   { name: 'document', items : [ 'Source','-','Save','NewPage','DocProps','Preview','Print','-','Templates' ] },
//   { name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
//   { name: 'forms', items : [ 'Form','Checkbox','Radio','TextField','Textarea','Select','Button','ImageButton','HiddenField' ] },
//   { name: 'tools', items : [ 'Maximize', 'ShowBlocks','-','About' ] },
//   '/',
//   { name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','CreateDiv','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','-','BidiLtr','BidiRtl' ] },
//   { name: 'editing', items : [ 'Find','Replace','-','SelectAll','-','SpellChecker', 'Scayt' ] },
//   { name: 'insert', items : [ 'Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak','Iframe' ] },
//   { name: 'links', items : [ 'Link','Unlink','Anchor' ] },
//   '/',
//   { name: 'basicstyles', items : [ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-','RemoveFormat' ] },
//   { name: 'styles', items : [ 'Styles','Format','Font','FontSize' ] },
//   { name: 'colors', items : [ 'TextColor','BGColor' ] }
// ];
};
