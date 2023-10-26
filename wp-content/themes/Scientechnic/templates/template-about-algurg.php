<?php
/* Template Name: About ESAG page */
/* */
?>

<?php get_header(); ?>

<div class="banner-area">
      <div class="sc-preloader"></div>
      <?php
      if (have_rows('banner')):
            while (have_rows('banner')):
                  the_row();
                  $image_img = get_sub_field('image');
                  $image = $image_img['url'];
                  $title = get_sub_field('title');
                  $description = get_sub_field('description');
                  ?>



                                                                                                                  <?php if ($image):
                                                                                                                        echo '<div id="slides">
                                    <ul class="slides-container">
                                          <li>
                                                <img class="center center" src="' . $image . '"alt="' . $image_img['alt'] . '"/>
                                          </li>
                                    </ul>
                              </div>';
                                                                                                                  endif; ?>
                                                                                                                  <div class="topgradient"></div>
                                                                                                                  <div class="slider-content">
                                                                                                                        <div class="container move-uper">
                                                                                                                              <div class="content-holdingg wow fadeInUp">
                                                                                                                                    <?php if ($title):
                                                                                                                                          echo '<h1>' . $title . '</h1>';
                                                                                                                                    endif; ?>
                                                                                                                                    <?php if ($description):
                                                                                                                                          echo '<p>' . $description . '</p>';
                                                                                                                                    endif; ?>
                                                                                                                              </div>
                                                                                                                        </div>
                                                                                                                        <div class="container down-scroller">
                                                                                                                              <div class="trig-bot">
                                                                                                                                    <a class="down-scroll" href="#sc-wrap"></a>
                                                                                                                              </div>
                                                                                                                              <div class="bc">
                                                                                                                                    <a href="../../index.html" target="_self">Home</a>
                                                                                                                                    <span class="ccm-autonav-breadcrumb-sep">/</span>
                                                                                                                                    <a href="../index.html" target="_self">About</a>
                                                                                                                                    <span class="ccm-autonav-breadcrumb-sep">/</span> Easa Saleh Al
                                                                                                                                    Gurg Group
                                                                                                                              </div>
                                                                                                                        </div>
                                                                                                                  </div>
                                                                                                                  <?php
            endwhile;
      endif;
      ?>


</div>

<div class="right-links">
      <ul class="list-inline">
            <li>
                  <a href="tel:+97142035777" class="call mobile">Call</a>
                  <a data-toggle="modal" href="#callModal" class="call desktop">Call</a>
            </li>
            <li>
                  <a href="javascript:void(0)" class="enquire toggle-menu menu-left">Enquire</a>
            </li>
            <li>
                  <span class="share-icon">Share</span>
            </li>
      </ul>
</div>

<div class="enquery-pop cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left">
        <div class="pop-close"><span></span></div>
        <div class="container">
          <div class="make-enquery-wrap">
            <h1>Make An Enquiry</h1>
            <div id="formidable_container_3" class="formidable">
              <form
                id="ff_3"
                name="formidable_form"
                method="post"
                enctype="multipart/form-data"
                class=""
              >
                <input type="hidden" name="formID" id="formID3" value="3" />
                <input type="hidden" name="cID" id="cID3" value="226" />
                <input type="hidden" name="bID" id="bID3" value="451" />
                <input
                  type="hidden"
                  name="resolution"
                  id="resolution3"
                  value=""
                />
                <input
                  type="hidden"
                  name="ccm_token"
                  id="ccm_token3"
                  value="1696501043:3fcdf0fc875607097263177ce10c51bb"
                />
                <div class="formidable_row">
                  <div class="inner">
                    <div class="formidable_column last w100">
                      <div class="inner">
                        <div>
                          <div class="element text name-15">
                            <div class="input no_label">
                              <input
                                id="name-15"
                                type="text"
                                name="name-15"
                                value=""
                                placeholder="Name*"
                                class="ccm-input-text"
                              />
                            </div>
                          </div>

                          <div class="element emailaddress email-17">
                            <div class="input no_label">
                              <input
                                id="email-17"
                                type="email"
                                name="email-17"
                                value=""
                                placeholder="Email*"
                                class="ccm-input-email"
                              />
                            </div>
                          </div>

                          <div class="element text company-24">
                            <div class="input no_label">
                              <input
                                id="company-24"
                                type="text"
                                name="company-24"
                                value=""
                                placeholder="Company*"
                                class="ccm-input-text"
                              />
                            </div>
                          </div>

                          <div class="element phone phone-16">
                            <div class="input no_label">
                              <input
                                id="phone-16"
                                type="tel"
                                name="phone-16"
                                value=""
                                placeholder="Phone*"
                                class="ccm-input-tel"
                              />
                            </div>
                          </div>

                          <div
                            class="element recipientselector interested-in-28"
                          >
                            <div class="input no_label">
                              <select
                                name="interested-in-28[]"
                                id="interested-in-28"
                              >
                                <option
                                  value="General Enquiry"
                                  selected="selected"
                                >
                                  General Enquiry
                                </option>
                                <option value="Industrial Stock Sales">
                                  Industrial Stock Sales
                                </option>
                                <option value="Mobility">Mobility</option>
                                <option value="Energy Management">
                                  Energy Management
                                </option>
                                <option value="Automation">Automation</option>
                                <option value="Sheet Metal Manufacturing">
                                  Sheet Metal Manufacturing
                                </option>
                                <option value="Building Technologies">
                                  Building Technologies
                                </option>
                                <option value="Lighting Projects">
                                  Lighting Projects
                                </option>
                              </select>
                            </div>
                          </div>

                          <div class="element address country-22">
                            <div class="input no_label">
                              <select
                                name="country-22[country]"
                                id="country-22[country]"
                                class="country country_select ccm-input-select"
                              >
                                <option value="" selected="selected">
                                  Choose country
                                </option>
                                <option value="AF">Afghanistan</option>
                                <option value="AL">Albania</option>
                                <option value="DZ">Algeria</option>
                                <option value="AS">American Samoa</option>
                                <option value="AD">Andorra</option>
                                <option value="AO">Angola</option>
                                <option value="AI">Anguilla</option>
                                <option value="AQ">Antarctica</option>
                                <option value="AG">Antigua and Barbuda</option>
                                <option value="AR">Argentina</option>
                                <option value="AM">Armenia</option>
                                <option value="AW">Aruba</option>
                                <option value="AU">Australia</option>
                                <option value="AT">Austria</option>
                                <option value="AZ">Azerbaijan</option>
                                <option value="BS">Bahamas</option>
                                <option value="BH">Bahrain</option>
                                <option value="BD">Bangladesh</option>
                                <option value="BB">Barbados</option>
                                <option value="BY">Belarus</option>
                                <option value="BE">Belgium</option>
                                <option value="BZ">Belize</option>
                                <option value="BJ">Benin</option>
                                <option value="BM">Bermuda</option>
                                <option value="BT">Bhutan</option>
                                <option value="BO">Bolivia</option>
                                <option value="BA">
                                  Bosnia and Herzegovina
                                </option>
                                <option value="BW">Botswana</option>
                                <option value="BV">Bouvet Island</option>
                                <option value="BR">Brazil</option>
                                <option value="BQ">
                                  British Antarctic Territory
                                </option>
                                <option value="IO">
                                  British Indian Ocean Territory
                                </option>
                                <option value="VG">
                                  British Virgin Islands
                                </option>
                                <option value="BN">Brunei</option>
                                <option value="BG">Bulgaria</option>
                                <option value="BF">Burkina Faso</option>
                                <option value="BI">Burundi</option>
                                <option value="KH">Cambodia</option>
                                <option value="CM">Cameroon</option>
                                <option value="CA">Canada</option>
                                <option value="CV">Cape Verde</option>
                                <option value="KY">Cayman Islands</option>
                                <option value="CF">
                                  Central African Republic
                                </option>
                                <option value="TD">Chad</option>
                                <option value="CL">Chile</option>
                                <option value="CN">China</option>
                                <option value="CX">Christmas Island</option>
                                <option value="CC">
                                  Cocos [Keeling] Islands
                                </option>
                                <option value="CO">Colombia</option>
                                <option value="KM">Comoros</option>
                                <option value="CG">Congo - Brazzaville</option>
                                <option value="CD">Congo - Kinshasa</option>
                                <option value="CK">Cook Islands</option>
                                <option value="CR">Costa Rica</option>
                                <option value="HR">Croatia</option>
                                <option value="CU">Cuba</option>
                                <option value="CY">Cyprus</option>
                                <option value="CZ">Czech Republic</option>
                                <option value="CI">Côte d’Ivoire</option>
                                <option value="DK">Denmark</option>
                                <option value="DJ">Djibouti</option>
                                <option value="DM">Dominica</option>
                                <option value="DO">Dominican Republic</option>
                                <option value="NQ">Dronning Maud Land</option>
                                <option value="EC">Ecuador</option>
                                <option value="EG">Egypt</option>
                                <option value="SV">El Salvador</option>
                                <option value="GQ">Equatorial Guinea</option>
                                <option value="ER">Eritrea</option>
                                <option value="EE">Estonia</option>
                                <option value="ET">Ethiopia</option>
                                <option value="FK">Falkland Islands</option>
                                <option value="FO">Faroe Islands</option>
                                <option value="FJ">Fiji</option>
                                <option value="FI">Finland</option>
                                <option value="FR">France</option>
                                <option value="GF">French Guiana</option>
                                <option value="PF">French Polynesia</option>
                                <option value="TF">
                                  French Southern Territories
                                </option>
                                <option value="FQ">
                                  French Southern and Antarctic Territories
                                </option>
                                <option value="GA">Gabon</option>
                                <option value="GM">Gambia</option>
                                <option value="GE">Georgia</option>
                                <option value="DE">Germany</option>
                                <option value="GH">Ghana</option>
                                <option value="GI">Gibraltar</option>
                                <option value="GR">Greece</option>
                                <option value="GL">Greenland</option>
                                <option value="GD">Grenada</option>
                                <option value="GP">Guadeloupe</option>
                                <option value="GU">Guam</option>
                                <option value="GT">Guatemala</option>
                                <option value="GG">Guernsey</option>
                                <option value="GN">Guinea</option>
                                <option value="GW">Guinea-Bissau</option>
                                <option value="GY">Guyana</option>
                                <option value="HT">Haiti</option>
                                <option value="HM">
                                  Heard Island and McDonald Islands
                                </option>
                                <option value="HN">Honduras</option>
                                <option value="HK">Hong Kong SAR China</option>
                                <option value="HU">Hungary</option>
                                <option value="IS">Iceland</option>
                                <option value="IN">India</option>
                                <option value="ID">Indonesia</option>
                                <option value="IR">Iran</option>
                                <option value="IQ">Iraq</option>
                                <option value="IE">Ireland</option>
                                <option value="IL">Israel</option>
                                <option value="IT">Italy</option>
                                <option value="JM">Jamaica</option>
                                <option value="JP">Japan</option>
                                <option value="JT">Johnston Island</option>
                                <option value="JO">Jordan</option>
                                <option value="KZ">Kazakhstan</option>
                                <option value="KE">Kenya</option>
                                <option value="KI">Kiribati</option>
                                <option value="KW">Kuwait</option>
                                <option value="KG">Kyrgyzstan</option>
                                <option value="LA">Laos</option>
                                <option value="LV">Latvia</option>
                                <option value="LB">Lebanon</option>
                                <option value="LS">Lesotho</option>
                                <option value="LR">Liberia</option>
                                <option value="LY">Libya</option>
                                <option value="LI">Liechtenstein</option>
                                <option value="LT">Lithuania</option>
                                <option value="LU">Luxembourg</option>
                                <option value="MO">Macau SAR China</option>
                                <option value="MK">Macedonia</option>
                                <option value="MG">Madagascar</option>
                                <option value="MW">Malawi</option>
                                <option value="MY">Malaysia</option>
                                <option value="MV">Maldives</option>
                                <option value="ML">Mali</option>
                                <option value="MT">Malta</option>
                                <option value="MH">Marshall Islands</option>
                                <option value="MQ">Martinique</option>
                                <option value="MR">Mauritania</option>
                                <option value="MU">Mauritius</option>
                                <option value="YT">Mayotte</option>
                                <option value="MX">Mexico</option>
                                <option value="FM">Micronesia</option>
                                <option value="MI">Midway Islands</option>
                                <option value="MD">Moldova</option>
                                <option value="MC">Monaco</option>
                                <option value="MN">Mongolia</option>
                                <option value="ME">Montenegro</option>
                                <option value="MS">Montserrat</option>
                                <option value="MA">Morocco</option>
                                <option value="MZ">Mozambique</option>
                                <option value="MM">Myanmar [Burma]</option>
                                <option value="NA">Namibia</option>
                                <option value="NR">Nauru</option>
                                <option value="NP">Nepal</option>
                                <option value="NL">Netherlands</option>
                                <option value="AN">Netherlands Antilles</option>
                                <option value="NC">New Caledonia</option>
                                <option value="NZ">New Zealand</option>
                                <option value="NI">Nicaragua</option>
                                <option value="NE">Niger</option>
                                <option value="NG">Nigeria</option>
                                <option value="NU">Niue</option>
                                <option value="NF">Norfolk Island</option>
                                <option value="KP">North Korea</option>
                                <option value="MP">
                                  Northern Mariana Islands
                                </option>
                                <option value="NO">Norway</option>
                                <option value="OM">Oman</option>
                                <option value="PK">Pakistan</option>
                                <option value="PW">Palau</option>
                                <option value="PS">
                                  Palestinian Territories
                                </option>
                                <option value="PA">Panama</option>
                                <option value="PG">Papua New Guinea</option>
                                <option value="PY">Paraguay</option>
                                <option value="PE">Peru</option>
                                <option value="PH">Philippines</option>
                                <option value="PN">Pitcairn Islands</option>
                                <option value="PL">Poland</option>
                                <option value="PT">Portugal</option>
                                <option value="PR">Puerto Rico</option>
                                <option value="QA">Qatar</option>
                                <option value="RO">Romania</option>
                                <option value="RU">Russia</option>
                                <option value="RW">Rwanda</option>
                                <option value="RE">Réunion</option>
                                <option value="BL">Saint Barthélemy</option>
                                <option value="SH">Saint Helena</option>
                                <option value="KN">
                                  Saint Kitts and Nevis
                                </option>
                                <option value="LC">Saint Lucia</option>
                                <option value="MF">Saint Martin</option>
                                <option value="PM">
                                  Saint Pierre and Miquelon
                                </option>
                                <option value="VC">
                                  Saint Vincent and the Grenadines
                                </option>
                                <option value="WS">Samoa</option>
                                <option value="SM">San Marino</option>
                                <option value="SA">Saudi Arabia</option>
                                <option value="SN">Senegal</option>
                                <option value="RS">Serbia</option>
                                <option value="SC">Seychelles</option>
                                <option value="SL">Sierra Leone</option>
                                <option value="SG">Singapore</option>
                                <option value="SK">Slovakia</option>
                                <option value="SI">Slovenia</option>
                                <option value="SB">Solomon Islands</option>
                                <option value="SO">Somalia</option>
                                <option value="ZA">South Africa</option>
                                <option value="GS">
                                  South Georgia and the South Sandwich Islands
                                </option>
                                <option value="KR">South Korea</option>
                                <option value="ES">Spain</option>
                                <option value="LK">Sri Lanka</option>
                                <option value="SD">Sudan</option>
                                <option value="SR">Suriname</option>
                                <option value="SJ">
                                  Svalbard and Jan Mayen
                                </option>
                                <option value="SZ">Swaziland</option>
                                <option value="SE">Sweden</option>
                                <option value="CH">Switzerland</option>
                                <option value="SY">Syria</option>
                                <option value="ST">
                                  São Tomé and Príncipe
                                </option>
                                <option value="TW">Taiwan</option>
                                <option value="TJ">Tajikistan</option>
                                <option value="TZ">Tanzania</option>
                                <option value="TH">Thailand</option>
                                <option value="TL">Timor-Leste</option>
                                <option value="TG">Togo</option>
                                <option value="TK">Tokelau</option>
                                <option value="TO">Tonga</option>
                                <option value="TT">Trinidad and Tobago</option>
                                <option value="TN">Tunisia</option>
                                <option value="TR">Turkey</option>
                                <option value="TM">Turkmenistan</option>
                                <option value="TC">
                                  Turks and Caicos Islands
                                </option>
                                <option value="TV">Tuvalu</option>
                                <option value="UM">
                                  U.S. Minor Outlying Islands
                                </option>
                                <option value="VI">U.S. Virgin Islands</option>
                                <option value="UG">Uganda</option>
                                <option value="UA">Ukraine</option>
                                <option value="AE">United Arab Emirates</option>
                                <option value="GB">United Kingdom</option>
                                <option value="US">United States</option>
                                <option value="UY">Uruguay</option>
                                <option value="UZ">Uzbekistan</option>
                                <option value="VU">Vanuatu</option>
                                <option value="VA">Vatican City</option>
                                <option value="VE">Venezuela</option>
                                <option value="VN">Vietnam</option>
                                <option value="WK">Wake Island</option>
                                <option value="WF">Wallis and Futuna</option>
                                <option value="EH">Western Sahara</option>
                                <option value="YE">Yemen</option>
                                <option value="ZM">Zambia</option>
                                <option value="ZW">Zimbabwe</option>
                                <option value="AX">Åland Islands</option>
                              </select>
                            </div>
                          </div>

                          <div class="element textarea message-21">
                            <div class="input no_label">
                              <textarea
                                id="message-21"
                                name="message-21"
                                placeholder="Message*"
                                class="ccm-input-textarea"
                              ></textarea>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="formidable_row captcha">
                  <div class="inner">
                    <div class="element">
                      <div class="label">
                        <label for="ccmCaptchaCode" class="control-label"
                          >Captcha</label
                        >
                        <span class="no_counter">*</span>
                      </div>
                      <div class="input ccm_formidable_captcha">
                        <div class="captcha_image">
                          <div class="g-recaptcha"></div>
                        </div>
                        <div class="captcha_input"></div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="formidable_row action-bar">
                  <div class="inner">
                    <div class="element">
                      <div id="ff_buttons3" class="buttons">
                        <input
                          type="submit"
                          class="btn ccm-input-submit submit primary"
                          id="submit"
                          name="submit"
                          value="Submit"
                        />
                        <div class="please_wait_loader"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </form>
              <script>
                var ccmFormidableAddressStatesTextList =
                  "US:AL:Alabama|US:AK:Alaska|US:AZ:Arizona|US:AR:Arkansas|US:CA:California|US:CO:Colorado|US:CT:Connecticut|US:DE:Delaware|US:FL:Florida|US:GA:Georgia|US:HI:Hawaii|US:ID:Idaho|US:IL:Illinois|US:IN:Indiana|US:IA:Iowa|US:KS:Kansas|US:KY:Kentucky|US:LA:Louisiana|US:ME:Maine|US:MD:Maryland|US:MA:Massachusetts|US:MI:Michigan|US:MN:Minnesota|US:MS:Mississippi|US:MO:Missouri|US:MT:Montana|US:NE:Nebraska|US:NV:Nevada|US:NH:New Hampshire|US:NJ:New Jersey|US:NM:New Mexico|US:NY:New York|US:NC:North Carolina|US:ND:North Dakota|US:OH:Ohio|US:OK:Oklahoma|US:OR:Oregon|US:PA:Pennsylvania|US:RI:Rhode Island|US:SC:South Carolina|US:SD:South Dakota|US:TN:Tennessee|US:TX:Texas|US:UT:Utah|US:VT:Vermont|US:VA:Virginia|US:WA:Washington|US:DC:Washington, DC|US:WV:West Virginia|US:WI:Wisconsin|US:WY:Wyoming|CA:AB:Alberta|CA:BC:British Columbia|CA:MB:Manitoba|CA:NB:New Brunswick|CA:NL:Newfoundland and Labrador|CA:NT:Northwest Territories|CA:NS:Nova Scotia|CA:NU:Nunavut|CA:ON:Ontario|CA:PE:Prince Edward Island|CA:QC:Quebec|CA:SK:Saskatchewan|CA:YT:Yukon|AU:AAT:Australian Antarctic Territory|AU:ACT:Australian Capital Territory|AU:NSW:New South Wales|AU:NT:Northern Territory|AU:QLD:Queensland|AU:SA:South Australia|AU:TAS:Tasmania|AU:VIC:Victoria|AU:WA:Western Australia|DE:BW:Baden-Württemberg|DE:BY:Bayern|DE:BE:Berlin|DE:BB:Brandenburg|DE:HB:Bremen|DE:HH:Hamburg|DE:HE:Hessen|DE:MV:Mecklenburg-Vorpommern|DE:NI:Niedersachsen|DE:NW:Nordrhein-Westfalen|DE:RP:Rheinland-Pfalz|DE:SL:Saarland|DE:SN:Sachsen|DE:ST:Sachsen-Anhalt|DE:SH:Schleswig-Holstein|DE:TH:Thüringen|FR:01:Ain|FR:02:Aisne|FR:03:Allier|FR:06:Alpes-Maritimes|FR:04:Alpes-de-Haute-Provence|FR:08:Ardennes|FR:07:Ardèche|FR:09:Ariège|FR:10:Aube|FR:11:Aude|FR:12:Aveyron|FR:67:Bas-Rhin|FR:13:Bouches-du-Rhône|FR:14:Calvados|FR:15:Cantal|FR:16:Charente|FR:17:Charente-Maritime|FR:18:Cher|FR:19:Corrèze|FR:2A:Corse-du-Sud|FR:23:Creuse|FR:22:Côte-d'Armor|FR:21:Côte-d'Or|FR:79:Deux-Sèvres|FR:24:Dordogne|FR:25:Doubs|FR:26:Drôme|FR:91:Essonne|FR:27:Eure|FR:28:Eure-et-Loir|FR:29:Finistère|FR:30:Gard|FR:32:Gers|FR:33:Gironde|FR:68:Haut-Rhin|FR:05:Haute-Alpes|FR:2B:Haute-Corse|FR:31:Haute-Garonne|FR:43:Haute-Loire|FR:52:Haute-Marne|FR:74:Haute-Savoie|FR:70:Haute-Saône|FR:87:Haute-Vienne|FR:65:Hautes-Pyrénées|FR:92:Hauts-de-Seine|FR:34:Hérault|FR:35:Ille-et-Vilaine|FR:36:Indre|FR:37:Indre-et-Loire|FR:38:Isère|FR:39:Jura|FR:40:Landes|FR:41:Loir-et-Cher|FR:42:Loire|FR:44:Loire-Atlantique|FR:45:Loiret|FR:46:Lot|FR:47:Lot-et-Garonne|FR:48:Lozère|FR:49:Maine-et-Loire|FR:50:Manche|FR:51:Marne|FR:53:Mayenne|FR:54:Meurthe-et-Moselle|FR:55:Meuse|FR:56:Morbihan|FR:57:Moselle|FR:58:Nièvre|FR:59:Nord|FR:60:Oise|FR:61:Orne|FR:75:Paris|FR:62:Pas-de-Calais|FR:63:Puy-de-Dôme|FR:64:Pyrénées-Atlantiques|FR:66:Pyrénées-Orientales|FR:69:Rhône|FR:72:Sarthe|FR:73:Savoie|FR:71:Saône-et-Loire|FR:76:Seine-Maritime|FR:93:Seine-Saint-Denis|FR:77:Seine-et-Marne|FR:80:Somme|FR:81:Tarn|FR:82:Tarn-et-Garonne|FR:90:Territoire de Belfort|FR:95:Val-d'Oise|FR:94:Val-de-Marne|FR:83:Var|FR:84:Vaucluse|FR:85:Vendée|FR:86:Vienne|FR:88:Vosges|FR:89:Yonne|FR:78:Yvelines|UK:ARBERD:Aberdeenshire|UK:ANGLES:Anglesey|UK:ANGUS:Angus|UK:ARGYLL:Argyllshire|UK:AYRSH:Ayrshire|UK:BANFF:Banffshire|UK:BEDS:Bedfordshire|UK:BERKS:Berkshire|UK:BERWICK:Berwickshire|UK:BRECK:Brecknockshire|UK:BUCKS:Buckinghamshire|UK:BUTE:Buteshire|UK:CAERN:Caernarfonshire|UK:CAITH:Caithness|UK:CAMBS:Cambridgeshire|UK:CARDIG:Cardiganshire|UK:CARMA:Carmathenshire|UK:CHESH:Cheshire|UK:CLACKM:Clackmannanshire|UK:CORN:Cornwall|UK:CROMART:Cromartyshire|UK:CUMB:Cumberland|UK:DENBIG:Denbighshire|UK:DERBY:Derbyshire|UK:DEVON:Devon|UK:DORSET:Dorset|UK:DUMFR:Dumfriesshire|UK:DUNBART:Dunbartonshire|UK:DURHAM:Durham|UK:EASTL:East Lothian|UK:ESSEX:Essex|UK:FIFE:Fife|UK:FLINTS:Flintshire|UK:GLAMO:Glamorgan|UK:GLOUS:Gloucestershire|UK:HANTS:Hampshire|UK:HEREF:Herefordshire|UK:HERTS:Hertfordshire|UK:HUNTS:Huntingdonshire|UK:INVERN:Inverness-shire|UK:KENT:Kent|UK:KINCARD:Kincardineshire|UK:KINROSS:Kinross-shire|UK:KIRKCUD:Kircudbrightshire|UK:LANARK:Lanarkshire|UK:LANCS:Lancashire|UK:LEICS:Leicestershire|UK:LINCS:Lincolnshire|UK:LONDON:London|UK:MERION:Merioneth|UK:MERSEYSIDE:Merseyside|UK:MIDDLE:Middlesex|UK:MIDLOTH:Midlothian|UK:MONTG:Mongtomeryshire|UK:MONMOUTH:Monmouthshire|UK:MORAY:Morayshire|UK:NAIRN:Nairnshire|UK:NORF:Norfolk|UK:NHANTS:Northamptonshire|UK:NTHUMB:Northumberland|UK:NOTTS:Nottinghamshire|UK:ORKNEY:Orkeny|UK:OXON:Oxfordshire|UK:PEEBLESS:Peeblesshire|UK:PEMBR:Pembrokeshire|UK:PERTH:Perthshire|UK:RADNOR:Radnorshire|UK:RENFREW:Renfrewshire|UK:ROSSSH:Ross-shire|UK:ROXBURGH:Roxburghshire|UK:RUTL:Rutland|UK:SELKIRK:Selkirkshire|UK:SHETLAND:Shetland|UK:SHROPS:Shropshire|UK:SOM:Somerset|UK:STAFFS:Staffordshire|UK:STIRLING:Stirlingshire|UK:SUFF:Suffolk|UK:SURREY:Surrey|UK:SUSS:Sussex|UK:SUTHER:Sutherland|UK:WARKS:Warwickshire|UK:WESTL:West Lothian|UK:WESTMOR:Westmorland|UK:WIGTOWN:Wigtownshire|UK:WILTS:Wiltshire|UK:WORCES:Worcestershire|UK:YORK:Yorkshire|IE:CO ANTRIM:County Antrim|IE:CO ARMAGH:County Armagh|IE:CO CARLOW:County Carlow|IE:CO CAVAN:County Cavan|IE:CO CLARE:County Clare|IE:CO CORK:County Cork|IE:CO DONEGAL:County Donegal|IE:CO DOWN:County Down|IE:CO DUBLIN:County Dublin|IE:CO FERMANAGH:County Fermanagh|IE:CO GALWAY:County Galway|IE:CO KERRY:County Kerry|IE:CO KILDARE:County Kildare|IE:CO KILKENNY:County Kilkenny|IE:CO LAOIS:County Laois|IE:CO LEITRIM:County Leitrim|IE:CO LIMERICK:County Limerick|IE:CO DERRY:County Londonderry|IE:CO LONGFORD:County Longford|IE:CO LOUTH:County Louth|IE:CO MAYO:County Mayo|IE:CO MEATH:County Meath|IE:CO MONAGHAN:County Monaghan|IE:CO OFFALY:County Offaly|IE:CO ROSCOMMON:County Roscommon|IE:CO SLIGO:County Sligo|IE:CO TIPPERARY:County Tipperary|IE:CO TYRONE:County Tyrone|IE:CO WATERFORD:County Waterford|IE:CO WESTMEATH:County Westmeath|IE:CO WEXFORD:County Wexford|IE:CO WICKLOW:County Wicklow|NL:DR:Drenthe|NL:FL:Flevoland|NL:FR:Friesland|NL:GL:Gelderland|NL:GR:Groningen|NL:LB:Limburg|NL:NB:Noord Brabant|NL:NH:Noord Holland|NL:OV:Overijssel|NL:UT:Utrecht|NL:ZL:Zeeland|NL:ZH:Zuid Holland|BR:AC:Acre|BR:AL:Alagoas|BR:AP:Amapa|BR:AM:Amazonas|BR:BA:Baia|BR:CE:Ceara|BR:DF:Distrito Federal|BR:ES:Espirito Santo|BR:FN:Fernando de Noronha|BR:GO:Goias|BR:MA:Maranhao|BR:MT:Mato Grosso|BR:MS:Mato Grosso do Sul|BR:MG:Minas Gerais|BR:PA:Para|BR:PB:Paraiba|BR:PR:Parana|BR:PE:Pernambuco|BR:PI:Piaui|BR:RN:Rio Grande do Norte|BR:RS:Rio Grande do Sul|BR:RJ:Rio de Janeiro|BR:RO:Rondonia|BR:RR:Roraima|BR:SC:Santa Catarina|BR:SP:Sao Paulo|BR:SE:Sergipe|BR:TO:Tocantins|IT:AG:Agrigento|IT:AL:Alessandria|IT:AN:Ancona|IT:AO:Aosta|IT:AR:Arezzo|IT:AP:Ascoli Piceno|IT:AT:Asti|IT:AV:Avellino|IT:BA:Bari|IT:BT:Barletta-Andria-Trani|IT:BL:Belluno|IT:BN:Benevento|IT:BG:Bergamo|IT:BI:Biella|IT:BO:Bologna|IT:BZ:Bolzano|IT:BS:Brescia|IT:BR:Brindisi|IT:CA:Cagliari|IT:CL:Caltanissetta|IT:CB:Campobasso|IT:CI:Carbonia-Iglesias|IT:CE:Caserta|IT:CT:Catania|IT:CZ:Catanzaro|IT:CH:Chieti|IT:CO:Como|IT:CS:Cosenza|IT:CR:Cremona|IT:KR:Crotone|IT:CN:Cuneo|IT:EN:Enna|IT:FM:Fermo|IT:FE:Ferrara|IT:FI:Firenze|IT:FG:Foggia|IT:FC:Forlì-Cesena|IT:FR:Frosinone|IT:GE:Genova|IT:GO:Gorizia|IT:GR:Grosseto|IT:IM:Imperia|IT:IS:Isernia|IT:SP:La Spezia|IT:LT:Latina|IT:LE:Lecce|IT:LC:Lecco|IT:LI:Livorno|IT:LO:Lodi|IT:LU:Lucca|IT:AQ:L’Aquila|IT:MC:Macerata|IT:MN:Mantova|IT:MS:Massa e Carrara|IT:MT:Matera|IT:VS:Medio Campidano|IT:ME:Messina|IT:MI:Milano|IT:MO:Modena|IT:MB:Monza e Brianza|IT:NA:Napoli|IT:NO:Novara|IT:NU:Nuoro|IT:OG:Ogliastra|IT:OT:Olbia-Tempio|IT:OR:Oristano|IT:PD:Padova|IT:PA:Palermo|IT:PR:Parma|IT:PV:Pavia|IT:PG:Perugia|IT:PU:Pesaro e Urbino|IT:PE:Pescara|IT:PC:Piacenza|IT:PI:Pisa|IT:PT:Pistoia|IT:PN:Pordenone|IT:PZ:Potenza|IT:PO:Prato|IT:RG:Ragusa|IT:RA:Ravenna|IT:RC:Reggio Calabria|IT:RE:Reggio Emilia|IT:RI:Rieti|IT:RN:Rimini|IT:RM:Roma|IT:RO:Rovigo|IT:SA:Salerno|IT:SS:Sassari|IT:SV:Savona|IT:SI:Siena|IT:SR:Siracusa|IT:SO:Sondrio|IT:TA:Taranto|IT:TE:Teramo|IT:TR:Terni|IT:TO:Torino|IT:TP:Trapani|IT:TN:Trento|IT:TV:Treviso|IT:TS:Trieste|IT:UD:Udine|IT:VA:Varese|IT:VE:Venezia|IT:VB:Verbano-Cusio-Ossola|IT:VC:Vercelli|IT:VR:Verona|IT:VV:Vibo Valentia|IT:VI:Vicenza|IT:VT:Viterbo|JP:01:北海道|JP:02:青森県|JP:03:岩手県|JP:04:宮城県|JP:05:秋田県|JP:06:山形県|JP:07:福島県|JP:08:茨城県|JP:09:栃木県|JP:10:群馬県|JP:11:埼玉県|JP:12:千葉県|JP:13:東京都|JP:14:神奈川県|JP:15:新潟県|JP:16:富山県|JP:17:石川県|JP:18:福井県|JP:19:山梨県|JP:20:長野県|JP:21:岐阜県|JP:22:静岡県|JP:23:愛知県|JP:24:三重県|JP:25:滋賀県|JP:26:京都府|JP:27:大阪府|JP:28:兵庫県|JP:29:奈良県|JP:30:和歌山県|JP:31:鳥取県|JP:32:島根県|JP:33:岡山県|JP:34:広島県|JP:35:山口県|JP:36:徳島県|JP:37:香川県|JP:38:愛媛県|JP:39:高知県|JP:40:福岡県|JP:41:佐賀県|JP:42:長崎県|JP:43:熊本県|JP:44:大分県|JP:45:宮崎県|JP:46:鹿児島県|JP:47:沖縄県|GB:ARBERD:Aberdeenshire|GB:ANGLES:Anglesey|GB:ANGUS:Angus|GB:ARGYLL:Argyllshire|GB:AYRSH:Ayrshire|GB:BANFF:Banffshire|GB:BEDS:Bedfordshire|GB:BERKS:Berkshire|GB:BERWICK:Berwickshire|GB:BRECK:Brecknockshire|GB:BUCKS:Buckinghamshire|GB:BUTE:Buteshire|GB:CAERN:Caernarfonshire|GB:CAITH:Caithness|GB:CAMBS:Cambridgeshire|GB:CARDIG:Cardiganshire|GB:CARMA:Carmathenshire|GB:CHESH:Cheshire|GB:CLACKM:Clackmannanshire|GB:CORN:Cornwall|GB:CROMART:Cromartyshire|GB:CUMB:Cumberland|GB:DENBIG:Denbighshire|GB:DERBY:Derbyshire|GB:DEVON:Devon|GB:DORSET:Dorset|GB:DUMFR:Dumfriesshire|GB:DUNBART:Dunbartonshire|GB:DURHAM:Durham|GB:EASTL:East Lothian|GB:ESSEX:Essex|GB:FIFE:Fife|GB:FLINTS:Flintshire|GB:GLAMO:Glamorgan|GB:GLOUS:Gloucestershire|GB:HANTS:Hampshire|GB:HEREF:Herefordshire|GB:HERTS:Hertfordshire|GB:HUNTS:Huntingdonshire|GB:INVERN:Inverness-shire|GB:KENT:Kent|GB:KINCARD:Kincardineshire|GB:KINROSS:Kinross-shire|GB:KIRKCUD:Kircudbrightshire|GB:LANARK:Lanarkshire|GB:LANCS:Lancashire|GB:LEICS:Leicestershire|GB:LINCS:Lincolnshire|GB:LONDON:London|GB:MERION:Merioneth|GB:MERSEYSIDE:Merseyside|GB:MIDDLE:Middlesex|GB:MIDLOTH:Midlothian|GB:MONTG:Mongtomeryshire|GB:MONMOUTH:Monmouthshire|GB:MORAY:Morayshire|GB:NAIRN:Nairnshire|GB:NORF:Norfolk|GB:NHANTS:Northamptonshire|GB:NTHUMB:Northumberland|GB:NOTTS:Nottinghamshire|GB:ORKNEY:Orkeny|GB:OXON:Oxfordshire|GB:PEEBLESS:Peeblesshire|GB:PEMBR:Pembrokeshire|GB:PERTH:Perthshire|GB:RADNOR:Radnorshire|GB:RENFREW:Renfrewshire|GB:ROSSSH:Ross-shire|GB:ROXBURGH:Roxburghshire|GB:RUTL:Rutland|GB:SELKIRK:Selkirkshire|GB:SHETLAND:Shetland|GB:SHROPS:Shropshire|GB:SOM:Somerset|GB:STAFFS:Staffordshire|GB:STIRLING:Stirlingshire|GB:SUFF:Suffolk|GB:SURREY:Surrey|GB:SUSS:Sussex|GB:SUTHER:Sutherland|GB:WARKS:Warwickshire|GB:WESTL:West Lothian|GB:WESTMOR:Westmorland|GB:WIGTOWN:Wigtownshire|GB:WILTS:Wiltshire|GB:WORCES:Worcestershire|GB:YORK:Yorkshire|";

                $(function () {
                  if (
                    typeof ccmFormidableAddressSetupStateProvinceSelector ==
                    "function"
                  ) {
                    ccmFormidableAddressSetupStateProvinceSelector(
                      "country-22"
                    );
                  }
                });
              </script>
            </div>
          </div>
        </div>
</div>

<div id="productModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
          <div class="modal-body make-enquery-wrap">
            <h4 style="text-align: center">Product Enquiry</h4>
            <div id="formidable_container_5" class="formidable">
              <form
                id="ff_5"
                name="formidable_form"
                method="post"
                enctype="multipart/form-data"
                class=""
              >
                <input type="hidden" name="formID" id="formID5" value="5" />
                <input type="hidden" name="cID" id="cID5" value="226" />
                <input type="hidden" name="bID" id="bID5" value="1918" />
                <input
                  type="hidden"
                  name="resolution"
                  id="resolution5"
                  value=""
                />
                <input
                  type="hidden"
                  name="ccm_token"
                  id="ccm_token5"
                  value="1696501043:3fcdf0fc875607097263177ce10c51bb"
                />
                <div class="formidable_row">
                  <div class="inner">
                    <div class="formidable_column last w100">
                      <div class="inner">
                        <div>
                          <div class="element text name-42">
                            <div class="input no_label">
                              <input
                                id="name-42"
                                type="text"
                                name="name-42"
                                value=""
                                placeholder="Name*"
                                class="ccm-input-text"
                              />
                            </div>
                          </div>

                          <div class="element emailaddress email-43">
                            <div class="input no_label">
                              <input
                                id="email-43"
                                type="email"
                                name="email-43"
                                value=""
                                placeholder="Email*"
                                class="ccm-input-email"
                              />
                            </div>
                          </div>

                          <div class="element text company-44">
                            <div class="input no_label">
                              <input
                                id="company-44"
                                type="text"
                                name="company-44"
                                value=""
                                placeholder="Company*"
                                class="ccm-input-text"
                              />
                            </div>
                          </div>

                          <div class="element phone phone-45">
                            <div class="input no_label">
                              <input
                                id="phone-45"
                                type="tel"
                                name="phone-45"
                                value=""
                                placeholder="Phone*"
                                class="ccm-input-tel"
                              />
                            </div>
                          </div>

                          <div class="element textarea message-48">
                            <div class="input no_label">
                              <textarea
                                id="message-48"
                                name="message-48"
                                placeholder="Message*"
                                class="ccm-input-textarea"
                              ></textarea>
                            </div>
                          </div>

                          <div class="element hidden product-name-49">
                            <div class="label">
                              <label for="product-name-49" class="control-label"
                                >Product Name</label
                              >
                            </div>
                            <div class="input has_label">
                              <input
                                type="hidden"
                                name="product-name-49"
                                id="product-name-49"
                                value=""
                                class="ccm-input-hidden"
                              />
                            </div>
                          </div>

                          <div class="element hidden product-url-50">
                            <div class="label">
                              <label for="product-url-50" class="control-label"
                                >Product Url</label
                              >
                            </div>
                            <div class="input has_label">
                              <input
                                type="hidden"
                                name="product-url-50"
                                id="product-url-50"
                                value=""
                                class="ccm-input-hidden"
                              />
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="formidable_row captcha">
                  <div class="inner">
                    <div class="element">
                      <div class="label">
                        <label for="ccmCaptchaCode" class="control-label"
                          >Captcha</label
                        >
                        <span class="no_counter">*</span>
                      </div>
                      <div class="input ccm_formidable_captcha">
                        <div class="captcha_image">
                          <div class="g-recaptcha"></div>
                        </div>
                        <div class="captcha_input"></div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="formidable_row action-bar">
                  <div class="inner">
                    <div class="element">
                      <div id="ff_buttons5" class="buttons">
                        <input
                          type="submit"
                          class="btn ccm-input-submit submit primary"
                          id="submit"
                          name="submit"
                          value="Submit"
                        />
                        <div class="please_wait_loader"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <div class="pop-close" data-dismiss="modal">
            <span></span>
          </div>
        </div>
</div>

<div class="sub-navhead">
        <div class="container">
          <ul class="nav desktopver list-inline">
            <li class="">
              <a href="../../index.php/about.html" target="_self" class=""
                >Overview</a
              >
            </li>
            <li class="nav-selected nav-path-selected">
              <a
                href="index.html"
                target="_self"
                class="nav-selected nav-path-selected"
                >Easa Saleh Al Gurg Group</a
              >
            </li>
            <li class="">
              <a
                href="../empowering-tomorrow/index.html"
                target="_self"
                class=""
                >QHSE policy</a
              >
            </li>
            <li class="">
              <a href="../brands/index.html" target="_self" class="">Brands</a>
            </li>
            <li class="">
              <a href="../clients/index.html" target="_self" class=""
                >Clients</a
              >
            </li>
            <li class="">
              <a href="../quality-key/index.html" target="_self" class=""
                >Work Environment</a
              >
            </li>
          </ul>
        </div>
</div>

<div class="introduction-content">
      <div class="container">
            <div class="col-sm-12">
                  <div class="center dynamite">
                        <?php
                        $title = get_field('title');
                        if ($title):
                              echo '<h2>' . $title . '</h2>';
                        endif;
                        ?>
                  </div>
                  <div class="columns-row row">
                        <?php
                        if (have_rows('description')):
                              while (have_rows('description')):
                                    the_row();
                                    $descript = get_sub_field('descript');
                                    ?>

                                                      <?php if ($descript):
                                                            echo '<div class="col-md-6">
                                                ' . $descript . '
                                          </div>'; endif; ?>
                                    <?php
                              endwhile;
                        endif;
                        ?>
                  </div>
            </div>
      </div>
</div>

<section>
      <div class="container">
            <div class="gurg-group">
                  <?php
                        if(have_rows('icons')):
                              while(have_rows('icons')):the_row();
                                    $icons_rep_img = get_sub_field('icons_rep');
                                    $icons_rep = $icons_rep_img['url'];
                                    $text = get_sub_field('text');
                  ?>
                                    <div class="col-md-4">
                                          <div class="gruop-wrap">
                                                <?php if($icons_rep): echo'<div class="icon-group">
                                                      <img src="'.$icons_rep.'" width="219"height="226"alt="'.$icons_rep_img['alt'].'"/>
                                                </div>'; endif;?>
                                                <?php if($text): echo'<div class="group-description">'.$text.'</div>'; endif;?>
                                          </div>
                                    </div>
                  <?php
                              endwhile;
                        endif;
                  ?>
            </div>
      </div>
</section>

<section>
      <div class="container">
            <div class="group-slide">
                  <ul class="video-image-content">
                        <?php
                              if(have_rows('gallery')):
                                    while(have_rows('gallery')):the_row();
                                          $type = get_sub_field('type');
                                          $image = get_sub_field('image');
                                          $image_you = get_sub_field('image_you');
                                          $you_tube_link = get_sub_field('you_tube_link');
                        ?>
                        <?php
                                          if($type == 'image'){
                        ?>
                                                <?php if($image): echo'<li class="video-image-item">
                                                      <a href="'.$image.'" style="background-image: url('.$image.');"class="fancybox-img">
                                                            <div class="filter"></div>
                                                      </a>
                                                </li>'; endif;?>
                        <?php
                                          }elseif($type == 'youtube'){
                        ?>
                                                <?php if($image_you): echo'<li class="video-image-item">
                                                      <a href="'.$image_you.'" style="background-image: url('.$image_you.');"class="fancybox-img">
                                                            <div class="filter"></div>
                                                      </a>
                                                      <div class="ply-btn-wrap">
                                                            <div class="play-btn-cont">
                                                                  <a class="video-block-item fancybox-media" href="'.$you_tube_link.'"></a>
                                                            </div>
                                                      </div>
                                                </li>'; endif;?>
                        <?php
                                          }
                        ?>
                        <?php
                                    endwhile;
                              endif;
                        ?>
                  </ul>
            </div>
            <p style="text-align: center">
                  <br />
                  <?php 
                        $load_more = get_field('load_more');
                        if( $load_more ): 
                              $load_more_url = $load_more['url'];
                              $load_more_title = $load_more['title'];
                              $load_more_target = $load_more['target'] ? $load_more['target'] : '_self';
                  ?>
                        <a class="learn-more" href="<?php echo esc_url( $load_more_url ); ?>" target="<?php echo esc_attr( $load_more_target ); ?>"><?php echo esc_html( $load_more_title ); ?></a>
                  <?php endif; ?>
            </p>
      </div>
</section>

<?php
      if( get_field('hide__show') ) {
            seealso();
      }
?>

<?php get_footer(); ?>