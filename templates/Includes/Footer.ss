
<footer class="footer py-4 mb-5">
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-6">
                <p class="mb-0">
                    <% loop $BottomFooterMenu() %>
                        <a class="$NavigationClass" href="$Link" title="$Title.XML">
                            $MenuTitle.XML
                        </a> <% if not $Last %> | <% end_if %>
                    <% end_loop %>
                </p>
            </div>
            <div class="col-12 col-lg-6 text-lg-right">
                <p class="mb-0">Website crafted by <a href="https://biffbangpow.com" class="font-weight-bold text-white"
                                                      target="_blank" rel="noopener">Biff Bang Pow</a>
                </p>
            </div>
        </div>
    </div>
</footer>


