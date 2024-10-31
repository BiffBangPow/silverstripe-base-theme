<div class="container">
    <div class="row">

        <div class="col-12 <% if $SideBarView %>col-lg-9<% end_if %>">

            <div class="row">
                <div class="col-12">

                    <h1>$Title</h1>
                    <h2>
                        <% if $ArchiveYear %>
                            <%t SilverStripe\\Blog\\Model\\Blog.Archive 'Archive' %>:
                            <% if $ArchiveDay %>
                                $ArchiveDate.Nice
                            <% else_if $ArchiveMonth %>
                                $ArchiveDate.format('MMMM, y')
                            <% else %>
                                $ArchiveDate.format('y')
                            <% end_if %>
                        <% else_if $CurrentTag %>
                            <%t SilverStripe\\Blog\\Model\\Blog.Tag 'Tag' %>: $CurrentTag.Title
                        <% else_if $CurrentCategory %>
                            <%t SilverStripe\\Blog\\Model\\Blog.Category 'Category' %>: $CurrentCategory.Title
                        <% end_if %>
                    </h2>

                    <% if $Content %>
                        <div class="content mb-4">$Content</div>
                    <% end_if %>

                </div>
            </div>

            <div class="blog-postlist d-lg-grid">
                <% if $PaginatedList.Exists %>
                    <% loop $PaginatedList %>
                        <% include SilverStripe\\Blog\\PostSummary %>
                    <% end_loop %>
                <% else %>
                        <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
                <% end_if %>
            </div>


            $Form
            $CommentsForm

            <% with $PaginatedList %>
                <% include SilverStripe\\Blog\\Pagination %>
            <% end_with %>
        </div>

        <% include SilverStripe\\Blog\\BlogSideBar %>
    </div>
</div>
