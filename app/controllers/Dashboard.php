<?php
/**
 * Created by PhpStorm.
 * User: welcome
 * Date: 2020-08-19
 * Time: 14:57
 */

class Dashboard extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model("Mail_model");
    }

    function index() {
        $this->smarty->assign("page", "home");
        $this->smarty->assign("title", "Ashland Cab - Home");
        $this->smarty->display("landing-page.tpl");
    }

    function about_us() {
        $this->smarty->assign("page", "about-us");
        $this->smarty->assign("title", "Ashland Cab - About us");
        $this->smarty->display("about-us-page.tpl");
    }

    function rates() {
        $this->smarty->assign("page", "rates");
        $this->smarty->assign("title", "Ashland Cab - Rates & Fares");
        $this->smarty->display("rates.tpl");
    }

    function airport() {
        $this->smarty->assign("page", "fares");
        $this->smarty->assign("title", "Ashland Cab - Airport Fares");
        $this->smarty->display("airport.tpl");
    }

    function reservations() {
        $this->smarty->assign("page", "reservations");
        $this->smarty->assign("title", "Ashland Cab - Reservations");
        $this->smarty->display("landing-page.tpl");
    }

    function reserve() {
        //print_r($this->inputs->post());
        $message = "Hello " . $this->inputs->post("names") . ", Your reservation has been sent. Thank you for using Ashland Cab";

        $order = "<h3>Order Summary</h3>
        <table style='width: 100%'>
        <tr>
        <th style='text-align: left'>Names</th>
        <th style='text-align: left'>" . $this->inputs->post("name") . "</th>
        </tr>
        <tr>
        <th style='text-align: left'>Email</th>
        <th style='text-align: left'>" . $this->inputs->post("email") ."</th>
        </tr>
        <tr>
        <tr>
        <th style='text-align: left'>Telephone</th>
        <th style='text-align: left'>" . $this->inputs->post("mobile") ."</th>
        </tr>
        <tr>
        <th style='text-align: left'>Pick Up</th>
        <th style='text-align: left'>" . $this->inputs->post("from") . "</th>
        <tr/>
        <tr>
        <th style='text-align: left'>Destination</th>
        <th style='text-align: left'>" . $this->inputs->post("to") . "</th>
        </tr>
        <tr>
        <th style='text-align: left'>Pick up Date</th>
        <th style='text-align: left'>" . $this->inputs->post("day") ." / " . $this->inputs->post("month") . "/" . $this->inputs->post("year") ."</th>
        </tr>
        <tr>
        <th style='text-align: left'>Pick Up Time</th>
        <th style='text-align: left'>" . $this->inputs->post("hour") ." : " . $this->inputs->post("mint") . " " . $this->inputs->post("ampm") ." </th>
        </tr>
        <tr>
        <th style='text-align: left'>Taxi type</th>
        <th style='text-align: left'>" . $this->inputs->post("taxiType") . "</th>
        </tr>
        <tr>
        <th style='text-align: left'>No Passenger</th>
        <th style='text-align: left'>" . $this->inputs->post("passenger") . "</th>
        </tr>
        </table>";

        $message = $message . "<hr/>" . $order;
        $this->smarty->assign("title", "Thank you");
        $this->smarty->assign("subject", "Reservation sent");
        $this->smarty->assign("message", $message);
        $message = $this->smarty->fetch("mail/client-mail.tpl");
        //echo $message;

        $this->model->Mail_model->send_mail($this->inputs->post("email"), $message, "Reservation sent", "reservations@ashlandtaxi.com");
        $this->redirect("//" . $this->server->server_name . "/?sent=true&name=" . $this->inputs->post("name"));

    }


}