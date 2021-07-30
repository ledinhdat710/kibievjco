<div id="offcanvas-flip" uk-offcanvas="flip: true; overlay: true">
    <div class="uk-offcanvas-bar" style="    background: white;
            width: 350px;">

        <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>

        <h3 style="font-size: 14px;
                color: #272727;
                text-transform: uppercase;
                margin: 3px 0 30px 0;
                font-weight: 500; letter-spacing: 2px;">Tìm kiếm</h3>
        <div class="search-box wpo-wrapper-search">
            <form action="search" class="searchform searchform-categoris ultimate-search">
                <div class="wpo-search-inner" style="display:inline">
                    <input type="hidden" name="type" value="product">
                    <input required="" id="inputSearchAuto" name="q" maxlength="40" autocomplete="off" class="searchinput input-search search-input" type="text" size="20" placeholder="Tìm kiếm sản phẩm...">
                </div>
                <button type="submit" class="btn-search btn" id="search-header-btn">
                    <i style="font-weight:bold" class="fas fa-search"></i>
                </button>
            </form>
            <div id="ajaxSearchResults" class="smart-search-wrapper ajaxSearchResults" style="display: none">
                <div class="resultsContent"></div>
            </div>
        </div>
    </div>
</div>