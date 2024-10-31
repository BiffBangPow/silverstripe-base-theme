<p class="blog-post-meta">
    <% if $Categories.exists %>
        <br>
        <%t SilverStripe\\Blog\\Model\\Blog.PostedIn "Posted in" %>
        <% loop $Categories %>
            <a href="$Link" title="$Title">$Title</a><% if not $IsLast %>, <% else %>;<% end_if %>
        <% end_loop %>
    <% end_if %>

    <% if $Tags.exists %>
        <br>
        <%t SilverStripe\\Blog\\Model\\Blog.Tagged "Tagged" %>
        <% loop $Tags %>
            <a href="$Link" title="$Title">$Title</a><% if not $IsLast %>, <% else %>;<% end_if %>
        <% end_loop %>
    <% end_if %>
</p>
    <p>
    <%t SilverStripe\\Blog\\Model\\Blog.Posted "Posted" %>
    <a href="$MonthlyArchiveLink">$PublishDate.ago</a>

    <% if $Credits %>
        <%t SilverStripe\\Blog\\Model\\Blog.By "by" %>

        <% loop $Credits %>
            <% if not $IsFirst && not $IsLast %>, <% end_if %>
            <% if not $IsFirst && $IsLast %> <%t SilverStripe\\Blog\\Model\\Blog.AND "and" %> <% end_if %>
            <% if $URLSegment && not $Up.ProfilesDisabled %>
                <a href="$URL">$Name.XML</a>
            <% else %>
                $Name.XML
            <% end_if %>
        <% end_loop %>
    <% end_if %>
</p>
