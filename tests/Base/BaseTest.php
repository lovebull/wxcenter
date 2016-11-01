<?php

include dirname(__FILE__) . "/../testEnv.php";

class BaseTest extends PHPUnit_Framework_TestCase
{

    public function setUp() {
        global $config;
        $config = include APP_PATH . "/app/config/config.php";
    }

    /**
     * 邮件模板映射
     */
    public function testRenderEmail() {
        $EmailTemplate = new EmailTemplate();
        $result        = $EmailTemplate->render('template_verify_email', [
            'link' => 'asdasdasdasdasdsd'
        ]);
        $this->assertTrue(!empty($result));
    }

}