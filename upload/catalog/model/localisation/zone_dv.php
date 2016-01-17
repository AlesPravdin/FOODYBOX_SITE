<?php
class ModelLocalisationZoneDv extends Model {
	public function getZone($zone_name) {

		error_log("Oracle database not available!", 0);

		foreach($zone_name as $key => $value){
            switch($value){
            	case 'Москва': $send[$key] = '101000'; break;
            	case 'Минск': $send[$key] = '220095'; break;
            	case 'Санкт-Петербург': $send[$key] = '190000'; break;
            	case 'Алтайский край': $send[$key] = '658000'; break;
            	case 'Амурская область': $send[$key] = '675502'; break;
            	case 'Архангельская область': $send[$key] = '163502'; break;
            	case 'Астраханская область': $send[$key] = '416010'; break;
            	case 'Белгородская область': $send[$key] = '308501'; break;
                case 'Байконур': $send[$key] = '468320'; break;
            	case 'Брянская область': $send[$key] = '241500'; break;
            	case 'Владимирская область': $send[$key] = '600910'; break;
            	case 'Волгоградская область': $send[$key] = '403001'; break;
            	case 'Вологодская область': $send[$key] = '160501'; break;
            	case 'Воронежская область': $send[$key] = '396002'; break;
             	case 'Еврейская АО': $send[$key] = '679100'; break;
            	case 'Забайкальский край': $send[$key] = '672512'; break;
            	case 'Ивановская область': $send[$key] = '153502'; break;
            	case 'Иркутская область': $send[$key] = '664510'; break;
            	case 'Республика Кабардино-Балкария': $send[$key] = '361009'; break;
            	case 'Калининградская область': $send[$key] = '238000'; break;
            	case 'Калужская область': $send[$key] = '248926'; break;
            	case 'Камчатская область': $send[$key] = '684014'; break;
                case 'Камчатский край': $send[$key] = '684014'; break;
             	case 'Карачаево-Черкесская pecпублика': $send[$key] = '369100'; break;
                case 'Карачаево-Черкеcсия': $send[$key] = '369100'; break;
            	case 'Кемеровская область': $send[$key] = '650501'; break;
            	case 'Кировская область': $send[$key] = '610901'; break;
            	case 'Костромская область': $send[$key] = '156510'; break;
            	case 'Краснодарский край': $send[$key] = '352000'; break;
            	case 'Красноярский край': $send[$key] = '647220'; break;
            	case 'Курганская область': $send[$key] = '641000'; break;
            	case 'Курская область': $send[$key] = '305501'; break;
            	case 'Ленинградская область': $send[$key] = '187000'; break;
            	case 'Липецкая область': $send[$key] = '398501'; break;
            	case 'Магаданская область': $send[$key] = '685910'; break;
            	case 'Московская область': $send[$key] = '140000'; break;
            	case 'Мурманская область': $send[$key] = '184001'; break;
              	case 'Ненецкий АО': $send[$key] = '166702'; break;
            	case 'Нижегородская область': $send[$key] = '606000'; break;
            	case 'Новгородская область': $send[$key] = '173501'; break;
            	case 'Новосибирская область': $send[$key] = '630501'; break;
            	case 'Омская область': $send[$key] = '644501'; break;
            	case 'Оренбургская область': $send[$key] = '460501'; break;
            	case 'Орловская область': $send[$key] = '302501'; break;
            	case 'Пензенская область': $send[$key] = '440501'; break;
            	case 'Пермский край': $send[$key] = '614502'; break;
            	case 'Приморский край': $send[$key] = '692001'; break;
            	case 'Псковская область': $send[$key] = '180502'; break;
            	case 'Республика Адыгея': $send[$key] = '385100'; break;
            	case 'Республика Алтай': $send[$key] = '649100'; break;
            	case 'Республика Башкортостан': $send[$key] = '450501'; break;
            	case 'Республика Бурятия': $send[$key] = '671010'; break;
            	case 'Республика Дагестан': $send[$key] = '368000'; break;
            	case 'Республика Ингушетия': $send[$key] = '386001'; break;
                case 'Республика Кабардино-Балкария': $send[$key] = '361009'; break;
            	case 'Республика Калмыкия': $send[$key] = '359001'; break;
            	case 'Республика Карелия': $send[$key] = '185501'; break;
            	case 'Республика Коми': $send[$key] = '168020'; break;
            	case 'Республика Марий Эл': $send[$key] = '424915'; break;
            	case 'Республика Мордовия': $send[$key] = '431021'; break;
                case 'Республика Саха': $send[$key] = '678000'; break;
            	case 'Республика Саха (Якутия)': $send[$key] = '678000'; break;
                case 'Республика Северная Осетия': $send[$key] = '363001'; break;
            	case 'Республика Сев.Осетия-Алания': $send[$key] = '363001'; break;
            	case 'Республика Татарстан': $send[$key] = '422002'; break;
            	case 'Республика Тыва': $send[$key] = '667901'; break;
            	case 'Республика Хакасия': $send[$key] = '655100'; break;
            	case 'Ростовская область': $send[$key] = '346000'; break;
            	case 'Рязанская область': $send[$key] = '390502'; break;
            	case 'Самарская область': $send[$key] = '443520'; break;
            	case 'Саратовская область': $send[$key] = '410501'; break;
            	case 'Сахалинская область': $send[$key] = '694002'; break;
            	case 'Свердловская область': $send[$key] = '622000'; break;
            	case 'Смоленская область': $send[$key] = '214501'; break;
            	case 'Ставропольский край': $send[$key] = '356000'; break;
            	case 'Таймырский АО': $send[$key] = '647000'; break;
            	case 'Тамбовская область': $send[$key] = '392501'; break;
            	case 'Тверская область': $send[$key] = '170501'; break;
            	case 'Томская область': $send[$key] = '634501'; break;
            	case 'Тульская область': $send[$key] = '301000'; break;
            	case 'Тюменская область': $send[$key] = '625501'; break;
            	case 'Удмуртская Республика': $send[$key] = '427000'; break;
            	case 'Ульяновская область': $send[$key] = '433001'; break;
            	case 'Хабаровский край': $send[$key] = '680501'; break;
            	case 'Ханты-Мансийский АО': $send[$key] = '628100'; break;
                case 'Ханты-Мансийский АО - Югра': $send[$key] = '628100'; break;
            	case 'Челябинская область': $send[$key] = '456001'; break;
                case 'Чеченская республика': $send[$key] = '366002'; break;
            	case 'Чеченская республика (Грозный)': $send[$key] = '366002'; break;
                case 'Читинская область': $send[$key] = '672000'; break;
            	case 'Чувашская Республика': $send[$key] = '429020'; break;
            	case 'Чукотский АО': $send[$key] = '689450'; break;
            	case 'Ямало-Ненецкий АО': $send[$key] = '629350'; break;
            	case 'Ярославская область': $send[$key] = '150033'; break;
            }
  		}

        if(isset($send) && count($send)>0){
			return $send;
		}else{
			return false;
		}
	}
}
?>