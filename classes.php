<?php
// Classes used to transfer data from the REST service

class crime
{
    public $County;
    public $Amount;

    public function __construct($county, $amount)
    {
        $this->County = $county;
        $this->Amount = $amount;
    }

    public function getCounty()
    {
        return $this->County;
    }

    public function getAmount()
    {
        return $this->Amount;
    }
}

class county
{
    public $Crime;
    public $Amount;

    public function __construct($crime, $amount)
    {
        $this->Crime = $crime;
        $this->Amount = $amount;
    }

    public function getCrime()
    {
        return $this->Crime;
    }

    public function getAmount()
    {
        return $this->Amount;
    }
}