<div class="col-md-12" id="kt_docs_search_handler_position" data-kt-search-keypress="true" data-kt-search-min-length="2" data-kt-search-enter="true" data-kt-search-layout="inline" data-kt-search="true" class="">
    <div class="alert alert-dismissible bg-light-info border border-info border-3 border-dashed d-flex flex-column flex-sm-row w-100 p-5 mb-10 fa-fade">
        <span class="svg-icon svg-icon-2hx svg-icon-info me-4 mb-5 mb-sm-0">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                <path opacity="0.3" d="M2 4V16C2 16.6 2.4 17 3 17H13L16.6 20.6C17.1 21.1 18 20.8 18 20V17H21C21.6 17 22 16.6 22 16V4C22 3.4 21.6 3 21 3H3C2.4 3 2 3.4 2 4Z" fill="black"></path>
                <path d="M18 9H6C5.4 9 5 8.6 5 8C5 7.4 5.4 7 6 7H18C18.6 7 19 7.4 19 8C19 8.6 18.6 9 18 9ZM16 12C16 11.4 15.6 11 15 11H6C5.4 11 5 11.4 5 12C5 12.6 5.4 13 6 13H15C15.6 13 16 12.6 16 12Z" fill="black"></path>
            </svg>
        </span>
        <div class="d-flex flex-column pe-0 pe-sm-10">
            <h5 class="mb-1">For Your Information</h5>
            <span>Data yang ditampilakan hanya 7 hari terakhir</span>
        </div>
    </div>

    <form data-kt-search-element="form" class="w-100 position-relative mb-9" autocomplete="off">
        <div class="card">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="position-relative w-md-400px me-md-2">
                        <input type="hidden" />
                        <span class="svg-icon svg-icon-2 svg-icon-lg-1 svg-icon-gray-500 position-absolute top-50 ms-5 translate-middle-y">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                <rect opacity="0.5" x="17.0365" y="15.1223" width="8.15546" height="2" rx="1" transform="rotate(45 17.0365 15.1223)" fill="black" />
                                <path d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z" fill="black" />
                            </svg>
                        </span>
                        <input type="text" class="form-control form-control-solid px-15" name="search" value="" placeholder="Keyword..." data-kt-search-element="input" />
                        <span class="position-absolute top-50 end-0 translate-middle-y lh-0 d-none me-5" data-kt-search-element="spinner">
                            <span class="spinner-border h-15px w-15px align-middle text-gray-400"></span>
                        </span>
                        <span class="btn btn-flush btn-active-color-primary position-absolute top-50 end-0 translate-middle-y lh-0 me-5 d-none" data-kt-search-element="clear">
                            <span class="svg-icon svg-icon-2 svg-icon-lg-1 me-0">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                    <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black" />
                                    <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black" />
                                </svg>
                            </span>
                        </span>
                    </div>                    
                    <!-- <div class="d-flex align-items-center">
                        <button type="submit" class="btn btn-primary me-5">Search</button>
                        <a id="kt_horizontal_search_advanced_link" class="btn btn-link" data-bs-toggle="collapse" href="#kt_advanced_search_form">Advanced Search</a>
                    </div> -->
                </div>
                <!-- <div class="collapse" id="kt_advanced_search_form">
                    <div class="separator separator-dashed mt-9 mb-6"></div>
                    <div class="row g-8 mb-8">
                        <div class="col-xxl-7">
                            <label class="fs-6 form-label fw-bolder text-dark">Tags</label>
                            <tags class="tagify form-control form-control-solid" tabindex="-1">
                            <tag title="products" contenteditable="false" spellcheck="false" tabindex="-1" class="tagify__tag tagify--noAnim" value="products"><x title="" class="tagify__tag__removeBtn" role="button" aria-label="remove tag"></x><div><span class="tagify__tag-text">products</span></div></tag><tag title="users" contenteditable="false" spellcheck="false" tabindex="-1" class="tagify__tag tagify--noAnim" value="users"><x title="" class="tagify__tag__removeBtn" role="button" aria-label="remove tag"></x><div><span class="tagify__tag-text">users</span></div></tag><tag title="events" contenteditable="false" spellcheck="false" tabindex="-1" class="tagify__tag tagify--noAnim" value="events"><x title="" class="tagify__tag__removeBtn" role="button" aria-label="remove tag"></x><div><span class="tagify__tag-text">events</span></div></tag><span contenteditable="" tabindex="0" data-placeholder="&ZeroWidthSpace;" aria-placeholder="" class="tagify__input" role="textbox" aria-autocomplete="both" aria-multiline="false"></span>
                            </tags><input type="text" class="form-control form-control form-control-solid" name="tags" value="products, users, events">
                        </div>
                        <div class="col-xxl-5">
                            <div class="row g-8">
                                <div class="col-lg-6">
                                    <label class="fs-6 form-label fw-bolder text-dark">Team Type</label>
                                    <select class="form-select form-select-solid select2-hidden-accessible" data-control="select2" data-placeholder="In Progress" data-hide-search="true" data-select2-id="select2-data-10-sn9q" tabindex="-1" aria-hidden="true">
                                        <option value=""></option>
                                        <option value="1">Not started</option>
                                        <option value="2" selected="selected" data-select2-id="select2-data-12-boqe">In Progress</option>
                                        <option value="3">Done</option>
                                    </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-11-fjqi" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-rztm-container" aria-controls="select2-rztm-container"><span class="select2-selection__rendered" id="select2-rztm-container" role="textbox" aria-readonly="true" title="In Progress">In Progress</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                </div>
                                <div class="col-lg-6">
                                    <label class="fs-6 form-label fw-bolder text-dark">Select Group</label>
                                    <div class="nav-group nav-group-fluid">
                                        <label>
                                            <input type="radio" class="btn-check" name="type" value="has" checked="checked">
                                            <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">All</span>
                                        </label>
                                        <label>
                                            <input type="radio" class="btn-check" name="type" value="users">
                                            <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">Users</span>
                                        </label>
                                        <label>
                                            <input type="radio" class="btn-check" name="type" value="orders">
                                            <span class="btn btn-sm btn-color-muted btn-active btn-active-primary fw-bolder px-4">Orders</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-8">
                        <div class="col-xxl-7">
                            <div class="row g-8">
                                <div class="col-lg-4">
                                    <label class="fs-6 form-label fw-bolder text-dark">Min. Amount</label>
                                    <div class="position-relative" data-kt-dialer="true" data-kt-dialer-min="1000" data-kt-dialer-max="50000" data-kt-dialer-step="1000" data-kt-dialer-prefix="$" data-kt-dialer-decimals="2">
                                        <button type="button" class="btn btn-icon btn-active-color-gray-700 position-absolute translate-middle-y top-50 start-0" data-kt-dialer-control="decrease">
                                            <span class="svg-icon svg-icon-1">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                    <rect opacity="0.3" x="2" y="2" width="20" height="20" rx="10" fill="black"></rect>
                                                    <rect x="6.01041" y="10.9247" width="12" height="2" rx="1" fill="black"></rect>
                                                </svg>
                                            </span>
                                        </button>
                                        <input type="text" class="form-control form-control-solid border-0 ps-12" data-kt-dialer-control="input" placeholder="Amount" name="manageBudget" readonly="readonly" value="$50">
                                        <button type="button" class="btn btn-icon btn-active-color-gray-700 position-absolute translate-middle-y top-50 end-0" data-kt-dialer-control="increase">
                                            <span class="svg-icon svg-icon-1">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                    <rect opacity="0.3" x="2" y="2" width="20" height="20" rx="10" fill="black"></rect>
                                                    <rect x="10.8891" y="17.8033" width="12" height="2" rx="1" transform="rotate(-90 10.8891 17.8033)" fill="black"></rect>
                                                    <rect x="6.01041" y="10.9247" width="12" height="2" rx="1" fill="black"></rect>
                                                </svg>
                                            </span>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <label class="fs-6 form-label fw-bolder text-dark">Max. Amount</label>
                                    <div class="position-relative" data-kt-dialer="true" data-kt-dialer-min="1000" data-kt-dialer-max="50000" data-kt-dialer-step="1000" data-kt-dialer-prefix="$" data-kt-dialer-decimals="2">
                                        <button type="button" class="btn btn-icon btn-active-color-gray-700 position-absolute translate-middle-y top-50 start-0" data-kt-dialer-control="decrease">
                                            <span class="svg-icon svg-icon-1">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                    <rect opacity="0.3" x="2" y="2" width="20" height="20" rx="10" fill="black"></rect>
                                                    <rect x="6.01041" y="10.9247" width="12" height="2" rx="1" fill="black"></rect>
                                                </svg>
                                            </span>
                                        </button>
                                        <input type="text" class="form-control form-control-solid border-0 ps-12" data-kt-dialer-control="input" placeholder="Amount" name="manageBudget" readonly="readonly" value="$100">
                                        <button type="button" class="btn btn-icon btn-active-color-gray-700 position-absolute translate-middle-y top-50 end-0" data-kt-dialer-control="increase">
                                            <span class="svg-icon svg-icon-1">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                    <rect opacity="0.3" x="2" y="2" width="20" height="20" rx="10" fill="black"></rect>
                                                    <rect x="10.8891" y="17.8033" width="12" height="2" rx="1" transform="rotate(-90 10.8891 17.8033)" fill="black"></rect>
                                                    <rect x="6.01041" y="10.9247" width="12" height="2" rx="1" fill="black"></rect>
                                                </svg>
                                            </span>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <label class="fs-6 form-label fw-bolder text-dark">Team Size</label>
                                    <input type="text" class="form-control form-control form-control-solid" name="city">
                                </div>
                            </div>
                        </div>
                        <div class="col-xxl-5">
                            <div class="row g-8">
                                <div class="col-lg-6">
                                    <label class="fs-6 form-label fw-bolder text-dark">Category</label>
                                    <select class="form-select form-select-solid select2-hidden-accessible" data-control="select2" data-placeholder="In Progress" data-hide-search="true" data-select2-id="select2-data-13-qfuf" tabindex="-1" aria-hidden="true">
                                        <option value=""></option>
                                        <option value="1">Not started</option>
                                        <option value="2" selected="selected" data-select2-id="select2-data-15-16jm">Select</option>
                                        <option value="3">Done</option>
                                    </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-14-t1a5" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-5z8h-container" aria-controls="select2-5z8h-container"><span class="select2-selection__rendered" id="select2-5z8h-container" role="textbox" aria-readonly="true" title="Select">Select</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                </div>
                                <div class="col-lg-6">
                                    <label class="fs-6 form-label fw-bolder text-dark">Status</label>
                                    <div class="form-check form-switch form-check-custom form-check-solid mt-1">
                                        <input class="form-check-input" type="checkbox" value="" id="flexSwitchChecked" checked="checked">
                                        <label class="form-check-label" for="flexSwitchChecked">Active</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
    </form>

    <div class="card">
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Log Service API</span>
            </h3>
        </div>
        <div class="card-body py-3">
            <div class="table-responsive">
                <table class="table align-middle table-row-dashed fs-6 gy-2">
                    <thead>
						<tr class="align-middle fw-bolder text-muted bg-light">
							<th class="ps-4 rounded-start">Request Id</th>
							<th class="text-center">Ip Address</th>
                            <th class="text-center">Method</th>
                            <th>End Point</th>
                            <th>Source Code</th>
                            <th class="text-center">Code</th>
                            <th class="text-center">Time</th>
							<th class="pe-4 text-end rounded-end min-w-150px">Request Date</th>
                            <th></th>
						</tr>
					</thead>
                    <tbody class="text-gray-600 fw-bold" id="resultlogservice" data-kt-search-element="results"></tbody>
                </table>
            </div>
        </div>
    </div>
</div>