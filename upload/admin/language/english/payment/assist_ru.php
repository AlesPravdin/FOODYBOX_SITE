<?php
// Heading
$_['heading_title']      = 'ASSIST.ru';

// Text 
$_['text_payment']       = 'Payment';
$_['text_success']       = 'Success: You have modified ASSIST.ru account details!';
$_['text_assist_ru']     = '<a onclick="window.open(\'http://www.assist.ru/eng/\');"><img src="view/image/payment/assist_ru.png" alt="ASSIST.ru" title="ASSIST.ru" style="border: 1px solid #EEEEEE;" /></a>';
$_['text_lang_en']       = 'English';
$_['text_lang_ru']       = 'Russian / Русский';

// Entry
$_['entry_account']      = 'Assist Shop ID:';
$_['entry_test']         = 'Demo Mode:';
$_['entry_test_result']  = 'Transactions Result in Demo Mode:<br /><span class="help">This is the result which payment gateway will return to every transaction when in Demo Mode</span>';
$_['entry_secret']       = 'Secret word for payment callback service:<br /><span class="help">This value is used to CheckValue hash in payment callback. Note that you should explicitely ask ASSIST.ru to enable payment callback, it is turned off by default.</span>';
$_['entry_order_status_initial'] = 'Initial Order Status:<br /><span class="help">Status of the order before we receive response from ASSIST.</span>';
$_['entry_order_status_paid'] = 'Paid Order Status:<br /><span class="help">Status of the order after we receive SUCCESS response from ASSIST.</span>';
$_['entry_order_status_error'] = 'Error Order Status:<br /><span class="help">Status of the order after we receive ERROR response from ASSIST or encounter any other errors.</span>';
$_['entry_geo_zone']     = 'Geo Zone:';
$_['entry_status']       = 'Status:';
$_['entry_sort_order']   = 'Sort Order:';

// Error
$_['error_permission']   = 'Warning: You do not have permission to modify payment ASSIST.ru!';
$_['error_account']      = 'Shop ID Required!';
$_['error_test_result']  = 'Transactions Result is required in Demo Mode!';
?>