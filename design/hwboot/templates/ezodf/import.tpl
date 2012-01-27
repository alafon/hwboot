<div class="container">
    <div class="hero-unit">

<form enctype="multipart/form-data" method="post" action={"/ezodf/import"|ezurl}>
{section show=$error.number|ne(0)}
   <div class="alert-message warning"><h2><span class="time">[{currentdate()|l10n( shortdatetime )}]</span>{$error.number}) {$error.message} </h2></div>
{/section}

{section show=eq($oo_mode,'imported')}
<div class="alert-message success"><h2><span class="time">[{currentdate()|l10n( shortdatetime )}]</span> {"Document is now imported"|i18n("design/ezwebin/ezodf/import")}</h2></div>
{/section}

<div class="page-header">
<h2>{"OpenOffice.org import"|i18n("design/ezwebin/ezodf/import")}</h2>
</div>

<div class="object-right">
 <img src={"ooo_logo.gif"|ezimage} alt="OpenOffice.org" />
</div>

{section show=eq($oo_mode,'imported')}

<h2>{"Document is now imported"|i18n("design/ezwebin/ezodf/import")}</h2>
<ul>
  <li>{"The object was imported as: %class_name"|i18n('design/ezwebin/ezodf/import','', hash( '%class_name', $class_identifier ) )}</li>
  <li>{"Document imported as"|i18n("design/ezwebin/ezodf/import")} <a href={$url_alias|ezurl}>{$node_name}</a>.</li>
  <li>{"The images are placed in the media and can be re-used."|i18n("design/ezwebin/ezodf/import")}</li>
  <li><a href={"/ezodf/import"|ezurl}>{"Import another document"|i18n("design/ezwebin/ezodf/import")}</a></li>
</ul>

<div class="clearfix">
    <input class="btn" type="submit" name="StoreButton" value="{'Upload file'|i18n('design/ezwebin/ezodf/import')}" />
</div>

{section-else}


<h2>{"Import OpenOffice.org document"|i18n("design/ezwebin/ezodf/import")}</h2>

{section show=$import_type|eq( "replace" )}
<h3>{"Replace document"|i18n("design/ezwebin/ezodf/import")}: {$import_node.name|wash}</h3>
{section-else}
<h3>{"Import to"|i18n("design/ezwebin/ezodf/import")}: {$import_node.name|wash}</h3>
{/section}


<p>
{"You can import OpenOffice.org Writer documents directly into eZ publish from this page. You are
asked where to place the document and eZ publish does the rest. The document is converted into
the appropriate class during the import, you get a notice about this after the import is done.
Images are placed in the media library so you can re-use them in other articles."|i18n("design/ezwebin/ezodf/import")}
</p>

<input type="hidden" name="MAX_FILE_SIZE" value="40000000"/>
<input class="box" name="oo_file" type="file" />

<div class="clearfix">
    <input class="btn" type="submit" name="StoreButton" value="{'Upload file'|i18n('design/ezwebin/ezodf/import')}" />
</div>

{/section}

</form>

</div>
</div>
