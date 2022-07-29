{extends file="index.tpl"}
{block name="body"}
    <div class="row">
        <div class="col-md-8">
            <div class="div_row">
                <div class="container_lft">
                    <div class="div_row"><img alt="Ashland Taxi" height="93" src="//{$smarty.server.SERVER_NAME}/assets/images/about-us.png" class="w-100" /></div>
                    <div class="row">
                        <div class="col-12 mb-4 mt-4">
                            <h4 class="f_clr_yeldeem">&nbsp;<strong>TO LOGAN AIRPORT</strong></h4>
                        </div>
                        <div class="col-md-6">
                            <img class="img img-thumbnail w-100" src="//{$smarty.server.SERVER_NAME}/assets/images/aboutus_car2.png"/>
                        </div>
                        <div class="col-md-6 about-us-clr">
                            <h4 class="f_clr_yeldeem mt-2 mb-2">Product / Services</h4>
                            <p>-all airports, train stations and mass-transit stops plus door to door services</p>

                            <p>Also providing a services to transport small packages or letters across metro -west area.</p>

                            <p>All corporate accounts are welcome.</p>

                            <p>&quot;Dependable and reliable, affordable as well as comfortable... That&#39;s what we&#39;re all about&quot;</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            {include file="form.tpl"}
        </div>
    </div>

{/block}