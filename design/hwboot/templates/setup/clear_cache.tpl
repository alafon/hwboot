{let selected_cache_type=ezpreference( 'admin_clearcache_type' )
     caches_list=array( array( 'All', 'All caches'|i18n( 'design/standard/pagelayout' )|wash, false ),
                        array( 'Content', 'Content'|i18n( 'design/standard/pagelayout' )|wash, false ),
                        array( 'ContentNode', 'Content - node'|i18n( 'design/standard/pagelayout' )|wash, true ),
                        array( 'ContentSubtree', 'Content - subtree'|i18n( 'design/standard/pagelayout' )|wash, true ),
                        array( 'Template', 'Template'|i18n( 'design/standard/pagelayout' )|wash, false ),
                        array( 'TemplateContent', 'Template & content'|i18n( 'design/standard/pagelayout' )|wash, false),
                        array( 'Ini', 'Ini settings'|i18n( 'design/standard/pagelayout' )|wash, false ),
                        array( 'Static', 'Static'|i18n( 'design/standard/pagelayout' )|wash, false ) )}

<form id="clearcache" action={'setup/cachetoolbar'|ezurl} method="post">
{default ui_context=''}
<div class="block">
{if is_set( $module_result.content_info.node_id )}
  <input type="hidden" name="NodeID" value="{$module_result.content_info.node_id}" />
  <input type="hidden" name="ObjectID" value="{$module_result.content_info.object_id}" />
{/if}
<select{eq( $ui_context, 'edit' )|choose( '', ' disabled="disabled"' )} name="CacheTypeValue">
   {section loop=$caches_list}
      {if eq( $:item.2, false )}
        <option{eq( $selected_cache_type, $:item.0 )|choose( '', ' selected="selected"' )} value="{$:item.0}">{$:item.1}</option>
      {else}
       {if is_set( $module_result.content_info )}
        <option{eq( $selected_cache_type, $:item.0 )|choose( '', ' selected="selected"' )} value="{$:item.0}">{$:item.1}</option>
       {/if}
      {/if}
   {/section}
</select>
</div>
<div class="block">
    <input {eq( $ui_context, 'edit' )|choose( 'class="btn btn-success"', 'class="btn btn-success disabled"' )}{eq( $ui_context, 'edit' )|choose( '', ' disabled="disabled"' )} type="submit" name="ClearCacheButton" value="{'Clear'|i18n( 'design/standard/pagelayout' )}" />
</div>
{/default}
</form>
{/let}
