<?php
use oat\tao\helpers\Template;
use oat\tao\helpers\Layout;
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title><?=__('Launch Queue.');?></title>
        <?= \tao_helpers_Scriptloader::render() ?>
        <link rel="stylesheet" type="text/css" href="<?= Template::css('reset.css','tao') ?>" />
        <link rel="stylesheet" type="text/css" href="<?= Template::css('custom-theme/jquery-ui-1.8.22.custom.css','tao') ?>" />
        <link rel="stylesheet" type="text/css" href="<?= Template::css('errors.css','tao') ?>" />
        <link rel="stylesheet" type="text/css" href="<?= Template::css('userError.css','tao') ?>" />
        <?= Layout::getAmdLoader(Template::js('loader/app.min.js', 'tao'), 'controller/app', get_data('client_params')) ?>
    </head>
    <body>
        <div id="main" class="ui-widget-content ui-corner-all">
            <div>
                <h1><?=__('Launch Queue.');?></h1>
                <p id="warning_msg">
                    <?= __('We are experiencing unusually high user volumes. To ensure you receive the best possible testing experience please hold on a moment.') ?>
                    <br>
                    <br>
                    <?= __('Your position in the queue is: %s', get_data('position')) ?>
                </p>
            </div>
        </div>
    </body>
</html>