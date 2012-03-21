{if is_set( $pagedata.persistent_variable.show_masterhead )|not}
	{include uri='design:page_header_logo.tpl'}
{elseif and( is_set( $pagedata.persistent_variable.show_masterhead ), is_bool( $pagedata.persistent_variable.show_masterhead ) )}
	{include uri='design:page_header_logo.tpl'}
{else}
	{include uri=concat( 'design:', $pagedata.persistent_variable.show_masterhead,'.tpl' )}
{/if}

<div id="metanav" class="alert well subnav">
	<div class="container">
		<ul>
			{include uri='design:page_header_languages.tpl'}
		</ul>
		<ul>
			{include uri='design:page_header_links.tpl'}
		</ul>
	</div>
</div>
