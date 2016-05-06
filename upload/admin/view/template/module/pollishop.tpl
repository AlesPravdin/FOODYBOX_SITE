<?php echo $header; ?>

<?php /* regular and Google fonts array*/
	
	$fonts = array(
		''                         => '- default -',
		'Arial'                    => 'Arial',
		'Verdana'                  => 'Verdana',
		'Helvetica'                => 'Helvetica',
		'Lucida Grande'            => 'Lucida Grande',
		'Trebuchet MS'             => 'Trebuchet MS',
		'Times New Roman'          => 'Times New Roman',
		'Tahoma'                   => 'Tahoma',
		'Georgia'                  => 'Georgia',
        'Calibri'                  => 'Calibri',
		
		'Abel'                     => 'Abel',
		'Abril+Fatface'            => 'Abril Fatface',
		'Aclonica'                 => 'Aclonica',
		'Acme'                     => 'Acme',
		'Actor'                    => 'Actor',
		'Adamina'                  => 'Adamina',
		'Aguafina+Script'          => 'Aguafina Script',
		'Aladin'                   => 'Aladin',
		'Aldrich'                  => 'Aldrich',
		'Alegreya'                 => 'Alegreya',
		'Alegreya+SC'              => 'Alegreya SC',
		'Alex+Brush'               => 'Alex Brush',
		'Alfa+Slab+One'            => 'Alfa Slab One',
		'Alice'                    => 'Alice',
		'Alike'                    => 'Alike',
		'Alike+Angular'            => 'Alike Angular',
		'Allan'                    => 'Allan',
		'Allerta'                  => 'Allerta',
		'Allerta+Stencil'          => 'Allerta Stencil',
		'Allura'                   => 'Allura',
		'Almendra'                 => 'Almendra',
		'Almendra+SC'              => 'Almendra SC',
		'Amaranth'                 => 'Amaranth',
		'Amatic+SC'                => 'Amatic SC',
		'Amethysta'                => 'Amethysta',
        'Anaheim'                  => 'Anaheim',
		'Andada'                   => 'Andada',
		'Andika'                   => 'Andika',
		'Annie+Use+Your+Telescope' => 'Annie Use Your Telescope',
		'Anonymous+Pro'            => 'Anonymous Pro',
		'Antic'                    => 'Antic',
		'Anton'                    => 'Anton',
		'Arapey'                   => 'Arapey',
		'Architects+Daughter'      => 'Architects Daughter',
        'Archivo Narrow'           => 'Archivo Narrow',
		'Arizonia'                 => 'Arizonia',
		'Armata'                   => 'Armata',
		'Artifika'                 => 'Artifika',
		'Arvo'                     => 'Arvo',
		'Asul'                     => 'Asul',
		'Atomic+Age'               => 'Atomic Age',
		'Aubrey'                   => 'Aubrey',
		'Bad+Script'               => 'Bad Script',
		'Bangers'                  => 'Bangers',
		'Basic'                    => 'Basic',
		'Baumans'                  => 'Baumans',
		'Belgrano'                 => 'Belgrano',
		'Bentham'                  => 'Bentham',
		'Bevan'                    => 'Bevan',
		'Bigshot+One'              => 'Bigshot One',
		'Bilbo'                    => 'Bilbo',
		'Bilbo+Swash+Caps'         => 'Bilbo Swash Caps',
		'Bitter'                   => 'Bitter',
		'Black+Ops+One'            => 'Black Ops One',
		'Boogaloo'                 => 'Boogaloo',
		'Bowlby+One'               => 'Bowlby One',
		'Bowlby+One+SC'            => 'Bowlby One SC',
		'Brawler'                  => 'Brawler',
		'Bree+Serif'               => 'Bree Serif',
		'Bubblegum+Sans'           => 'Bubblegum Sans',
		'Buda'                     => 'Buda',
		'Buenard'                  => 'Buenard',
		'Cabin'                    => 'Cabin',
		'Cabin+Condensed'          => 'Cabin Condensed',
		'Caesar+Dressing'          => 'Caesar Dressing',
		'Cagliostro'               => 'Cagliostro',
		'Cambo'                    => 'Cambo',
		'Candal'                   => 'Candal',
		'Cantarell'                => 'Cantarell',
		'Cardo'                    => 'Cardo',
		'Carme'                    => 'Carme',
		'Carter+One'               => 'Carter One',
		'Ceviche+One'              => 'Ceviche One',
		'Changa+One'               => 'Changa One',
		'Chango'                   => 'Chango',
		'Chelsea+Market'           => 'Chelsea Market',
		'Cherry+Cream+Soda'        => 'Cherry Cream Soda',
		'Chewy'                    => 'Chewy',
		'Chicle'                   => 'Chicle',
		'Coda'                     => 'Coda',
		'Coda+Caption'             => 'Coda Caption',
		'Comfortaa'                => 'Comfortaa',
		'Concert+One'              => 'Concert One',
		'Condiment'                => 'Condiment',
		'Contrail+One'             => 'Contrail One',
		'Convergence'              => 'Convergence',
		'Cookie'                   => 'Cookie',
		'Copse'                    => 'Copse',
		'Corben'                   => 'Corben',
		'Cousine'                  => 'Cousine',
		'Coustard'                 => 'Coustard',
		'Covered+By+Your+Grace'    => 'Covered By Your Grace',
		'Crete+Round'              => 'Crete Round',
		'Crimson+Text'             => 'Crimson Text',
		'Crushed'                  => 'Crushed',
		'Cuprum'                   => 'Cuprum',
		'Damion'                   => 'Damion',
		'Dancing+Script'           => 'Dancing Script',
		'Days+One'                 => 'Days One',
		'Delius'                   => 'Delius',
		'Delius+Unicase'           => 'Delius Unicase',
		'Devonshire'               => 'Devonshire',
		'Didact+Gothic'            => 'Didact Gothic',
		'Dorsa'                    => 'Dorsa',
		'Dr+Sugiyama'              => 'Dr Sugiyama',
		'Droid+Sans'               => 'Droid Sans',
		'Droid+Sans+Mono'          => 'Droid Sans Mono',
		'Droid+Serif'              => 'Droid Serif',
		'Duru+Sans'                => 'Duru Sans',
		'Dynalight'                => 'Dynalight',
		'Eater'                    => 'Eater',
		'EB+Garamond'              => 'EB Garamond',
		'Electrolize'              => 'Electrolize',
		'Emblema+One'              => 'Emblema One',
		'Engagement'               => 'Engagement',
		'Enriqueta'                => 'Enriqueta',
		'Erica+One'                => 'Erica One',
		'Esteban'                  => 'Esteban',
		'Euphoria+Script'          => 'Euphoria Script',
		'Exo'                      => 'Exo',
		'Expletus+Sans'            => 'Expletus Sans',
		'Fanwood+Text'             => 'Fanwood Text',
		'Federant'                 => 'Federant',
		'Federo'                   => 'Federo',
		'Felipa'                   => 'Felipa',
        'Fjalla One'                   => 'Fjalla One',
		'Fjord+One'                => 'Fjord One',
		'Flamenco'                 => 'Flamenco',
		'Flavors'                  => 'Flavors',
		'Fondamento'               => 'Fondamento',
		'Fontdiner+Swanky'         => 'Fontdiner Swanky',
		'Forum'                    => 'Forum',
		'Francois+One'             => 'Francois One',
		'Fresca'                   => 'Fresca',
		'Fugaz+One'                => 'Fugaz One',
		'Gentium+Basic'            => 'Gentium Basic',
		'Gentium+Book+Basic'       => 'Gentium Book Basic',
		'Geo'                      => 'Geo',
		'Germania+One'             => 'Germania One',
        'Gilda Display'            => 'Gilda Display',
		'Give+You+Glory'           => 'Give You Glory',
		'Glegoo'                   => 'Glegoo',
		'Gloria+Hallelujah'        => 'Gloria Hallelujah',
		'Goblin+One'               => 'Goblin One',
		'Gochi+Hand'               => 'Gochi Hand',
		'Goudy+Bookletter+1911'    => 'Goudy Bookletter 1911',
		'Gravitas+One'             => 'Gravitas One',
		'Gruppo'                   => 'Gruppo',
		'Gudea'                    => 'Gudea',
		'Habibi'                   => 'Habibi',
		'Hammersmith+One'          => 'Hammersmith One',
		'Handlee'                  => 'Handlee',
		'Holtwood+One+SC'          => 'Holtwood One SC',
		'Homenaje'                 => 'Homenaje',
		'Iceberg'                  => 'Iceberg',
		'Iceland'                  => 'Iceland',
		'IM+Fell+Double+Pica'      => 'IM Fell Double Pica',
		'IM+Fell+Double+Pica+SC'   => 'IM Fell Double Pica SC',
		'IM+Fell+DW+Pica+SC'       => 'IM Fell DW Pica SC',
		'IM+Fell+French+Canon'     => 'IM Fell French Canon',
		'IM+Fell+French+Canon+SC'  => 'IM Fell French Canon SC',
		'IM+Fell+Great+Primer'     => 'IM Fell Great Primer',
		'IM+Fell+Great+Primer+SC'  => 'IM Fell Great Primer SC',
		'Inconsolata'              => 'Inconsolata',
		'Inder'                    => 'Inder',
		'Indie+Flower'             => 'Indie Flower',
		'Irish+Grover'             => 'Irish Grover',
		'Italianno'                => 'Italianno',
		'Jim+Nightshade'           => 'Jim Nightshade',
		'Jockey+One'               => 'Jockey One',
		'Josefin+Sans'             => 'Josefin Sans',
		'Josefin+Slab'             => 'Josefin Slab',
		'Judson'                   => 'Judson',
		'Julee'                    => 'Julee',
		'Junge'                    => 'Junge',
		'Jura'                     => 'Jura',
		'Just+Another+Hand'        => 'Just Another Hand',
		'Kameron'                  => 'Kameron',
		'Kaushan+Script'           => 'Kaushan Script',
		'Kelly+Slab'               => 'Kelly Slab',
		'Kenia'                    => 'Kenia',
        'Kite One'                    => 'Kite One',
		'Knewave'                  => 'Knewave',
		'Kotta+One'                => 'Kotta One',
		'Kreon'                    => 'Kreon',
		'Lancelot'                 => 'Lancelot',
		'Lato'                     => 'Lato',
		'Lekton'                   => 'Lekton',
		'Lemon'                    => 'Lemon',
		'Lilita+One'               => 'Lilita One',
		'Limelight'                => 'Limelight',
		'Linden+Hill'              => 'Linden Hill',
		'Lobster'                  => 'Lobster',
		'Lobster+Two'              => 'Lobster Two',
		'Lora'                     => 'Lora',
		'Love+Ya+Like+A+Sister'    => 'Love Ya Like A Sister',
		'Luckiest+Guy'             => 'Luckiest Guy',
		'Lustria'                  => 'Lustria',
		'Macondo'                  => 'Macondo',
		'Macondo+Swash+Caps'       => 'Macondo Swash Caps',
		'Magra'                    => 'Magra',
		'Maiden+Orange'            => 'Maiden Orange',
		'Mako'                     => 'Mako',
		'Marck+Script'             => 'Marck Script',
		'Marko+One'                => 'Marko One',
		'Marmelad'                 => 'Marmelad',
		'Marvel'                   => 'Marvel',
		'Mate'                     => 'Mate',
		'Mate+SC'                  => 'Mate SC',
		'Maven+Pro'                => 'Maven Pro',
		'MedievalSharp'            => 'MedievalSharp',
		'Medula+One'               => 'Medula One',
		'Megrim'                   => 'Megrim',
		'Merienda+One'             => 'Merienda One',
		'Merriweather'             => 'Merriweather',
        'Merriweather+Sans'        => 'Merriweather Sans',
		'Metamorphous'             => 'Metamorphous',
		'Metrophobic'              => 'Metrophobic',
		'Michroma'                 => 'Michroma',
		'Miltonian+Tattoo'         => 'Miltonian Tattoo',
		'Modern+Antiqua'           => 'Modern Antiqua',
		'Molengo'                  => 'Molengo',
		'Monoton'                  => 'Monoton',
		'Montaga'                  => 'Montaga',
		'Montez'                   => 'Montez',
		'Mountains+of+Christmas'   => 'Mountains of Christmas',
		'Mr+Bedfort'               => 'Mr Bedfort',
		'Mr+Dafoe'                 => 'Mr Dafoe',
		'Mrs+Sheppards'            => 'Mrs Sheppards',
		'Muli'                     => 'Muli',
		'Neucha'                   => 'Neucha',
		'Neuton'                   => 'Neuton',
		'News+Cycle'               => 'News Cycle',
		'Niconne'                  => 'Niconne',
		'Nixie+One'                => 'Nixie One',
		'Nobile'                   => 'Nobile',
		'Norican'                  => 'Norican',
		'Nosifer'                  => 'Nosifer',
		'Nothing+You+Could+Do'     => 'Nothing You Could Do',
		'Noticia+Text'             => 'Noticia Text',
		'Nova+Cut'                 => 'Nova Cut',
		'Nova+Flat'                => 'Nova Flat',
		'Nova+Mono'                => 'Nova Mono',
		'Nova+Oval'                => 'Nova Oval',
		'Nova+Round'               => 'Nova Round',
		'Nova+Script'              => 'Nova Script',
		'Nova+Slim'                => 'Nova Slim',
		'Nova+Square'              => 'Nova Square',
		'Numans'                   => 'Numans',
		'Nunito'                   => 'Nunito',
		'Old+Standard+TT'          => 'Old Standard TT',
		'Oldenburg'                => 'Oldenburg',
		'Open+Sans'                => 'Open Sans',
		'Open+Sans+Condensed'      => 'Open Sans Condensed',
		'Orbitron'                 => 'Orbitron',
		'Original+Surfer'          => 'Original Surfer',
		'Oswald'                   => 'Oswald',
		'Overlock'                 => 'Overlock',
		'Overlock+SC'              => 'Overlock SC',
		'Ovo'                      => 'Ovo',
		'Pacifico'                 => 'Pacifico',
		'Parisienne'               => 'Parisienne',
		'Passero+One'              => 'Passero One',
		'Passion+One'              => 'Passion One',
		'Patrick+Hand'             => 'Patrick Hand',
		'Patua+One'                => 'Patua One',
		'Paytone+One'              => 'Paytone One',
		'Permanent+Marker'         => 'Permanent Marker',
		'Petrona'                  => 'Petrona',
		'Philosopher'              => 'Philosopher',
		'Piedra'                   => 'Piedra',
		'Pinyon+Script'            => 'Pinyon Script',
		'Play'                     => 'Play',
		'Playball'                 => 'Playball',
		'Playfair+Display'         => 'Playfair Display',
		'Podkova'                  => 'Podkova',
		'Poller+One'               => 'Poller One',
		'Pompiere'                 => 'Pompiere',
		'Prata'                    => 'Prata',
		'Prociono'                 => 'Prociono',
		'PT+Sans'                  => 'PT Sans',
		'PT+Sans+Caption'          => 'PT Sans Caption',
		'PT+Sans+Narrow'           => 'PT Sans Narrow',
		'PT+Serif'                 => 'PT Serif',
		'PT+Serif+Caption'         => 'PT Serif Caption',
		'Quantico'                 => 'Quantico',
		'Quattrocento'             => 'Quattrocento',
		'Quattrocento+Sans'        => 'Quattrocento Sans',
		'Questrial'                => 'Questrial',
		'Quicksand'                => 'Quicksand',
		'Qwigley'                  => 'Qwigley',
		'Radley'                   => 'Radley',
		'Raleway'                  => 'Raleway',
        'Rambla'                   => 'Rambla',
		'Rammetto+One'             => 'Rammetto One',
		'Rancho'                   => 'Rancho',
		'Rationale'                => 'Rationale',
		'Redressed'                => 'Redressed',
		'Reenie+Beanie'            => 'Reenie Beanie',
		'Ribeye'                   => 'Ribeye',
		'Ribeye+Marrow'            => 'Ribeye Marrow',
		'Righteous'                => 'Righteous',
        'Roboto'                   => 'Roboto',
        'Roboto Condensed'         => 'Roboto Condensed',
		'Rochester'                => 'Rochester',
		'Rock+Salt'                => 'Rock Salt',
		'Rokkitt'                  => 'Rokkitt',
		'Ropa+Sans'                => 'Ropa Sans',
		'Rosario'                  => 'Rosario',
		'Ruda'                     => 'Ruda',
        'Rufina'                   => 'Rufina',
		'Ruluko'                   => 'Ruluko',
		'Ruslan+Display'           => 'Ruslan Display',
		'Sail'                     => 'Sail',
		'Salsa'                    => 'Salsa',
		'Sancreek'                 => 'Sancreek',
        'Sanchez'                  => 'Sanchez',
		'Sansita+One'              => 'Sansita One',
		'Satisfy'                  => 'Satisfy',
		'Shadows+Into+Light'       => 'Shadows Into Light',
		'Shanti'                   => 'Shanti',
		'Share'                    => 'Share',
		'Sigmar+One'               => 'Sigmar One',
		'Signika'                  => 'Signika',
		'Signika+Negative'         => 'Signika Negative',
        'Sintony'                 => 'Sintony',
		'Six+Caps'                 => 'Six Caps',
		'Slackey'                  => 'Slackey',
		'Smokum'                   => 'Smokum',
		'Smythe'                   => 'Smythe',
		'Sofia'                    => 'Sofia',
		'Sonsie+One'               => 'Sonsie One',
		'Sorts+Mill+Goudy'         => 'Sorts Mill Goudy',
		'Special+Elite'            => 'Special Elite',
		'Spicy+Rice'               => 'Spicy Rice',
		'Spinnaker'                => 'Spinnaker',
		'Spirax'                   => 'Spirax',
		'Squada+One'               => 'Squada One',
		'Stardos+Stencil'          => 'Stardos Stencil',
		'Stint+Ultra+Condensed'    => 'Stint Ultra Condensed',
        'Strait'                   => 'Strait',
		'Stoke'                    => 'Stoke',
		'Sue+Ellen+Francisco'      => 'Sue Ellen Francisco',
		'Supermercado+One'         => 'Supermercado One',
		'Syncopate'                => 'Syncopate',
        'Tauri'                => 'Tauri',
		'Tangerine'                => 'Tangerine',
		'Tenor+Sans'               => 'Tenor Sans',
		'Terminal+Dosis'           => 'Terminal Dosis',
		'Tienne'                   => 'Tienne',
		'Tinos'                    => 'Tinos',
		'Titan+One'                => 'Titan One',
        'Titillium Web'            => 'Titillium Web',
		'Trade+Winds'              => 'Trade Winds',
		'Trochut'                  => 'Trochut',
		'Trykker'                  => 'Trykker',
		'Tulpen+One'               => 'Tulpen One',
		'Ubuntu'                   => 'Ubuntu',
		'Ubuntu+Condensed'         => 'Ubuntu Condensed',
		'Ubuntu+Mono'              => 'Ubuntu Mono',
		'Ultra'                    => 'Ultra',
		'Uncial+Antiqua'           => 'Uncial Antiqua',
		'UnifrakturCook'           => 'UnifrakturCook',
		'UnifrakturMaguntia'       => 'UnifrakturMaguntia',
		'Unkempt'                  => 'Unkempt',
		'Unlock'                   => 'Unlock',
		'Varela'                   => 'Varela',
		'Varela+Round'             => 'Varela Round',
		'Vibur'                    => 'Vibur',
		'Vidaloka'                 => 'Vidaloka',
		'Viga'                     => 'Viga',
		'Volkhov'                  => 'Volkhov',
		'Vollkorn'                 => 'Vollkorn',
		'Voltaire'                 => 'Voltaire',
		'VT323'                    => 'VT323',
		'Waiting+for+the+Sunrise'  => 'Waiting for the Sunrise',
		'Wallpoet'                 => 'Wallpoet',
		'Walter+Turncoat'          => 'Walter Turncoat',
		'Wellfleet'                => 'Wellfleet',
		'Wire+One'                 => 'Wire One',
		'Yanone+Kaffeesatz'        => 'Yanone Kaffeesatz',
		'Yellowtail'               => 'Yellowtail',
		'Yeseva+One'               => 'Yeseva One',
		'Yesteryear'               => 'Yesteryear',
		); 

// Default values

if(empty($pollishop_backgr_color)) $pollishop_backgr_color ="e3e3e3";
if(empty($pollishop_borderactiv_color)) $pollishop_borderactiv_color ="f3be3f";

if(empty($pollishop_bigtitle_color)) $pollishop_bigtitle_color ="333333";
if(empty($pollishop_titleitem_color)) $pollishop_titleitem_color ="769000";
if(empty($pollishop_titleitemdark_color)) $pollishop_titleitemdark_color ="ffffff";
if(empty($pollishop_btext_color)) $pollishop_btext_color ="8a8a8a";

if(empty($pollishop_menulink_color)) $pollishop_menulink_color ="ffffff";
if(empty($pollishop_hover_color)) $pollishop_hover_color ="333333";
if(empty($pollishop_menulink2_color)) $pollishop_menulink2_color ="769000";
if(empty($pollishop_hover2_color)) $pollishop_hover2_color ="ca5149";
if(empty($pollishop_menulink3_color)) $pollishop_menulink3_color ="333333";
if(empty($pollishop_hover3_color)) $pollishop_hover3_color ="ca5149";
if(empty($pollishop_multicolorbutton1)) $pollishop_multicolorbutton1 ="a0ba00";
if(empty($pollishop_multicolorbutton2)) $pollishop_multicolorbutton2 ="ca5149";
if(empty($pollishop_multicolorbutton3)) $pollishop_multicolorbutton3 ="3e9ddc";

if(empty($pollishop_categ_color)) $pollishop_categ_color ="333333";
if(empty($pollishop_hovercateg_color)) $pollishop_hovercateg_color ="ca5149";
if(empty($pollishop_activline_color)) $pollishop_activline_color ="f3be3f";

if(empty($pollishop_footertitle_color)) $pollishop_footertitle_color ="bbcf44";
if(empty($pollishop_footer_color)) $pollishop_footer_color ="afafaf";
if(empty($pollishop_footertext_color)) $pollishop_footertext_color ="8a8a8a";

if(empty($pollishop_alllink_color)) $pollishop_alllink_color ="333333";
if(empty($pollishop_allactive_color)) $pollishop_allactive_color ="ca5149";

if(empty($pollishop_allprice_color)) $pollishop_allprice_color ="333333";
if(empty($pollishop_oprice_color)) $pollishop_oprice_color ="ca5149";
if(empty($pollishop_nprice_color)) $pollishop_nprice_color ="769000";

if(empty($pollishop_allprice2_color)) $pollishop_allprice2_color ="ffffff";
if(empty($pollishop_oprice2_color)) $pollishop_oprice2_color ="fd8e6d";
if(empty($pollishop_nprice2_color)) $pollishop_nprice2_color ="bbcf44";


// add to cart buttons
if(empty($pollishop_button1_top_color)) $pollishop_button1_top_color ="a0ba00";
if(empty($pollishop_button1_bottom_color)) $pollishop_button1_bottom_color ="ca5149";
if(empty($pollishop_button1_text_color)) $pollishop_button1_text_color ="FFFFFF";

// secondary buttons
if(empty($pollishop_button2_top_color)) $pollishop_button2_top_color ="3e9ddc";
if(empty($pollishop_bn2_bm_color)) $pollishop_bn2_bm_color ="ca5149";
if(empty($pollishop_button2_text_color)) $pollishop_button2_text_color ="FFFFFF";

if(empty($pollishop_wishlist_top_color)) $pollishop_wishlist_top_color ="f3be3f";
if(empty($pollishop_wishlist_bottom_color)) $pollishop_wishlist_bottom_color ="ca5149";

if(empty($pollishop_compare_top_color)) $pollishop_compare_top_color ="3e9ddc";
if(empty($pollishop_compare_bottom_color)) $pollishop_compare_bottom_color ="ca5149";


?>

<style type="text/css">
	.customhelp { color: #666; font-size:0.9em; }
	.color { border:1px solid #AAA; }
	.boxpattern div{ display:inline-block; overflow:hidden; width:60px; height:60px; }
</style>

<div id="content">
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	<?php if ($error_warning) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>

<div class="box">

	<div class="heading">
		<h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
		<div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
	</div>

	<div class="content">

	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">

		<input type="hidden" name="return_to" id="return_to" value="<?php echo $return_to?>" />

		<div style="margin-bottom: 10px">
			<label><?php echo $entry_status; ?></label>
			<select name="pollishop_status">
				<?php if ($pollishop_status) { ?>
				<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
				<option value="0"><?php echo $text_disabled; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_enabled; ?></option>
				<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			</select>
		</div>

		<div id="settings_tabs" class="htabs clearfix">
			<a href="#layout_settings">Colors</a>
            <a href="#color_buttons">Buttons</a>
            <a href="#fonts_settings">Fonts</a>
            <a href="#footer_social">Social</a>
			<a href="#footer_settings">Contact Info</a>
             <a href="#top_menu">Menu</a>
		</div>

		<div id="layout_settings" class="divtab">

			<table class="form">

				<tr><td colspan="2"><h3><?php echo $entry_pattern_sub; ?></h3></td></tr>

				<tr>
					<td><?php echo $entry_pattern_overlay; ?></td>
					<td>
						<div class="boxpattern">
							<span class="customhelp">1.</span><div><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/pollishop/image/patterns/overlay1.png" alt="pattern 1"></div>
							<span class="customhelp">2.</span><div><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/pollishop/image/patterns/overlay2.png" alt="pattern 2"></div>
							<span class="customhelp">3.</span><div><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/pollishop/image/patterns/overlay3.png" alt="pattern 3"></div>
							<span class="customhelp">4.</span><div><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/pollishop/image/patterns/overlay4.png" alt="pattern 4"></div>
							<span class="customhelp">5.</span><div><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/pollishop/image/patterns/overlay5.png" alt="pattern 5"></div>
                            <span class="customhelp">6.</span><div><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/pollishop/image/patterns/overlay6.png" alt="pattern 6"></div>
							<span class="customhelp">7.</span><div><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/pollishop/image/patterns/overlay7.png" alt="pattern 7"></div>
                            <span class="customhelp">8.</span><div><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/pollishop/image/patterns/overlay8.png" alt="pattern 8"></div>
                            <span class="customhelp">9.</span><div><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/pollishop/image/patterns/overlay9.png" alt="pattern 9"></div>
                            <span class="customhelp">10.</span><div><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/pollishop/image/patterns/overlay10.png" alt="pattern 10"></div>
						</div>
						<select name="pollishop_pattern_overlay">
							<option value="none"selected="selected">none</option>
							<?php for ($i = 1; $i <= 10; $i++) { 
									($this->config->get('pollishop_pattern_overlay')== $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>'; 
								<?php } ?>
						</select>
						<span class="customhelp"><?php echo $entry_pattern_overlay_help; ?></span>
					</td>
				</tr>
				  <tr>
					<td><?php echo $entry_custom_pattern; ?> </td>
					<td>
						<input type="hidden" name="pollishop_custom_pattern" value="<?php echo $pollishop_custom_pattern; ?>" id="pollishop_custom_pattern" />
						<img src="<?php echo $pollishop_pattern_preview; ?>" id="pollishop_pattern_preview" />
						<br /><a onclick="image_upload('pollishop_custom_pattern', 'pollishop_pattern_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pollishop_pattern_preview').attr('src', '<?php echo $no_image; ?>'); $('#pollishop_custom_pattern').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
				</tr>

				<tr><td colspan="2">
				<div class="customhelp"><?php echo $entry_colors_sub_help; ?></div></td></tr>
                
                 <tr><td style="background:#f4f4f4" colspan="2"><b>Background</b></td></tr>
				<tr>
					<td><?php echo $entry_backgr_color; ?></td>
					<td><input type="text" name="pollishop_backgr_color" value="<?php echo $pollishop_backgr_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>


                <tr><td style="background:#f4f4f4" colspan="2"><b>Menu</b></td></tr>
                 <tr>
					<td><?php echo $entry_menulink_color; ?></td>
					<td><input type="text" name="pollishop_menulink_color" value="<?php echo $pollishop_menulink_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
                <tr>
					<td><?php echo $entry_hover_color; ?></td>
					<td><input type="text" name="pollishop_hover_color" value="<?php echo $pollishop_hover_color; ?>" size="6" class="color {required:false,hash:true}"  />
					</td>
				</tr>
                 <tr>
					<td><?php echo $entry_menulink2_color; ?></td>
					<td><input type="text" name="pollishop_menulink2_color" value="<?php echo $pollishop_menulink2_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
                <tr>
					<td><?php echo $entry_hover2_color; ?></td>
					<td><input type="text" name="pollishop_hover2_color" value="<?php echo $pollishop_hover2_color; ?>" size="6" class="color {required:false,hash:true}"  />
					</td>
				</tr>
                 <tr>
					<td><?php echo $entry_menulink3_color; ?></td>
					<td><input type="text" name="pollishop_menulink3_color" value="<?php echo $pollishop_menulink3_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
                <tr>
					<td><?php echo $entry_hover3_color; ?></td>
					<td><input type="text" name="pollishop_hover3_color" value="<?php echo $pollishop_hover3_color; ?>" size="6" class="color {required:false,hash:true}"  />
					</td>
				</tr>
               <tr><td style="background:#f4f4f4" colspan="2"><b>Category</b></td></tr>
                 <tr>
					<td><?php echo $entry_categ_color; ?></td>
					<td><input type="text" name="pollishop_categ_color" value="<?php echo $pollishop_categ_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
                <tr>
					<td><?php echo $entry_hovercateg_color; ?></td>
					<td><input type="text" name="pollishop_hovercateg_color" value="<?php echo $pollishop_hovercateg_color; ?>" size="6" class="color {required:false,hash:true}"  />
					</td>
				</tr>
                 <tr>
					<td><?php echo $entry_activline_color; ?></td>
					<td><input type="text" name="pollishop_activline_color" value="<?php echo $pollishop_activline_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>   
                
                
                 <tr><td style="background:#f4f4f4" colspan="2"><b>Footer</b></td></tr> 
                 <tr>
					<td><?php echo $entry_footertitle_color; ?></td>
					<td><input type="text" name="pollishop_footertitle_color" value="<?php echo $pollishop_footertitle_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
                 <tr>
					<td><?php echo $entry_footer_color; ?></td>
					<td><input type="text" name="pollishop_footer_color" value="<?php echo $pollishop_footer_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
                <tr>
					<td><?php echo $entry_footertext_color; ?></td>
					<td><input type="text" name="pollishop_footertext_color" value="<?php echo $pollishop_footertext_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
                
                <tr><td style="background:#f4f4f4" colspan="2"><b>Title and text</b></td></tr>
                <tr>
					<td><?php echo $entry_alllink_color; ?></td>
					<td><input type="text" name="pollishop_alllink_color" value="<?php echo $pollishop_alllink_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
                
                <tr>
					<td><?php echo $entry_allactive_color; ?></td>
					<td><input type="text" name="pollishop_allactive_color" value="<?php echo $pollishop_allactive_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
                
                
                 
				<tr>
					<td><?php echo $entry_bigtitle_color; ?></td>
					<td><input type="text" name="pollishop_bigtitle_color" value="<?php echo $pollishop_bigtitle_color; ?>" size="6" class="color {required:false,hash:true}"  />
						<span class="customhelp"><?php echo $entry_title_color_help; ?></span></td>
				</tr>
                <tr>
					<td><?php echo $entry_titleitem_color; ?></td>
					<td><input type="text" name="pollishop_titleitem_color" value="<?php echo $pollishop_titleitem_color; ?>" size="6" class="color {required:false,hash:true}"  />
						<span class="customhelp"><?php echo $entry_titleitem_color_help; ?></span></td>
				</tr>
                
				<tr>
					<td><?php echo $entry_btext_color; ?></td>
					<td><input type="text" name="pollishop_btext_color" value="<?php echo $pollishop_btext_color; ?>" size="6" class="color {required:false,hash:true}"  />
						<span class="customhelp"><?php echo $entry_body_color_help; ?></span></td>
				</tr>
				
				
				
                <tr><td style="background:#f4f4f4" colspan="2"><b>Price</b></td></tr>
                		<tr>
					<td><?php echo $entry_allprice_color; ?></td>
					<td><input type="text" name="pollishop_allprice_color" value="<?php echo $pollishop_allprice_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
				
				<tr>
					<td><?php echo $entry_oprice_color; ?></td>
					<td><input type="text" name="pollishop_oprice_color" value="<?php echo $pollishop_oprice_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
                
                <tr>
					<td><?php echo $entry_nprice_color; ?></td>
					<td><input type="text" name="pollishop_nprice_color" value="<?php echo $pollishop_nprice_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>

                 <tr><td style="background:#f4f4f4" colspan="2"><b>Dark vertical slider</b></td></tr>
                 
                 <tr>
					<td><?php echo $entry_titleitemdark_color; ?></td>
					<td><input type="text" name="pollishop_titleitemdark_color" value="<?php echo $pollishop_titleitemdark_color; ?>" size="6" class="color {required:false,hash:true}"  />
					</td>
				</tr>
                <tr>
					<td><?php echo $entry_allprice2_color; ?></td>
					<td><input type="text" name="pollishop_allprice2_color" value="<?php echo $pollishop_allprice2_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
				
				<tr>
					<td><?php echo $entry_oprice2_color; ?></td>
					<td><input type="text" name="pollishop_oprice2_color" value="<?php echo $pollishop_oprice2_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
                
                <tr>
					<td><?php echo $entry_nprice2_color; ?></td>
					<td><input type="text" name="pollishop_nprice2_color" value="<?php echo $pollishop_nprice2_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
                <tr><td style="background:#f4f4f4" colspan="2"><b>Border</b></td></tr>
                		<tr>
					<td><?php echo $entry_borderactiv_color; ?></td>
					<td><input type="text" name="pollishop_borderactiv_color" value="<?php echo $pollishop_borderactiv_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
				
				</table>
				
			</div>
            
            <div id="color_buttons" class="divtab">
            <table  class="form">
            <tr><td colspan="2"><h3><?php echo $entry_buttons_sub; ?></h3></td></tr>
            <tr>
					<td><?php echo $entry_button1_color; ?></td>
					<td>
					<span class="customhelp">Normal:</span> <input type="text" name="pollishop_button1_top_color" value="<?php echo $pollishop_button1_top_color; ?>" size="6" class="color {required:false,hash:true}" />
					<span class="customhelp">Hover:</span> <input type="text" name="pollishop_button1_bottom_color" value="<?php echo $pollishop_button1_bottom_color; ?>" size="6" class="color {required:false,hash:true}" />
					<span class="customhelp">Text color:</span> <input type="text" name="pollishop_button1_text_color" value="<?php echo $pollishop_button1_text_color; ?>" size="6" class="color {required:false,hash:true}" />
					</td>
				</tr>

				<tr>
					<td>
						<?php echo $entry_button2_color; ?>
						<div class="customhelp"><?php echo $entry_button2_color_help; ?></div>
					</td>
					<td>
					<span class="customhelp">Normal:</span> <input type="text" name="pollishop_button2_top_color" value="<?php echo $pollishop_button2_top_color; ?>" size="6" class="color {required:false,hash:true}" />
					<span class="customhelp">Hover:</span> <input type="text" name="pollishop_bn2_bm_color" value="<?php echo $pollishop_bn2_bm_color; ?>" size="6" class="color {required:false,hash:true}" />
					<span class="customhelp">Text color:</span> <input type="text" name="pollishop_button2_text_color" value="<?php echo $pollishop_button2_text_color; ?>" size="6" class="color {required:false,hash:true}" />
					</td>
				</tr>
                <tr>
					<td>
						<?php echo $entry_wishlist_color; ?>
					</td>
					<td>
					<span class="customhelp">Normal:</span> <input type="text" name="pollishop_wishlist_top_color" value="<?php echo $pollishop_wishlist_top_color; ?>" size="6" class="color {required:false,hash:true}" />
					<span class="customhelp">Hover:</span> <input type="text" name="pollishop_wishlist_bottom_color" value="<?php echo $pollishop_wishlist_bottom_color; ?>" size="6" class="color {required:false,hash:true}" />

					</td>
				</tr>
                
                                <tr>
					<td>
						<?php echo $entry_compare_color; ?>
					</td>
					<td>
					<span class="customhelp">Normal:</span> <input type="text" name="pollishop_compare_top_color" value="<?php echo $pollishop_compare_top_color; ?>" size="6" class="color {required:false,hash:true}" />
					<span class="customhelp">Hover:</span> <input type="text" name="pollishop_compare_bottom_color" value="<?php echo $pollishop_compare_bottom_color; ?>" size="6" class="color {required:false,hash:true}" />

					</td>
				</tr>
                
                 <tr>
					<td><?php echo $entry_multicolorbutton1; ?></td>
					<td><input type="text" name="pollishop_multicolorbutton1" value="<?php echo $pollishop_multicolorbutton1; ?>" size="6" class="color {required:false,hash:true}"  />
					</td>
				</tr>
                   <tr>
					<td><?php echo $entry_multicolorbutton2; ?></td>
					<td><input type="text" name="pollishop_multicolorbutton2" value="<?php echo $pollishop_multicolorbutton2; ?>" size="6" class="color {required:false,hash:true}"  />
					</td>
				</tr>
                   <tr>
					<td><?php echo $entry_multicolorbutton3; ?></td>
					<td><input type="text" name="pollishop_multicolorbutton3" value="<?php echo $pollishop_multicolorbutton3; ?>" size="6" class="color {required:false,hash:true}"  />
					</td>
				</tr>

            
            </table>
            
            </div>
            
            
            <div id="fonts_settings" class="divtab">
            
            <table  class="form">
            				<tr><td colspan="2"><h3><?php echo $entry_fonts_sub; ?></h3></td></tr>
                <tr><td style="background:#f4f4f4" colspan="2"><b>Headers</b></td></tr>
				<tr>
					<td><?php echo $entry_title_font; ?></td>
					<td>
						<select name="pollishop_title_font">
							<?php foreach ($fonts as $fv => $fc) { ?>
								<?php ($fv ==  $this->config->get('pollishop_title_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
								<option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>	
							<?php } ?>
						</select>
						<span class="customhelp"><?php echo $entry_title_font_help; ?></span>

					</td>
				</tr>
                <tr><td><?php echo $entry_title_bigsize; ?></td>
                  <td>
                  <select name="pollishop_headersize">
							<option value="none" selected="selected">24</option>
							<?php for ($i = 9; $i <= 36; $i++) { 
									($this->config->get('pollishop_headersize')== $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>'; 
								<?php } ?>
						</select>
                  
                  </td>
                
                </tr>
                 <tr><td><?php echo $entry_title_big2size; ?></td>
                  <td>
                  <select name="pollishop_header2size">
							<option value="none" selected="selected">20</option>
							<?php for ($i = 9; $i <= 36; $i++) { 
									($this->config->get('pollishop_header2size')== $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>'; 
								<?php } ?>
						</select>
                  
                  </td>
                
                </tr>
                 <tr><td><?php echo $entry_title_big3size; ?></td>
                  <td>
                  <select name="pollishop_headersize3">
							<option value="none" selected="selected">14</option>
							<?php for ($i = 9; $i <= 36; $i++) { 
									($this->config->get('pollishop_headersize3')== $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>'; 
								<?php } ?>
						</select>
                  
                  </td>
                
                </tr>
               <tr><td style="background:#f4f4f4" colspan="2"><b>Body text</b></td></tr>
				<tr>
					<td><?php echo $entry_body_font ?></td>
					<td>
						<select name="pollishop_body_font">
							<?php foreach ($fonts as $fv => $fc) { ?>
								<?php ($fv ==  $this->config->get('pollishop_body_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
								<option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>	
							<?php } ?>
						</select>
						<span class="customhelp"><?php echo $entry_body_font_help; ?></span>

					</td>
				</tr>
                 <tr><td><?php echo $entry_title_bodysize; ?></td>
                  <td>
                  <select name="pollishop_bodysize">
							<option value="none"selected="selected">13</option>
							<?php for ($i = 9; $i <= 36; $i++) { 
									($this->config->get('pollishop_bodysize')== $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>'; 
								<?php } ?>
						</select>
                  
                  </td>
                
                </tr>
                 <tr><td style="background:#f4f4f4" colspan="2"><b>Price</b></td></tr>
                <tr><td><?php echo $entry_title_pricesize; ?></td>
                  <td>
                  <select name="pollishop_pricesize">
							<option value="none"selected="selected">16</option>
							<?php for ($i = 9; $i <= 36; $i++) { 
									($this->config->get('pollishop_pricesize')== $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>'; 
								<?php } ?>
						</select>
                  
                  </td>
                
                </tr>
                <tr><td style="background:#f4f4f4" colspan="2"><b>Links</b></td></tr>
                <tr><td><?php echo $entry_title_toplinksize; ?></td>
                  <td>
                  <select name="pollishop_toplinksize">
							<option value="none"selected="selected">14</option>
							<?php for ($i = 9; $i <= 36; $i++) { 
									($this->config->get('pollishop_toplinksize')== $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>'; 
								<?php } ?>
						</select>
                  
                  </td>
                
                </tr>
                <tr><td><?php echo $entry_title_categorysize; ?></td>
                  <td>
                  <select name="pollishop_categorysize">
							<option value="none"selected="selected">15</option>
							<?php for ($i = 9; $i <= 36; $i++) { 
									($this->config->get('pollishop_categorysize')== $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>'; 
								<?php } ?>
						</select>
                  
                  </td>
                
                </tr>

				</table>
            
            </div>
            <div id="footer_social" class="divtab">
            <table class="form">
             <tr><td colspan="2"><h3>Social Icons</h3></td></tr>
            
            <tr>
						<td><?php echo $entry_facebook_id; ?></td>
						<td><input type="text" name="pollishop_facebook_id" value="<?php echo $pollishop_facebook_id; ?>" /></td>
					</tr>
					<tr>
						<td><?php echo $entry_twitter_username; ?></td>
						<td><input type="text" name="pollishop_twitter_username" value="<?php echo $pollishop_twitter_username; ?>" /></td>
					</tr>          
					<tr>
						<td><?php echo $entry_gplus_id; ?></td>
						<td><input type="text" name="pollishop_gplus_id" value="<?php echo $pollishop_gplus_id; ?>" /></td>
					</tr>
                <tr>
						<td><?php echo $entry_flick_id; ?></td>
						<td><input type="text" name="pollishop_flick_id" value="<?php echo $pollishop_flick_id; ?>" /></td>
					</tr>
					<tr>
						<td><?php echo $entry_linkedin_id; ?></td>
						<td><input type="text" name="pollishop_linkedin_id" value="<?php echo $pollishop_linkedin_id; ?>" /></td>
					</tr>          
					<tr>
						<td><?php echo $entry_rss_id; ?></td>
						<td><input type="text" name="pollishop_rss_id" value="<?php echo $pollishop_rss_id; ?>" /></td>
					</tr> 
                  <tr>
						<td><?php echo $entry_youtube_id; ?></td>
						<td><input type="text" name="pollishop_youtube_id" value="<?php echo $pollishop_youtube_id; ?>" /></td>
					</tr>
					<tr>
						<td><?php echo $entry_pinterest_id; ?></td>
						<td><input type="text" name="pollishop_pinterest_id" value="<?php echo $pollishop_pinterest_id; ?>" /></td>
					</tr>          
			<tr><td colspan="2"><h3>Social Networks</h3></td></tr>	
            <tr>
						<td><?php echo $entry_tweets_lenta; ?></td>
						<td><input type="text" name="pollishop_tweets_lenta" value="<?php echo $pollishop_tweets_lenta; ?>" /></td>
					</tr>     
                    <tr>
						<td><?php echo $entry_facebook_lenta; ?></td>
						<td><input type="text" name="pollishop_facebook_lenta" value="<?php echo $pollishop_facebook_lenta; ?>" /></td>
					</tr>
                    <tr>
						<td><?php echo $entry_vcom_lenta; ?></td>
						<td><input type="text" name="pollishop_vcom_lenta" value="<?php echo $pollishop_vcom_lenta; ?>" /></td>
					</tr>                 
            
            </table>
            
            </div>
            

			<div id="footer_settings" class="divtab">
			
				<table class="form">
					
                    <tr>
						<td><?php echo $entry_footer_phone; ?></td>
						<td><textarea name="pollishop_footer_phone" cols="52" rows="2"><?php echo $pollishop_footer_phone; ?></textarea>
						</td>
					</tr>
                    
                    <tr>
						<td><?php echo $entry_footer_skype; ?></td>
						<td><textarea name="pollishop_footer_skype" cols="52" rows="2"><?php echo $pollishop_footer_skype; ?></textarea>
						</td>
					</tr>
                    
                    <tr>
						<td><?php echo $entry_footer_email; ?></td>
						<td><textarea name="pollishop_footer_email" cols="52" rows="2"><?php echo $pollishop_footer_email; ?></textarea>
						</td>
					</tr>
                    
                    <tr>
						<td><?php echo $entry_footer_address; ?></td>
						<td><textarea name="pollishop_footer_address" cols="52" rows="5"><?php echo $pollishop_footer_address; ?></textarea>
						</td>
					</tr>

					<tr>
						<td><?php echo $entry_copyright_text; ?></td>
						<td><textarea name="pollishop_copyright" cols="52" rows="2"><?php echo $pollishop_copyright; ?></textarea>
						<span class="customhelp"><?php echo $entry_copyright_text_help; ?></span>
						</td>
					</tr>

				</table>

			</div>
            
             <div id="top_menu" class="divtab">
			
				<table class="form">
              <tr><td>
               <label><?php echo $entry_home_enable; ?></label></td>
			<td><select name="pollishop_home_enable">
				<?php if ($pollishop_home_enable) { ?>
				<option value="1" selected="selected">Enabled</option>
				<option value="0">Disabled</option>
				<?php } else { ?>
				<option value="1">Enabled</option>
				<option value="0" selected="selected">Disabled</option>
				<?php } ?>
			</select>
                
                </td>
                </tr> 
                
               <tr><td>
               <label><?php echo $entry_account_enable; ?></label></td>
			<td><select name="pollishop_account_enable">
				<?php if ($pollishop_account_enable) { ?>
				<option value="1" selected="selected">Enabled</option>
				<option value="0">Disabled</option>
				<?php } else { ?>
				<option value="1">Enabled</option>
				<option value="0" selected="selected">Disabled</option>
				<?php } ?>
			</select>
                
                </td>
                </tr>
              <tr><td>
               <label><?php echo $entry_contact_enable; ?></label></td>
			<td><select name="pollishop_contact_enable">
				<?php if ($pollishop_contact_enable) { ?>
				<option value="1" selected="selected">Enabled</option>
				<option value="0">Disabled</option>
				<?php } else { ?>
				<option value="1">Enabled</option>
				<option value="0" selected="selected">Disabled</option>
				<?php } ?>
			</select>
                
                </td>
                </tr>       
                
             <tr><td>
               <label><?php echo $entry_brand_enable; ?></label></td>
			<td><select name="pollishop_brand_enable">
				<?php if ($pollishop_brand_enable) { ?>
				<option value="1" selected="selected">Enabled</option>
				<option value="0">Disabled</option>
				<?php } else { ?>
				<option value="1">Enabled</option>
				<option value="0" selected="selected">Disabled</option>
				<?php } ?>
			</select>
                
                </td>
                </tr>
                </table>
            </div>

		</form>

	</div>

</div>

<?php echo $footer; ?>

<script type="text/javascript">

	$('#settings_tabs a').tabs(); 
	$('#color_buttons_tabs a').tabs();
	$('#fonts_settings_tabs a').tabs();
	$('#fonts_cocial_tabs a').tabs();
	$('#footer_settings_tabs a').tabs();

</script>

<script type="text/javascript" src="view/javascript/jscolor/jscolor.js"></script> 

<script type="text/javascript"><!--

$(document).ready(function() {

	$('	#pollishop_background_color').ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			$(el).val(hex);
			$(el).ColorPickerHide();
		},
		onBeforeShow: function () {
			$(this).ColorPickerSetColor(this.value);
		}
	})
	.bind('keyup', function(){
		$(this).ColorPickerSetColor(this.value);
	});
	 });

//--></script>

<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 