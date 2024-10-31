<div class="post-summary mb-4 mb-lg-0 post-$Pos" <% if $FeaturedImage %>
     style="background-image: url('$FeaturedImage.Fill(700,466).Format('webp').URL')"
<% end_if %>>
    <h2>
        <span class="link">
        <a href="$Link"
           title="<%t SilverStripe\\Blog\\Model\\Blog.LinkToArticle "Link to the article titled: '{title}'" title=$Title %>">
            <% if $MenuTitle %>$MenuTitle
            <% else %>$Title<% end_if %>
        </a>
        </span>
        <span class="readmore">
        <a href="$Link"
           title="<%t SilverStripe\\Blog\\Model\\Blog.LinkToArticle "Link to the article titled: '{title}'" title=$Title %>">
            <%t SilverStripe\\Blog\\Model\\Blog.ReadMore "Read more" %>
        </a>
        </span>

    </h2>
</div>
