<?php
class ControllerShippingPochtaros extends Controller {
	private $error = array();
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


	public function index() {
        $this->data = array_merge($this->data, $this->load->language($this->type . '/' . $this->name));

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('pochtaros', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->redirect($this->url->link('extension/shipping', 'token=' . $this->session->data['token'], 'SSL'));
		}

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}


        $this->data['methods'] = $this->methods;

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_shipping'),
			'href'      => $this->url->link('extension/shipping', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('shipping/pochtaros', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);

		$this->data['action'] = $this->url->link('shipping/pochtaros', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['cancel'] = $this->url->link('extension/shipping', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->post['pochtaros_name'])) {
			$this->data['pochtaros_name'] = $this->request->post['pochtaros_name'];
		} else {
			$this->data['pochtaros_name'] = $this->config->get('pochtaros_name');
		}

        if (isset($this->request->post['pochtaros_city'])) {
			$this->data['pochtaros_city'] = $this->request->post['pochtaros_city'];
		} else {
			$this->data['pochtaros_city'] = $this->config->get('pochtaros_city');
		}

		if (isset($this->request->post['pochtaros_cost'])) {
			$this->data['pochtaros_cost'] = $this->request->post['pochtaros_cost'];
		} else {
			$this->data['pochtaros_cost'] = $this->config->get('pochtaros_cost');
		}

		if (isset($this->request->post['pochtaros_geo_zone'])) {
			$this->data['pochtaros_geo_zone'] = $this->request->post['pochtaros_geo_zone'];
		} else {
			$this->data['pochtaros_geo_zone'] = $this->config->get('pochtaros_geo_zone');
		}

        if (isset($this->request->post['pochtaros_method'])) {
            $this->data['pochtaros_method'] = $this->request->post['pochtaros_method'];
        } else {
            $this->data['pochtaros_method'] = $this->config->get('pochtaros_method');
        }

        if (isset($this->request->post['pochtaros_store'])) {
            $this->data['pochtaros_store'] = $this->request->post['pochtaros_store'];
        } else {
            $this->data['pochtaros_store'] = $this->config->get('pochtaros_store');
        }

		if (isset($this->request->post['pochtaros_status'])) {
			$this->data['pochtaros_status'] = $this->request->post['pochtaros_status'];
		} else {
			$this->data['pochtaros_status'] = $this->config->get('pochtaros_status');
		}

        if (isset($this->request->post['pochtaros_fragmentation'])) {
            $this->data['pochtaros_fragmentation'] = $this->request->post['pochtaros_fragmentation'];
        } else {
            $this->data['pochtaros_fragmentation'] = $this->config->get('pochtaros_fragmentation');
        }

		if (isset($this->request->post['pochtaros_sort_order'])) {
			$this->data['pochtaros_sort_order'] = $this->request->post['pochtaros_sort_order'];
		} else {
			$this->data['pochtaros_sort_order'] = $this->config->get('pochtaros_sort_order');
		}

        if (isset($this->request->post['pochtaros_total'])) {
            $this->data['pochtaros_total'] = $this->request->post['pochtaros_total'];
        } else {
            $this->data['pochtaros_total'] = $this->config->get('pochtaros_total');
        }


        if (isset($this->request->post['pochtaros_min_weight'])) {
            $this->data['pochtaros_min_weight'] = $this->request->post['pochtaros_min_weight'];
        } else {
            $this->data['pochtaros_min_weight'] = $this->config->get('pochtaros_min_weight');
        }

        if (isset($this->request->post['pochtaros_max_weight'])) {
            $this->data['pochtaros_max_weight'] = $this->request->post['pochtaros_max_weight'];
        } else {
            $this->data['pochtaros_max_weight'] = $this->config->get('pochtaros_max_weight');
        }

        if (isset($this->request->post['pochtaros_upakovka'])) {
            $this->data['pochtaros_upakovka'] = $this->request->post['pochtaros_upakovka'];
        } else {
            $this->data['pochtaros_upakovka'] = $this->config->get('pochtaros_upakovka');
        }

        $this->load->model('setting/store');
        $this->data['stores'] = $this->model_setting_store->getStores();

        $this->load->model('localisation/geo_zone');
        $this->data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();

        $this->data['text_default'] = $this->config->get('config_name');

		$this->template = 'shipping/pochtaros.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

	private function validate() {
		if (!$this->user->hasPermission('modify', 'shipping/pochtaros')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
}
?>