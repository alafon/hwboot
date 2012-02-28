{**
 * HWBoot
 *
 * @category    design
 * @package     hwboot
 * @copyright   Copyright (c) 2012 Holzweg e-commerce solutions (http://www.holzweg.com)
 * @license     http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 *}

{* Blog post - Line view *}
<div class="class-blog-post">

<div class="attribute-header page-header">
    <h2><a href={$node.url_alias|ezurl} title="{$node.data_map.title.content|wash}">{$node.data_map.title.content|wash}</a></h2>
 </div>

<div class="alert alert-info">
    <a class="close" data-dismiss="alert" href="#">&times;</a>
    <p>{$node.data_map.publication_date.content.timestamp|l10n(shortdatetime)}</p>
    <p><span class="label label-info">{$node.object.owner.name}</span></p>
    <p>{foreach $node.data_map.tags.content.keywords as $keyword}
                                       <a class="btn btn-info btn-small" href={concat( $node.parent.url_alias, "/(tag)/", $keyword|rawurlencode )|ezurl} title="{$keyword}"><i class="icon-tag icon-white"></i> {$keyword}</a>
                                 {/foreach}
    </p>
</div>

    <div class="attribute-body">
        {attribute_view_gui attribute=$node.data_map.body}
    </div>

    {if $node.data_map.enable_comments.data_int}
    <div class="attribute-comments">
    <p>
    {def $comment_count = fetch( 'content', 'list_count', hash( 'parent_node_id', $node.node_id,
                                                                'class_filter_type', 'include',
                                                                'class_filter_array', array( 'comment' ) ) )}
    {if $comment_count|gt( 0 )}
        <a class="btn" href={concat( $node.url_alias, "#comments" )|ezurl}><i class="icon-comment"></i> {"View comments"|i18n("design/ezwebin/line/blog_post")} ({$comment_count})</a>
    {else}
        <a class="btn" href={concat( $node.url_alias, "#comments" )|ezurl}><i class="icon-comment"></i> {"Add comment"|i18n("design/ezwebin/line/blog_post")}</a>
    {/if}
    </p>
    </div>
    {/if}

</div>
