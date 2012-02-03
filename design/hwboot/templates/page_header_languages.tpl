{if and( is_set( $DesignKeys:used.url_alias ), $DesignKeys:used.url_alias|count|ge(1) )}
    {def $avail_translation = language_switcher( $DesignKeys:used.url_alias )}
{else}
    {def $avail_translation = language_switcher( $site.uri.original_uri)}
{/if}
{foreach $avail_translation as $siteaccess => $lang}
    <li{if $siteaccess|eq($access_type.name)} class="current_siteaccess"{/if}><a class="btn btn-small" href={$lang.url|ezurl}>{$lang.text|wash}</a>{delimiter}{/delimiter}</li>
{/foreach}
