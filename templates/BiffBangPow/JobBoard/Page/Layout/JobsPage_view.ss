<div class="container mt-5">
    <h1>$jobtitle</h1>
    <p>Location: {$location}</p>
    <p>Work Type: {$jobtype}</p>
    <p>Job Ref: {$jobref}</p>
    <% if $bullets %>
        $bullets
    <% end_if %>

    <button data-micromodal-trigger="modal-$ID" class="btn btn-primary">Apply now</button>

    <div class="my-4">
        {$detail}
    </div>

</div>


<div class="modal micromodal-slide" id="modal-$ID" aria-hidden="true">
    <div class="modal__overlay" tabindex="-1" data-micromodal-close>
        <div>
            <div class="accent"></div>
            <div class="modal__container" role="dialog" aria-modal="true">
                <header class="modal__header">
                    <button class="modal__close" aria-label="Close modal" data-micromodal-close></button>
                </header>
                <main class="modal__content" id="modal-$ID-content">
                    <div class="modal__text-container">
                        <h3>Fill in your details to apply</h3>
                        $ApplicationForm
                        <div id="applicationform-message"></div>
                    </div>
                </main>
            </div>
        </div>
    </div>
</div>