<article class="container">
    <h1>$Title</h1>
    <div class="crumbs mb-4">
        $Breadcrumbs
    </div>
    <div class="row">
        <div class="col-12 blog-entry col-lg-9">
            <% if $FeaturedImage %>
                <% with $FeaturedImage.ScaleWidth(995) %>
                    <source type="image/webp" srcset="$Format('webp').URL">
                    <img alt="$Title" class="img-fluid mb-5" src="$URL" loading="lazy" width="$Width"
                         height="$Height">
                <% end_with %>
            <% end_if %>
            <div class="content">$Content</div>
        </div>
        <div class="col-12 col-lg-3 blog-post-sidebar">
            <% include SilverStripe\\Blog\\EntryMeta %>
            <div class="sharelinks">
                <p><%t SilverStripe\\Blog\\Model\\Blog.ShareArticle "Share this article:" %></p>
                <% include SilverStripe\\Blog\\ShareIcons %>
            </div>
        </div>
    </div>
    <div>
        $Form
        $CommentsForm
    </div>
</article>
