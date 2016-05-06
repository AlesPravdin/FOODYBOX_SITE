<?php
class ModelShippingPochtaros extends Model {
    private $type = 'shipping';
    private $name = 'pochtaros';

    private $methods = array(
        array('name' => 'ПростаяБандероль', 'key' => 'prostaya_banderol', 'title' => 'Простая бандероль', 'price' => 'Тариф'),
        array('name' => 'ЗаказнаяБандероль', 'key' => 'zakaznaya_banderol', 'title' => 'Заказная бандероль', 'price' => 'Тариф'),
        array('name' => 'ЦеннаяБандероль', 'key' => 'tsennaya_banderol', 'title' => 'Ценная бандероль', 'price' => 'Тариф'),
        array('name' => 'ЦеннаяБандероль', 'key' => 'tsennaya_banderol_obyavlennaya_stennost', 'title' => 'Ценная бандероль с объявленной ценностью', 'price' => 'Доставка'),
        array('name' => 'ЦеннаяПосылка', 'key' => 'tsennaya_posylka', 'title' => 'Ценная посылка', 'price' => 'Тариф'),
        array('name' => 'ЦеннаяПосылка', 'key' => 'tsennaya_posylka_obyavlennaya_stennost', 'title' => 'Ценная посылка с объявленной ценностью', 'price' => 'Доставка'),
        array('name' => 'ЦеннаяАвиаБандероль', 'key' => 'tsennaya_aviabanderol', 'title' => 'Ценная авиабандероль', 'price' => 'Тариф'),
        array('name' => 'ЦеннаяАвиаБандероль', 'key' => 'tsennaya_aviabanderol_obyavlennaya_stennost', 'title' => 'Ценная авиабандероль с объявленной ценностью', 'price' => 'Доставка'),
        array('name' => 'ЦеннаяАвиаПосылка', 'key' => 'tsennaya_aviaposylka', 'title' => 'Ценная авиапосылка', 'price' => 'Тариф'),
        array('name' => 'ЦеннаяАвиаПосылка', 'key' => 'tsennaya_aviaposylka_obyavlennaya_stennost', 'title' => 'Ценная авиапосылка с объявленной ценностью', 'price' => 'Доставка'),
        array('name' => 'ЗаказнаяБандероль1Класс', 'key' => 'zakaznaya_banderol_1_class', 'title' => 'Заказная бандероль 1 класс', 'price' => 'Тариф'),
        array('name' => 'ЦеннаяБандероль1Класс', 'key' => 'tsennaya_banderol_1_class', 'title' => 'Ценная бандероль 1 класс', 'price' => 'Тариф'),
        array('name' => 'ЦеннаяБандероль1Класс', 'key' => 'tsennaya_banderol_1_class_obyavlennaya_stennost', 'title' => 'Ценная бандероль 1 класс с объявленной ценностью', 'price' => 'Доставка')
    );

    public function getQuote($address) {

        error_log("You messed up!", 3, "/var/tmp/my-errors.log");

        $this->language->load($this->type . '/' . $this->name);

        $method_data = array();

        //print_r($this->config->get('pochtaros_method'));

        $total = $this->cart->getSubTotal();

        if (is_array($this->config->get('pochtaros_store')) and in_array((int)$this->config->get('config_store_id'), $this->config->get('pochtaros_store'))) {

            $status = true;
        }
        else {
            $status = false;
        }


        if ($status and count($this->config->get('pochtaros_geo_zone')) > 0) {
            $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone
                WHERE geo_zone_id IN (" . implode(',', $this->config->get('pochtaros_geo_zone')) . ") AND
                country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");

            if ($query->num_rows) {
                $status = true;
            }
            else {
                $status = false;
            }
        }
        else {
            $status = false;
        }


        $weight = $this->cart->getWeight();

        if ($status) {
            if ($this->config->get('pochtaros_upakovka') and (int)$this->config->get('pochtaros_upakovka') > 0 ) {
                $weight = $weight + (int)$this->config->get('pochtaros_upakovka');
            }


            if ($this->config->get('pochtaros_min_weight') and $weight < (int)$this->config->get('pochtaros_min_weight') ) {
                $status = false;
            }

            if ($this->config->get('pochtaros_max_weight') and $weight > (int)$this->config->get('pochtaros_max_weight') ) {
                $status = false;
            }
        }


        $status = true;

        if ($status) {
            /*
            $region = array();
            $region['from'] = $this->config->get('pochtaros_city');

            $region['to'] = $address['zone'];

           // echo $region['to'];

            $this->load->model('localisation/zone_dv');
            $new_region = $this->model_localisation_zone_dv->getZone($region);

           // print_r($new_region);

            if (isset($new_region['to']) and $new_region['to']) {
                $region['to'] = $new_region['to'];
            }

            $from = urlencode($region['from']);
            $to = urlencode($region['to']);



            //$Request = 'http://api.postcalc.ru/?f='.$from.'&t='.$to.'&w='.$weight.'&v='.$total.'&o=php&e=0&Site='.HTTP_SERVER.'&Email='.$this->config->get('config_email').'&Person='.to_seo($this->config->get('config_owner'));
            $Request = 'http://api.postcalc.ru/?f='.$from.'&t='.$to.'&w='.$weight.'&v='.$total.'&o=php&e=0&Site='.HTTP_SERVER.'&Email='.$this->config->get('config_email').'&Person='.to_seo($this->config->get('config_owner'));
            //echo $Request;

            $Response = file_get_contents($Request) or die('Could not connect!');
            $arrResponse = unserialize($Response);

            //print_r($arrResponse);

            if ($total < $this->config->get('pochtaros_total')) {
                $error_text = html_entity_decode(sprintf($this->language->get('error_description'), $this->currency->format($this->config->get('pochtaros_total')), $this->currency->format($this->tax->calculate($this->config->get('pochtaros_total')-$total,'', $this->config->get('config_tax')))), ENT_QUOTES, 'UTF-8');
            }

            if (isset($error_text)){
                 $error = $error_text;
            }
            else {
                 $error = false;
            }
            

            $quote_data = array();

            foreach ($this->config->get('pochtaros_method') as $value) {

                $local = '';
                foreach ($this->methods as $val) {
                    if ($val['key'] == $value) {
                        $local = $val;
                        break;
                    }
                }

                if (isset($local['name']) and
                    //isset($arrResponse[$local['name']]['���������']) and $arrResponse[$local['name']]['���������'] == 1 and
                    isset($arrResponse[$local['name']]['�����']) and $arrResponse[$local['name']]['�����'] > 0 and
                    isset($arrResponse[$local['name']]['��������']) and $arrResponse[$local['name']]['��������'] > 0 and

                    ( $this->config->get('pochtaros_fragmentation') or (!$this->config->get('pochtaros_fragmentation') and
                        isset($arrResponse[$local['name']]['�������������']) and $weight <= $arrResponse[$local['name']]['�������������']) )
                ) {

                    $price = floor($arrResponse[$local['name']][$local['price']]);

                    $local['title_more'] = iconv('windows-1251','utf-8',$local['title']);

                    if ($local['price'] == '��������') {
                        $local['title_more'] .= ' '.$this->currency->format($this->tax->calculate($total,'', $this->config->get('config_tax')));
                    }

                    if (isset($price) and (int)$price>0) {
                        $cost = $this->config->get('pochtaros_cost') + $price;
                        $text = $this->currency->format($this->tax->calculate($cost,'', $this->config->get('config_tax')));
                    }
                    else {
                        $cost = '';
                        $text = '';
                    }

                    $key = $local['key'];


                    $text_fragmentation = '';
                    if ($this->config->get('pochtaros_fragmentation')) {
                        $text_fragmentation = ' ('.$arrResponse[$local['name']]['����������'].' '.$this->language->get('text_items').')';
                    }

                    if ($cost > 0) {
                        $quote_data[$key] = array(
                            'code'         => $this->name.'.'.$key,
                            'title'        => $local['title_more'].$text_fragmentation,
                            'cost'         => $cost,
                            'tax_class_id' => '',
                            'text'         => $text
                        );
                    }
                }
            }
            */

            $quote_data["prostaya_banderol"] = array(
                'code'         => $this->name.'.prostaya_banderol',
                'title'        => 'Белпочта',
                'cost'         => '0',
                'tax_class_id' => '',
                'text'         => 'По тарифам'
            );

            if (isset($quote_data) and count($quote_data) > 0) {
                $method_data = array(
                        'code'       => 'pochtaros',
                        'title'      => $this->config->get('pochtaros_name'),
                        'quote'      => $quote_data,
                        'sort_order' => $this->config->get('pochtaros_sort_order'),
                        'error'      => false
                );
            }
        }

        return $method_data;
    }
}
?>