{* Image - List item view *}

<div class="content">
    <div class="class-image hero-unit">

    <h3>{$node.name|wash}</h3>

	{attribute_view_gui attribute=$node.data_map.image image_class=listitem href=$node.url_alias|ezurl()}

    <div class="content-caption">
        {attribute_view_gui attribute=$node.data_map.caption}
    </div>

    </div>
</div>
