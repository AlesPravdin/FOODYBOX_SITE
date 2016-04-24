<!-------------------------footer------------------------------------------------------>
<div id="footer">

    <div class="leftpart">
        <?php if ($informations) { ?>
        <div class="column">
            <h3><?php echo $text_information; ?></h3>
            <ul>
                <?php foreach ($informations as $information) { ?>
                <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
        <?php } ?>
        <div class="column">
            <h3><?php echo $text_service; ?></h3>
            <ul>
                <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
            </ul>
        </div>
        <!--
      <div class="column">
        <h3><?php echo $text_extra; ?></h3>
        <ul>
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      -->
        <div class="column account-column">
            <h3><?php echo $text_account; ?></h3>
            <ul>
                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
            </ul>
        </div>
    </div>

    <div class="rightpart">

        <!--------------------------------TWITTER------------------------------------------->
        <div class="tweetcolumn">
            <?php echo $text_entrepreneur; ?><br />
        </div>


        <!-------------------------contact------------------------------------------------------>
        <div class="contact-column">
            <?php if($this->config->get('pollishop_status')== 1) { ?>

            <h3> </h3>

            <ul>
                <?php if($this->config->get('pollishop_footer_phone') != '') { ?>
                <li class="phone_f"><?php echo $this->config->get('pollishop_footer_phone')?></li>
                <?php } ?>

                <?php if($this->config->get('pollishop_footer_email') != '') { ?>
                <li class="email_f"><a
                            href="mailto:<?php echo $this->config->get('pollishop_footer_email')?>"><?php echo $this->
                        config->get('pollishop_footer_email')?></a></li>
                <?php } ?>

                <?php if($this->config->get('pollishop_footer_skype') != '') { ?>
                <li class="skype_f"><a
                            href="skype://<?php echo $this->config->get('pollishop_footer_skype')?>"><?php echo $this->
                        config->get('pollishop_footer_skype')?></a></li>
                <?php } ?>

                <?php if($this->config->get('pollishop_footer_address') != '') { ?>
                <li class="address_f"><?php echo $this->config->get('pollishop_footer_address')?></li>
                <?php } ?>
            </ul>
            <?php } ?>

        </div>

        <!-------------------------end contact------------------------------------------------------>


        <!-------------------------FACEBOOK------------------------------------------------------>

        <?php if($this->config->get('pollishop_status')== 1) { ?>
        <?php if($this->config->get('pollishop_facebook_lenta') != '') { ?>
        <div class="facebookcolumn ">
            <div id="fb-root"></div>
            <script>(function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) return;
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "//connect.facebook.net/en_EN/all.js#xfbml=1";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));</script>


            <h3>Facebook</h3>

            <div class="fb-like-box"
                 data-href="http://www.facebook.com/<?php echo $this->config->get('pollishop_facebook_lenta')?>"
                 data-width="235" data-height="208" data-show-faces="true" data-colorscheme="dark" data-stream="false"
                 data-border-color="#434343" data-header="false"></div>
        </div>
        <?php } ?>
        <?php } ?>


        <!-------------------------VCOM------------------------------------------------------>

        <div class="vcomcolumn">
            <?php if($this->config->get('pollishop_status')== 1) { ?>
            <?php if($this->config->get('pollishop_vcom_lenta') != '') { ?>
            <script type="text/javascript" src="//vk.com/js/api/openapi.js?88"></script>
            <!-- VK Widget -->
            <h3>Вконтакте</h3>

            <div id="vk_groups"></div>
            <script type="text/javascript">
                VK.Widgets.Group("vk_groups", {mode: 1, width: "225", height: "168"}, < ? php echo
                $this - > config - > get('pollishop_vcom_lenta') ?
                >)
                ;
            </script>
            <?php } ?>
            <?php } ?>

        </div>

    </div>
    <!-------------------------end footer------------------------------------------------------>

    <div id="webpaylogo">
        <img src="image/data/foodybox/webpay/logo/alllogos.png" alt="web pay icons" height="64" width="1000">
    </div>

    <div id="powered">
        <!-------------------------social icons------------------------------------------------------>
        <?php if($this->config->get('pollishop_status')== 1) { ?>
        <ul id="social-icons">

            <?php if($this->config->get('pollishop_facebook_id') != '' ||
            $this->config->get('pollishop_twitter_username') != '' || $this->config->get('pollishop_gplus_id') != '') {
            ?>
            <!-- <span>Follow Us:</span> -->
            <?php } ?>
            <?php if($this->config->get('pollishop_facebook_id') != '') { ?>
            <li><a href="http://facebook.com/<?php echo $this->config->get('pollishop_facebook_id'); ?>"
                   target="_blank">
                    <img src="catalog/view/theme/pollishop/image/social/facebook.png" alt="Facebook"
                         title="Facebook"></a></li>
            <?php } ?>
            <?php if($this->config->get('pollishop_twitter_username') != '') { ?>
            <li><a href="http://twitter.com/<?php echo $this->config->get('pollishop_twitter_username'); ?>"
                   target="_blank">
                    <img src="catalog/view/theme/pollishop/image/social/twitter.png" alt="Twitter" title="Twitter"></a>
            </li>
            <?php } ?>
            <?php if($this->config->get('pollishop_gplus_id') != '') { ?>
            <li><a href="http://www.google.ru/<?php echo $this->config->get('pollishop_gplus_id'); ?>" target="_blank">
                    <img src="catalog/view/theme/pollishop/image/social/google-plus.png" alt="Google+" title="Google+"></a>
            </li>
            <?php } ?>
            <?php if($this->config->get('pollishop_flick_id') != '') { ?>
            <li><a href="http://www.flickr.com/<?php echo $this->config->get('pollishop_flick_id'); ?>" target="_blank">
                    <img src="catalog/view/theme/pollishop/image/social/flickr.png" alt="Facebook" title="Flickr"></a>
            </li>
            <?php } ?>
            <?php if($this->config->get('pollishop_linkedin_id') != '') { ?>
            <li><a href="http://www.linkedin.com/<?php echo $this->config->get('pollishop_linkedin_id'); ?>"
                   target="_blank">
                    <img src="catalog/view/theme/pollishop/image/social/linkedin.png" alt="Linkedin"
                         title="Linkedin"></a></li>
            <?php } ?>
            <?php if($this->config->get('pollishop_rss_id') != '') { ?>
            <li><a href="<?php echo $this->config->get('pollishop_rss_id'); ?>" target="_blank">
                    <img src="catalog/view/theme/pollishop/image/social/rss.png" alt="RSS" title="RSS"></a></li>
            <?php } ?>
            <?php if($this->config->get('pollishop_youtube_id') != '') { ?>
            <li><a href="http://www.youtube.com/<?php echo $this->config->get('pollishop_youtube_id'); ?>"
                   target="_blank">
                    <img src="catalog/view/theme/pollishop/image/social/youtube.png" alt="Youtube" title="Youtube"></a>
            </li>
            <?php } ?>
            <?php if($this->config->get('pollishop_pinterest_id') != '') { ?>
            <li><a href="http://pinterest.com/<?php echo $this->config->get('pollishop_pinterest_id'); ?>"
                   target="_blank">
                    <img src="catalog/view/theme/pollishop/image/social/pinterest.png" alt="Pinterest"
                         title="Pinterest"></a></li>
            <?php } ?>


        </ul>


        <!-------------------------end social icons------------------------------------------------------>

        <!-------------------------copyright------------------------------------------------------>

        <?php if($this->config->get('pollishop_copyright') != '') { ?>
        <div id="copy"><?php echo $this->config->get('pollishop_copyright'); ?></div>
        <?php } else { ?>

        <div id="copy"><?php echo $this->config->get('config_name'); ?> &copy;2013. Powered by <a class="blue"
                                                                                                  href="http://www.opencart.com">OpenCart</a>
        </div>
        <?php } ?>
        <?php } else { ?>
        <div id="copy"><?php echo $this->config->get('config_name'); ?> &copy;2013. Powered by <a class="blue"
                                                                                                  href="http://www.opencart.com">OpenCart</a>
        </div>
        <?php } ?>


        <!-------------------------end copyright------------------------------------------------------>

    </div>

</div>


</body></html>