{extends file="index.tpl"}
{block name="body"}
    <div class="row">
        <div class="col-md-8">
            <div class="div_row">
                <div class="container_lft">
                    <div class="div_row"><img alt="Ashland Taxi taxi" height="93" src="//{$smarty.server.SERVER_NAME}/assets/images/fareandrlatrates.png" class="w-100" /></div>
                    <div class="row">
                        <div class="col-12 mb-4 mt-4">
                            <h4 class="f_clr_yeldeem">&nbsp;<strong>TO LOGAN AIRPORT</strong></h4>
                        </div>
                        <div class="col-md-6">
                            <img class="img img-thumbnail w-100" src="//{$smarty.server.SERVER_NAME}/assets/images/aboutus_car.png"/>
                        </div>
                        <div class="col-md-6 about-us-clr">
                            <table class="table table-striped table-secondary w-100">
                                <tbody>
                                <tr>
                                    <td width="129">Ashland</td>
                                    <td width="98">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Framingham</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Holliston</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Hopkinton</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Natick</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Wayland</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Westborough</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Sherborn</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Southborough</td>
                                    <td>&nbsp;</td>
                                </tr>
                                </tbody>
                            </table>
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