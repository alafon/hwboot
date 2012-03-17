<div id="secondary-sidebar">
	{if is_array( $pagedata.extra_menu )}
		{foreach $pagedata.extra_menu as $extra_menu}
			<div class="well">
			{include uri=concat('design:parts/', $extra_menu, '.tpl')}
			</div>
			{delimiter}<div class="hr"></div>{/delimiter}
		{/foreach}
	{else}
		<div class="well">
		{include uri=concat('design:parts/', $pagedata.extra_menu, '.tpl')}
		</div>
	{/if}
</div>
