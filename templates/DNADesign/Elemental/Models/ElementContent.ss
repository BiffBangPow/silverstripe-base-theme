<div class="container">
    <% if $Title && $ShowTitle %>
        <div class="row mb-4">
            <div class="col-12">
                <h2 class="element-title">$Title</h2>
            </div>
        </div>
    <% end_if %>
    <div class="row">
        <div class="col-12">
        $HTML
        </div>
    </div>
</div>
