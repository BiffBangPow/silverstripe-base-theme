<div class="container">
    <div class="row g-0">
        <div class="textvideo-text col-12 col-lg flex-lg-grow<% if $VideoFirst %> order-last<% end_if %> text-start text-md-center d-flex flex-column justify-content-center">
            <div class="text p-3<% if $VideoFirst %> order-last<% end_if %>">
                <% if $ShowTitle %>
                    <h2 class="mb-2 element-title">$Title</h2>
                   <span class="underline mb-3"></span>
                <% end_if %>
                <div>$Content</div>
                <% if $CTAType != 'None' %>
                    <div class="cta my-4">
                        <p>
                            <a href="$CTALink" class="cta-link btn btn-outline-primary"
                                <% if $CTAType == 'External' %>target="_blank" rel="noopener"
                                <% else_if $CTAType == 'Download' %>download
                                <% end_if %>>
                                $LinkText
                            </a>
                        </p>
                    </div>
                <% end_if %>
            </div>
        </div>
        <div class="textvideo-video col-12 $VideoWidthClass">
            <div class="ratio ratio-16x9">
                <% if $VideoType == 'youtube' %>
                    <lite-youtube videoid="$VideoID">
                        <a href="https://youtube.com/watch?v=$VideoID" class="lite-youtube-fallback" title="Play Video">
                            <span class="lyt-visually-hidden">Play Video</span>
                        </a>
                    </lite-youtube>
                <% end_if %>
                <% if $VideoType == 'vimeo' %>
                    <iframe title="vimeo-player" class="video w-100 m-lg-auto"
                            src="https://player.vimeo.com/video/$VideoID" allowfullscreen loading="lazy"></iframe>
                <% end_if %>
            </div>
        </div>
    </div>
</div>
