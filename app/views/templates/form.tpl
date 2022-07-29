<div class="container_rght">
    <div class="div_row">
        <div class="form_top box_round_corner">
            <span class="f_clr_wht f_sz24" style="padding-bottom: 3px; display: block;">OPEN 24 HOURS</span> <strong class="f_clr_yel f_sz16 ltr_spc-2">FOR IMMEDIATE CAB SERVICES</strong><br />
            <span class="f_clr_wht f_sz24">DIAL 1-508-656-0644</span>
            <div class="pic_cal">&nbsp;</div>
        </div>
    </div>
</div>

<form action="//{$smarty.server.SERVER_NAME}/reservations/reserve"  method="POST">
    <div class="div_row">
        <div class="form_bx box_round_corner f_wgt_b">
            <div class="div_row f_clr_yel f_sz16 ltr_spc-2">RESERVE YOUR RIDE ONLINE TODAY</div>

            <div class="personel_detail">
                <div class="div_row">
                    <div class="div_row"><label>Personal Details</label></div>

                    <div class="div_row">
                        <input id="name" class="input" required name="name" onblur="if(this.value=='') this.value='NAME';" onfocus="if(this.value=='NAME') this.value='';" type="text" value="NAME" />

                        <input id="email" class="input" required name="email" onblur="if(this.value=='') this.value='EMAIL';" onfocus="if(this.value=='EMAIL') this.value='';" type="text" value="EMAIL" />
                   </div>
                </div>
            </div>

            <div class="booking_detail">
                <div class="div_row"><label class="theme-color">Booking Details</label><br />
                    <input id="from" class="input" required name="from" onblur="if(this.value=='') this.value='PICK UP FROM';" onfocus="if(this.value=='PICK UP FROM') this.value='';" type="text" value="PICK UP FROM" />
                    <input id="destination" name="to" required class="input" onblur="if(this.value=='') this.value='TO DESTINATION';" onfocus="if(this.value=='TO DESTINATION') this.value='';" type="text" value="TO DESTINATION" />
                <div class="row">

                    <div class="col-4">

                        <select name="month" class="input">
                            {$months = ["Janaury", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]}
                            {for $i = 1 to 12}
                                {$selected = ""}
                                {if $i <= 9}
                                    {$month = 0|cat:$i}
                                {else}
                                    {$month = $i}
                                {/if}
                                {if $month == $smarty.now|date_format:"%m"}
                                    {$selected = "selected"}
                                {/if}
                                <option {$selected} value="{$month}">{$months[$month - 1]}</option>
                            {/for}
                        </select>
                    </div>
                    <div class="col-4">
                        <select name="day" class="input">
                            {$current_date  = $smarty.now|date_format:"%d"}
                             {for $i = 1 to 31}
                                 {$selected = ""}
                                 {if $i <= 9}
                                     {$date = 0|cat:$i}
                                 {else}
                                     {$date = $i}
                                 {/if}
                                 {if $current_date == $date}
                                     {$selected = "selected"}
                                 {/if}
                                 <option {$selected} value='{$date}'>{$date}</option>"
                             {/for}
                        </select>
                    </div>
                    <div class="col-4">
                        <select name="year" class="input">
                            {$next_year = $smarty.now|date_format:"%Y" + 2}
                            {for $i = $smarty.now|date_format:"%Y" to $next_year}
                                {$selected = ""}
                                {if $i == $smarty.now|date_format:"%Y"}
                                    {$selected = "selected"}
                                {/if}
                                <option {$selected} value='{$i}'>{$i}</option>
                            {/for}
                        </select>
                    </div>
                </div>
                    &nbsp;

                    <div class="row">
                        <div class="col-6">
                            <select name="hour" class="input">
                                {$current_time  = $smarty.now|date_format:"%I"}
                                 {for $i = 1 to 12}
                                     {$selected = ""}
                                     {if $i <= 9}
                                         {$time = 0|cat:$i}
                                     {else}
                                         {$time = $i}
                                     {/if}
                                     {if $current_time == $time}
                                         {$selected = "selected"}
                                     {/if}{
                                     <option {$selected} value='{$time}'>{$time}</option>
                                 {/for}
                            </select>
                        </div>
                        <div class="col-6">
                            <select name="mint" class="input">

                                {$minutes_now = $smarty.now|date_format:"%M"}
                                {for $i = 0  to 60}
                                    {$selected = ""}
                                    {if $i <= 9}
                                        {$minutes = 0|cat:$i}
                                    {else}
                                        {$minutes = $i}
                                    {/if}
                                    {if $minutes_now == $minutes}
                                        {$selected = "selected"}
                                    {/if}
                                    <option {$selected} value='{$minutes}'>{$minutes}</option>
                                {/for}
                            </select>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-6">
                            <input checked="checked" name="ampm" type="radio" value="AM" /> <span class="theme-color">AM</span>
                        </div>
                        <div class="col-6">
                            <input name="ampm" type="radio" value="PM" /><span class="theme-color">PM</span>
                        </div>
                    </div>
                    <div class="w-100">
                        <select id="type" class="input" name="taxiType">
                            <option value="">CAB Type:</option>
                            <option value="taxi">CAB</option>
                            <option value="minibus">minibus</option>
                            <option value="bus">bus</option>
                        </select>
                    </div>
                    <div class="w-100">
                        <select id="passenger" class="input" name="passenger">
                            <option value="">No. of passenger:</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                        </select>
                    </div>
                </div>
                <div class="div_row margin-20_btm">
                    <input id="mobile" class="input" required name="mobile" onblur="if(this.value=='') this.value='MOBILE NUMBER';" onfocus="if(this.value=='MOBILE NUMBER') this.value='';" type="text" value="MOBILE NUMBER" />
                    </div>
                <div id="results">&nbsp;</div>
                <!--<div class="div_row">
                <div class="g-recaptcha" id="recapture" data-sitekey="6Ldz2qkUAAAAAI12bNnQctd-lqbU2RRFv_Wdt0B7" data-callback="recaptcha_callback"></div>
                <input type="hidden" name="auth" value="" id="auth"/>
                <br/>
                </div>
                -->
                <div class="w-100">
                    <div style="margin-top: -30px"><input class="w-100" name="submit" src="//{$smarty.server.SERVER_NAME}/assets/images/sub1_btn.png" type="image" value="submit" /></div>
                </div>
            </div>
        </div>
        <div class="div_row">
            <div class="form_btm box_round_corner">
                <div class="title">ASHLAND CAB</div>
                <div class="middle">Dependable transportation that makes your trip safe and comfortable.</div>
                <div class="clk_more"><a href="//{$smarty.server.SERVER_NAME}/about-us">Click here for more..</a></div>
            </div>
        </div>
    </div>