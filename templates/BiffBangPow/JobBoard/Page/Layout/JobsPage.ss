<div class="container mt-5">
    <div>
        <h1>$Title.XML</h1>
    </div>

    <div id="app"
         data-results-link="$Link('getresults')"
         data-fields-config-link="$Link('getfieldsconfig')"
         data-default-page-size="12"
    >
        <div class="job-columns row">
            <div class="search-filters p-3 col-12 col-lg-3" id="filters">
                <form v-on:submit.prevent="getResults()" ref="jobSearchForm">
                    <div v-for="(field, id) in fieldsConfig" class="mb-4">
                        <filter-input
                            :field="field"
                            :id="id"
                            v-model="filterValues[id]"
                            ref="jbfilterinput"
                        ></filter-input>
                    </div>
                    <!--<sort-dropdown v-model="sort" :sort-config="sortConfig"></sort-dropdown>-->
                    <div class="d-flex flex-column mt-5">
                        <button type="submit" class="btn btn-primary mb-3">Search</button>
                        <button v-on:click="clearAllFilterValues" class="btn btn-outline-primary">Clear filters</button>
                    </div>
                    <p class="my-5">Showing {{ totalResults }} results</p>
                </form>
            </div>
            <div class="jobs-panel col-12 col-lg-9" id="jobs-panel">
                <template v-if="totalResults > 0">
                    <div class="job-listings d-flex">
                        <div v-for="job in results" class="job-card p-3 m-3 d-flex flex-column" :data-record="job.ID">
                            <div class="mb-3 job-bullets">
                                <p class="bullet" v-if="job.Data.location">
                                    <svg xmlns="http://www.w3.org/2000/svg" height="16" width="16"
                                         viewBox="0 0 512 512" aria-labelledby="check-title-1">
                                        <title id="check-title-1"><%t Engage.Checkbox 'Tick icon' %></title>
                                        <path fill="#000000"
                                              d="M256 512A256 256 0 1 0 256 0a256 256 0 1 0 0 512zM369 209L241 337c-9.4 9.4-24.6 9.4-33.9 0l-64-64c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l47 47L335 175c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9z"/>
                                    </svg>
                                    {{ job.Data.location }}
                                </p>
                                <p class="bullet" v-if="job.Data.jobtype">
                                    <svg xmlns="http://www.w3.org/2000/svg" height="16" width="16"
                                         viewBox="0 0 512 512" aria-labelledby="check-title-2">
                                        <title id="check-title-2"><%t Engage.Checkbox 'Tick icon' %></title>
                                        <path fill="#000000"
                                              d="M256 512A256 256 0 1 0 256 0a256 256 0 1 0 0 512zM369 209L241 337c-9.4 9.4-24.6 9.4-33.9 0l-64-64c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l47 47L335 175c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9z"/>
                                    </svg>
                                    {{ job.Data.jobtype }}
                                </p>
                            </div>
                            <div class="h-100">
                                <p><strong>{{ job.Data.jobtitle }}</strong></p>
                                <p>{{ job.Data.summary }}</p>
                            </div>
                            <a :href="getJobLink(job)" class="btn btn-outline-primary w-100 d-block">See more</a>
                        </div>
                    </div>
                    <div class="pagination mb-5 px-3">
                        <p>Page {{ currentPage }} of {{ totalPages }}</p>
                        <a :href="paginatePrevLink" v-on:click.prevent="paginatePrev" v-if="shouldShowPaginationPrev">Prev</a>
                        <a :href="paginateToPageLink(pageNum)"
                           v-for="pageNum in totalPages"
                           v-on:click.prevent="paginateToPage(pageNum)"
                           :class="paginationClass(pageNum)"
                        >{{pageNum}}</a>
                        <a :href="paginateNextLink" v-on:click.prevent="paginateNext" v-if="shouldShowPaginationNext">Next</a>
                    </div>
                </template>
                <template v-else>
                    <p v-if="loading">Loading...</p>
                    <p v-else>Sorry, there are no jobs which match your search</p>
                </template>
            </div>
        </div>
    </div>
</div>

