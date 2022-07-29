{extends file="index.tpl"}
{block name="body"}
        <div class="row sm-column-reverse">
            <div class="col-md-8">
                <div class="div_row">
                    <div class="container_lft">
                        <div class="div_row"><img alt="Ashland Cab" height="93" src="//{$smarty.server.SERVER_NAME}/assets/images/alshlandtaxi.png" class="w-100" /></div>

                        <div class="div_row">
                            <div class="car"><img alt="car" height="226" src="//{$smarty.server.SERVER_NAME}/assets/images/car.png" class="w-100" /></div>

                            <div class="dependable mt">Dependable transportation that makes your trip safe and comfortable.</div>
                        </div>

                        <div class="div_row">
                            <div class="car_btm_list">
                                <ul>
                                    <li><a>Four Passengers can ride for one price.</a></li>
                                    <li><a>Serving 24 hours a day plus holidays include reservasions. </a></li>
                                    <li><a>Cabs are clean and comfortable. </a></li>
                                    <li><a>All major credit cards are accepted.</a></li>
                                    <li><a>Corporate accounts are welcomed. </a></li>
                                    <li><a>Also providing a service to transport small packages or letters across metro-west area/middlessex. </a></li>
                                </ul>
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