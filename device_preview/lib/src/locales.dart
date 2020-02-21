import 'dart:collection';
import 'dart:ui';

class NamedLocale {
  final String code;
  final String name;
  const NamedLocale(this.code, this.name);

  Locale get locale {
    final splits = code.split('_');

    final languageCode = splits.first;
    String countryCode, scriptCode;
    if (splits.length > 2) {
      scriptCode = splits[1];
      countryCode = splits[1];
    } else if (splits.length > 1) {
      countryCode = splits[1];
    }

    return Locale.fromSubtags(
      countryCode: countryCode,
      languageCode: languageCode,
      scriptCode: scriptCode,
    );
  }

  @override
  String toString() => name;
}

const defaultAvailableLocales = <NamedLocale>[
  NamedLocale('af', 'Afrikaans'),
  NamedLocale('af_NA', 'Afrikaans (Namibia)'),
  NamedLocale('af_ZA', 'Afrikaans (South Africa)'),
  NamedLocale('ak', 'Akan'),
  NamedLocale('ak_GH', 'Akan (Ghana)'),
  NamedLocale('sq', 'Albanian'),
  NamedLocale('sq_AL', 'Albanian (Albania)'),
  NamedLocale('sq_XK', 'Albanian (Kosovo)'),
  NamedLocale('sq_MK', 'Albanian (Macedonia)'),
  NamedLocale('am', 'Amharic'),
  NamedLocale('am_ET', 'Amharic (Ethiopia)'),
  NamedLocale('ar', 'Arabic'),
  NamedLocale('ar_DZ', 'Arabic (Algeria)'),
  NamedLocale('ar_BH', 'Arabic (Bahrain)'),
  NamedLocale('ar_TD', 'Arabic (Chad)'),
  NamedLocale('ar_KM', 'Arabic (Comoros)'),
  NamedLocale('ar_DJ', 'Arabic (Djibouti)'),
  NamedLocale('ar_EG', 'Arabic (Egypt)'),
  NamedLocale('ar_ER', 'Arabic (Eritrea)'),
  NamedLocale('ar_IQ', 'Arabic (Iraq)'),
  NamedLocale('ar_IL', 'Arabic (Israel)'),
  NamedLocale('ar_JO', 'Arabic (Jordan)'),
  NamedLocale('ar_KW', 'Arabic (Kuwait)'),
  NamedLocale('ar_LB', 'Arabic (Lebanon)'),
  NamedLocale('ar_LY', 'Arabic (Libya)'),
  NamedLocale('ar_MR', 'Arabic (Mauritania)'),
  NamedLocale('ar_MA', 'Arabic (Morocco)'),
  NamedLocale('ar_OM', 'Arabic (Oman)'),
  NamedLocale('ar_PS', 'Arabic (Palestinian Territories)'),
  NamedLocale('ar_QA', 'Arabic (Qatar)'),
  NamedLocale('ar_SA', 'Arabic (Saudi Arabia)'),
  NamedLocale('ar_SO', 'Arabic (Somalia)'),
  NamedLocale('ar_SS', 'Arabic (South Sudan)'),
  NamedLocale('ar_SD', 'Arabic (Sudan)'),
  NamedLocale('ar_SY', 'Arabic (Syria)'),
  NamedLocale('ar_TN', 'Arabic (Tunisia)'),
  NamedLocale('ar_AE', 'Arabic (United Arab Emirates)'),
  NamedLocale('ar_EH', 'Arabic (Western Sahara)'),
  NamedLocale('ar_YE', 'Arabic (Yemen)'),
  NamedLocale('hy', 'Armenian'),
  NamedLocale('hy_AM', 'Armenian (Armenia)'),
  NamedLocale('as', 'Assamese'),
  NamedLocale('as_IN', 'Assamese (India)'),
  NamedLocale('az', 'Azerbaijani'),
  NamedLocale('az_AZ', 'Azerbaijani (Azerbaijan)'),
  NamedLocale('az_Cyrl_AZ', 'Azerbaijani (Cyrillic, Azerbaijan)'),
  NamedLocale('az_Cyrl', 'Azerbaijani (Cyrillic)'),
  NamedLocale('az_Latn_AZ', 'Azerbaijani (Latin, Azerbaijan)'),
  NamedLocale('az_Latn', 'Azerbaijani (Latin)'),
  NamedLocale('bm', 'Bambara'),
  NamedLocale('bm_Latn_ML', 'Bambara (Latin, Mali)'),
  NamedLocale('bm_Latn', 'Bambara (Latin)'),
  NamedLocale('eu', 'Basque'),
  NamedLocale('eu_ES', 'Basque (Spain)'),
  NamedLocale('be', 'Belarusian'),
  NamedLocale('be_BY', 'Belarusian (Belarus)'),
  NamedLocale('bn', 'Bengali'),
  NamedLocale('bn_BD', 'Bengali (Bangladesh)'),
  NamedLocale('bn_IN', 'Bengali (India)'),
  NamedLocale('bs', 'Bosnian'),
  NamedLocale('bs_BA', 'Bosnian (Bosnia & Herzegovina)'),
  NamedLocale('bs_Cyrl_BA', 'Bosnian (Cyrillic, Bosnia & Herzegovina)'),
  NamedLocale('bs_Cyrl', 'Bosnian (Cyrillic)'),
  NamedLocale('bs_Latn_BA', 'Bosnian (Latin, Bosnia & Herzegovina)'),
  NamedLocale('bs_Latn', 'Bosnian (Latin)'),
  NamedLocale('br', 'Breton'),
  NamedLocale('br_FR', 'Breton (France)'),
  NamedLocale('bg', 'Bulgarian'),
  NamedLocale('bg_BG', 'Bulgarian (Bulgaria)'),
  NamedLocale('my', 'Burmese'),
  NamedLocale('my_MM', 'Burmese (Myanmar (Burma))'),
  NamedLocale('ca', 'Catalan'),
  NamedLocale('ca_AD', 'Catalan (Andorra)'),
  NamedLocale('ca_FR', 'Catalan (France)'),
  NamedLocale('ca_IT', 'Catalan (Italy)'),
  NamedLocale('ca_ES', 'Catalan (Spain)'),
  NamedLocale('zh', 'Chinese'),
  NamedLocale('zh_CN', 'Chinese (China)'),
  NamedLocale('zh_HK', 'Chinese (Hong Kong SAR China)'),
  NamedLocale('zh_MO', 'Chinese (Macau SAR China)'),
  NamedLocale('zh_Hans_CN', 'Chinese (Simplified, China)'),
  NamedLocale('zh_Hans_HK', 'Chinese (Simplified, Hong Kong SAR China)'),
  NamedLocale('zh_Hans_MO', 'Chinese (Simplified, Macau SAR China)'),
  NamedLocale('zh_Hans_SG', 'Chinese (Simplified, Singapore)'),
  NamedLocale('zh_Hans', 'Chinese (Simplified)'),
  NamedLocale('zh_SG', 'Chinese (Singapore)'),
  NamedLocale('zh_TW', 'Chinese (Taiwan)'),
  NamedLocale('zh_Hant_HK', 'Chinese (Traditional, Hong Kong SAR China)'),
  NamedLocale('zh_Hant_MO', 'Chinese (Traditional, Macau SAR China)'),
  NamedLocale('zh_Hant_TW', 'Chinese (Traditional, Taiwan)'),
  NamedLocale('zh_Hant', 'Chinese (Traditional)'),
  NamedLocale('kw', 'Cornish'),
  NamedLocale('kw_GB', 'Cornish (United Kingdom)'),
  NamedLocale('hr', 'Croatian'),
  NamedLocale('hr_BA', 'Croatian (Bosnia & Herzegovina)'),
  NamedLocale('hr_HR', 'Croatian (Croatia)'),
  NamedLocale('cs', 'Czech'),
  NamedLocale('cs_CZ', 'Czech (Czech Republic)'),
  NamedLocale('da', 'Danish'),
  NamedLocale('da_DK', 'Danish (Denmark)'),
  NamedLocale('da_GL', 'Danish (Greenland)'),
  NamedLocale('nl', 'Dutch'),
  NamedLocale('nl_AW', 'Dutch (Aruba)'),
  NamedLocale('nl_BE', 'Dutch (Belgium)'),
  NamedLocale('nl_BQ', 'Dutch (Caribbean Netherlands)'),
  NamedLocale('nl_CW', 'Dutch (Curaçao)'),
  NamedLocale('nl_NL', 'Dutch (Netherlands)'),
  NamedLocale('nl_SX', 'Dutch (Sint Maarten)'),
  NamedLocale('nl_SR', 'Dutch (Suriname)'),
  NamedLocale('dz', 'Dzongkha'),
  NamedLocale('dz_BT', 'Dzongkha (Bhutan)'),
  NamedLocale('en', 'English'),
  NamedLocale('en_AS', 'English (American Samoa)'),
  NamedLocale('en_AI', 'English (Anguilla)'),
  NamedLocale('en_AG', 'English (Antigua & Barbuda)'),
  NamedLocale('en_AU', 'English (Australia)'),
  NamedLocale('en_BS', 'English (Bahamas)'),
  NamedLocale('en_BB', 'English (Barbados)'),
  NamedLocale('en_BE', 'English (Belgium)'),
  NamedLocale('en_BZ', 'English (Belize)'),
  NamedLocale('en_BM', 'English (Bermuda)'),
  NamedLocale('en_BW', 'English (Botswana)'),
  NamedLocale('en_IO', 'English (British Indian Ocean Territory)'),
  NamedLocale('en_VG', 'English (British Virgin Islands)'),
  NamedLocale('en_CM', 'English (Cameroon)'),
  NamedLocale('en_CA', 'English (Canada)'),
  NamedLocale('en_KY', 'English (Cayman Islands)'),
  NamedLocale('en_CX', 'English (Christmas Island)'),
  NamedLocale('en_CC', 'English (Cocos (Keeling) Islands)'),
  NamedLocale('en_CK', 'English (Cook Islands)'),
  NamedLocale('en_DG', 'English (Diego Garcia)'),
  NamedLocale('en_DM', 'English (Dominica)'),
  NamedLocale('en_ER', 'English (Eritrea)'),
  NamedLocale('en_FK', 'English (Falkland Islands)'),
  NamedLocale('en_FJ', 'English (Fiji)'),
  NamedLocale('en_GM', 'English (Gambia)'),
  NamedLocale('en_GH', 'English (Ghana)'),
  NamedLocale('en_GI', 'English (Gibraltar)'),
  NamedLocale('en_GD', 'English (Grenada)'),
  NamedLocale('en_GU', 'English (Guam)'),
  NamedLocale('en_GG', 'English (Guernsey)'),
  NamedLocale('en_GY', 'English (Guyana)'),
  NamedLocale('en_HK', 'English (Hong Kong SAR China)'),
  NamedLocale('en_IN', 'English (India)'),
  NamedLocale('en_IE', 'English (Ireland)'),
  NamedLocale('en_IM', 'English (Isle of Man)'),
  NamedLocale('en_JM', 'English (Jamaica)'),
  NamedLocale('en_JE', 'English (Jersey)'),
  NamedLocale('en_KE', 'English (Kenya)'),
  NamedLocale('en_KI', 'English (Kiribati)'),
  NamedLocale('en_LS', 'English (Lesotho)'),
  NamedLocale('en_LR', 'English (Liberia)'),
  NamedLocale('en_MO', 'English (Macau SAR China)'),
  NamedLocale('en_MG', 'English (Madagascar)'),
  NamedLocale('en_MW', 'English (Malawi)'),
  NamedLocale('en_MY', 'English (Malaysia)'),
  NamedLocale('en_MT', 'English (Malta)'),
  NamedLocale('en_MH', 'English (Marshall Islands)'),
  NamedLocale('en_MU', 'English (Mauritius)'),
  NamedLocale('en_FM', 'English (Micronesia)'),
  NamedLocale('en_MS', 'English (Montserrat)'),
  NamedLocale('en_NA', 'English (Namibia)'),
  NamedLocale('en_NR', 'English (Nauru)'),
  NamedLocale('en_NZ', 'English (New Zealand)'),
  NamedLocale('en_NG', 'English (Nigeria)'),
  NamedLocale('en_NU', 'English (Niue)'),
  NamedLocale('en_NF', 'English (Norfolk Island)'),
  NamedLocale('en_MP', 'English (Northern Mariana Islands)'),
  NamedLocale('en_PK', 'English (Pakistan)'),
  NamedLocale('en_PW', 'English (Palau)'),
  NamedLocale('en_PG', 'English (Papua New Guinea)'),
  NamedLocale('en_PH', 'English (Philippines)'),
  NamedLocale('en_PN', 'English (Pitcairn Islands)'),
  NamedLocale('en_PR', 'English (Puerto Rico)'),
  NamedLocale('en_RW', 'English (Rwanda)'),
  NamedLocale('en_WS', 'English (Samoa)'),
  NamedLocale('en_SC', 'English (Seychelles)'),
  NamedLocale('en_SL', 'English (Sierra Leone)'),
  NamedLocale('en_SG', 'English (Singapore)'),
  NamedLocale('en_SX', 'English (Sint Maarten)'),
  NamedLocale('en_SB', 'English (Solomon Islands)'),
  NamedLocale('en_ZA', 'English (South Africa)'),
  NamedLocale('en_SS', 'English (South Sudan)'),
  NamedLocale('en_SH', 'English (St. Helena)'),
  NamedLocale('en_KN', 'English (St. Kitts & Nevis)'),
  NamedLocale('en_LC', 'English (St. Lucia)'),
  NamedLocale('en_VC', 'English (St. Vincent & Grenadines)'),
  NamedLocale('en_SD', 'English (Sudan)'),
  NamedLocale('en_SZ', 'English (Swaziland)'),
  NamedLocale('en_TZ', 'English (Tanzania)'),
  NamedLocale('en_TK', 'English (Tokelau)'),
  NamedLocale('en_TO', 'English (Tonga)'),
  NamedLocale('en_TT', 'English (Trinidad & Tobago)'),
  NamedLocale('en_TC', 'English (Turks & Caicos Islands)'),
  NamedLocale('en_TV', 'English (Tuvalu)'),
  NamedLocale('en_UM', 'English (U.S. Outlying Islands)'),
  NamedLocale('en_VI', 'English (U.S. Virgin Islands)'),
  NamedLocale('en_UG', 'English (Uganda)'),
  NamedLocale('en_GB', 'English (United Kingdom)'),
  NamedLocale('en_US', 'English (United States)'),
  NamedLocale('en_VU', 'English (Vanuatu)'),
  NamedLocale('en_ZM', 'English (Zambia)'),
  NamedLocale('en_ZW', 'English (Zimbabwe)'),
  NamedLocale('eo', 'Esperanto'),
  NamedLocale('et', 'Estonian'),
  NamedLocale('et_EE', 'Estonian (Estonia)'),
  NamedLocale('ee', 'Ewe'),
  NamedLocale('ee_GH', 'Ewe (Ghana)'),
  NamedLocale('ee_TG', 'Ewe (Togo)'),
  NamedLocale('fo', 'Faroese'),
  NamedLocale('fo_FO', 'Faroese (Faroe Islands)'),
  NamedLocale('fi', 'Finnish'),
  NamedLocale('fi_FI', 'Finnish (Finland)'),
  NamedLocale('fr', 'French'),
  NamedLocale('fr_DZ', 'French (Algeria)'),
  NamedLocale('fr_BE', 'French (Belgium)'),
  NamedLocale('fr_BJ', 'French (Benin)'),
  NamedLocale('fr_BF', 'French (Burkina Faso)'),
  NamedLocale('fr_BI', 'French (Burundi)'),
  NamedLocale('fr_CM', 'French (Cameroon)'),
  NamedLocale('fr_CA', 'French (Canada)'),
  NamedLocale('fr_CF', 'French (Central African Republic)'),
  NamedLocale('fr_TD', 'French (Chad)'),
  NamedLocale('fr_KM', 'French (Comoros)'),
  NamedLocale('fr_CG', 'French (Congo - Brazzaville)'),
  NamedLocale('fr_CD', 'French (Congo - Kinshasa)'),
  NamedLocale('fr_CI', 'French (Côte d’Ivoire)'),
  NamedLocale('fr_DJ', 'French (Djibouti)'),
  NamedLocale('fr_GQ', 'French (Equatorial Guinea)'),
  NamedLocale('fr_FR', 'French (France)'),
  NamedLocale('fr_GF', 'French (French Guiana)'),
  NamedLocale('fr_PF', 'French (French Polynesia)'),
  NamedLocale('fr_GA', 'French (Gabon)'),
  NamedLocale('fr_GP', 'French (Guadeloupe)'),
  NamedLocale('fr_GN', 'French (Guinea)'),
  NamedLocale('fr_HT', 'French (Haiti)'),
  NamedLocale('fr_LU', 'French (Luxembourg)'),
  NamedLocale('fr_MG', 'French (Madagascar)'),
  NamedLocale('fr_ML', 'French (Mali)'),
  NamedLocale('fr_MQ', 'French (Martinique)'),
  NamedLocale('fr_MR', 'French (Mauritania)'),
  NamedLocale('fr_MU', 'French (Mauritius)'),
  NamedLocale('fr_YT', 'French (Mayotte)'),
  NamedLocale('fr_MC', 'French (Monaco)'),
  NamedLocale('fr_MA', 'French (Morocco)'),
  NamedLocale('fr_NC', 'French (New Caledonia)'),
  NamedLocale('fr_NE', 'French (Niger)'),
  NamedLocale('fr_RE', 'French (Réunion)'),
  NamedLocale('fr_RW', 'French (Rwanda)'),
  NamedLocale('fr_SN', 'French (Senegal)'),
  NamedLocale('fr_SC', 'French (Seychelles)'),
  NamedLocale('fr_BL', 'French (St. Barthélemy)'),
  NamedLocale('fr_MF', 'French (St. Martin)'),
  NamedLocale('fr_PM', 'French (St. Pierre & Miquelon)'),
  NamedLocale('fr_CH', 'French (Switzerland)'),
  NamedLocale('fr_SY', 'French (Syria)'),
  NamedLocale('fr_TG', 'French (Togo)'),
  NamedLocale('fr_TN', 'French (Tunisia)'),
  NamedLocale('fr_VU', 'French (Vanuatu)'),
  NamedLocale('fr_WF', 'French (Wallis & Futuna)'),
  NamedLocale('ff', 'Fulah'),
  NamedLocale('ff_CM', 'Fulah (Cameroon)'),
  NamedLocale('ff_GN', 'Fulah (Guinea)'),
  NamedLocale('ff_MR', 'Fulah (Mauritania)'),
  NamedLocale('ff_SN', 'Fulah (Senegal)'),
  NamedLocale('gl', 'Galician'),
  NamedLocale('gl_ES', 'Galician (Spain)'),
  NamedLocale('lg', 'Ganda'),
  NamedLocale('lg_UG', 'Ganda (Uganda)'),
  NamedLocale('ka', 'Georgian'),
  NamedLocale('ka_GE', 'Georgian (Georgia)'),
  NamedLocale('de', 'German'),
  NamedLocale('de_AT', 'German (Austria)'),
  NamedLocale('de_BE', 'German (Belgium)'),
  NamedLocale('de_DE', 'German (Germany)'),
  NamedLocale('de_LI', 'German (Liechtenstein)'),
  NamedLocale('de_LU', 'German (Luxembourg)'),
  NamedLocale('de_CH', 'German (Switzerland)'),
  NamedLocale('el', 'Greek'),
  NamedLocale('el_CY', 'Greek (Cyprus)'),
  NamedLocale('el_GR', 'Greek (Greece)'),
  NamedLocale('gu', 'Gujarati'),
  NamedLocale('gu_IN', 'Gujarati (India)'),
  NamedLocale('ha', 'Hausa'),
  NamedLocale('ha_GH', 'Hausa (Ghana)'),
  NamedLocale('ha_Latn_GH', 'Hausa (Latin, Ghana)'),
  NamedLocale('ha_Latn_NE', 'Hausa (Latin, Niger)'),
  NamedLocale('ha_Latn_NG', 'Hausa (Latin, Nigeria)'),
  NamedLocale('ha_Latn', 'Hausa (Latin)'),
  NamedLocale('ha_NE', 'Hausa (Niger)'),
  NamedLocale('ha_NG', 'Hausa (Nigeria)'),
  NamedLocale('he', 'Hebrew'),
  NamedLocale('he_IL', 'Hebrew (Israel)'),
  NamedLocale('hi', 'Hindi'),
  NamedLocale('hi_IN', 'Hindi (India)'),
  NamedLocale('hu', 'Hungarian'),
  NamedLocale('hu_HU', 'Hungarian (Hungary)'),
  NamedLocale('is', 'Icelandic'),
  NamedLocale('is_IS', 'Icelandic (Iceland)'),
  NamedLocale('ig', 'Igbo'),
  NamedLocale('ig_NG', 'Igbo (Nigeria)'),
  NamedLocale('id', 'Indonesian'),
  NamedLocale('id_ID', 'Indonesian (Indonesia)'),
  NamedLocale('ga', 'Irish'),
  NamedLocale('ga_IE', 'Irish (Ireland)'),
  NamedLocale('it', 'Italian'),
  NamedLocale('it_IT', 'Italian (Italy)'),
  NamedLocale('it_SM', 'Italian (San Marino)'),
  NamedLocale('it_CH', 'Italian (Switzerland)'),
  NamedLocale('ja', 'Japanese'),
  NamedLocale('ja_JP', 'Japanese (Japan)'),
  NamedLocale('kl', 'Kalaallisut'),
  NamedLocale('kl_GL', 'Kalaallisut (Greenland)'),
  NamedLocale('kn', 'Kannada'),
  NamedLocale('kn_IN', 'Kannada (India)'),
  NamedLocale('ks', 'Kashmiri'),
  NamedLocale('ks_Arab_IN', 'Kashmiri (Arabic, India)'),
  NamedLocale('ks_Arab', 'Kashmiri (Arabic)'),
  NamedLocale('ks_IN', 'Kashmiri (India)'),
  NamedLocale('kk', 'Kazakh'),
  NamedLocale('kk_Cyrl_KZ', 'Kazakh (Cyrillic, Kazakhstan)'),
  NamedLocale('kk_Cyrl', 'Kazakh (Cyrillic)'),
  NamedLocale('kk_KZ', 'Kazakh (Kazakhstan)'),
  NamedLocale('km', 'Khmer'),
  NamedLocale('km_KH', 'Khmer (Cambodia)'),
  NamedLocale('ki', 'Kikuyu'),
  NamedLocale('ki_KE', 'Kikuyu (Kenya)'),
  NamedLocale('rw', 'Kinyarwanda'),
  NamedLocale('rw_RW', 'Kinyarwanda (Rwanda)'),
  NamedLocale('ko', 'Korean'),
  NamedLocale('ko_KP', 'Korean (North Korea)'),
  NamedLocale('ko_KR', 'Korean (South Korea)'),
  NamedLocale('ky', 'Kyrgyz'),
  NamedLocale('ky_Cyrl_KG', 'Kyrgyz (Cyrillic, Kyrgyzstan)'),
  NamedLocale('ky_Cyrl', 'Kyrgyz (Cyrillic)'),
  NamedLocale('ky_KG', 'Kyrgyz (Kyrgyzstan)'),
  NamedLocale('lo', 'Lao'),
  NamedLocale('lo_LA', 'Lao (Laos)'),
  NamedLocale('lv', 'Latvian'),
  NamedLocale('lv_LV', 'Latvian (Latvia)'),
  NamedLocale('ln', 'Lingala'),
  NamedLocale('ln_AO', 'Lingala (Angola)'),
  NamedLocale('ln_CF', 'Lingala (Central African Republic)'),
  NamedLocale('ln_CG', 'Lingala (Congo - Brazzaville)'),
  NamedLocale('ln_CD', 'Lingala (Congo - Kinshasa)'),
  NamedLocale('lt', 'Lithuanian'),
  NamedLocale('lt_LT', 'Lithuanian (Lithuania)'),
  NamedLocale('lu', 'Luba-Katanga'),
  NamedLocale('lu_CD', 'Luba-Katanga (Congo - Kinshasa)'),
  NamedLocale('lb', 'Luxembourgish'),
  NamedLocale('lb_LU', 'Luxembourgish (Luxembourg)'),
  NamedLocale('mk', 'Macedonian'),
  NamedLocale('mk_MK', 'Macedonian (Macedonia)'),
  NamedLocale('mg', 'Malagasy'),
  NamedLocale('mg_MG', 'Malagasy (Madagascar)'),
  NamedLocale('ms', 'Malay'),
  NamedLocale('ms_BN', 'Malay (Brunei)'),
  NamedLocale('ms_Latn_BN', 'Malay (Latin, Brunei)'),
  NamedLocale('ms_Latn_MY', 'Malay (Latin, Malaysia)'),
  NamedLocale('ms_Latn_SG', 'Malay (Latin, Singapore)'),
  NamedLocale('ms_Latn', 'Malay (Latin)'),
  NamedLocale('ms_MY', 'Malay (Malaysia)'),
  NamedLocale('ms_SG', 'Malay (Singapore)'),
  NamedLocale('ml', 'Malayalam'),
  NamedLocale('ml_IN', 'Malayalam (India)'),
  NamedLocale('mt', 'Maltese'),
  NamedLocale('mt_MT', 'Maltese (Malta)'),
  NamedLocale('gv', 'Manx'),
  NamedLocale('gv_IM', 'Manx (Isle of Man)'),
  NamedLocale('mr', 'Marathi'),
  NamedLocale('mr_IN', 'Marathi (India)'),
  NamedLocale('mn', 'Mongolian'),
  NamedLocale('mn_Cyrl_MN', 'Mongolian (Cyrillic, Mongolia)'),
  NamedLocale('mn_Cyrl', 'Mongolian (Cyrillic)'),
  NamedLocale('mn_MN', 'Mongolian (Mongolia)'),
  NamedLocale('ne', 'Nepali'),
  NamedLocale('ne_IN', 'Nepali (India)'),
  NamedLocale('ne_NP', 'Nepali (Nepal)'),
  NamedLocale('nd', 'North Ndebele'),
  NamedLocale('nd_ZW', 'North Ndebele (Zimbabwe)'),
  NamedLocale('se', 'Northern Sami'),
  NamedLocale('se_FI', 'Northern Sami (Finland)'),
  NamedLocale('se_NO', 'Northern Sami (Norway)'),
  NamedLocale('se_SE', 'Northern Sami (Sweden)'),
  NamedLocale('no', 'Norwegian'),
  NamedLocale('no_NO', 'Norwegian (Norway)'),
  NamedLocale('nb', 'Norwegian Bokmål'),
  NamedLocale('nb_NO', 'Norwegian Bokmål (Norway)'),
  NamedLocale('nb_SJ', 'Norwegian Bokmål (Svalbard & Jan Mayen)'),
  NamedLocale('nn', 'Norwegian Nynorsk'),
  NamedLocale('nn_NO', 'Norwegian Nynorsk (Norway)'),
  NamedLocale('or', 'Oriya'),
  NamedLocale('or_IN', 'Oriya (India)'),
  NamedLocale('om', 'Oromo'),
  NamedLocale('om_ET', 'Oromo (Ethiopia)'),
  NamedLocale('om_KE', 'Oromo (Kenya)'),
  NamedLocale('os', 'Ossetic'),
  NamedLocale('os_GE', 'Ossetic (Georgia)'),
  NamedLocale('os_RU', 'Ossetic (Russia)'),
  NamedLocale('ps', 'Pashto'),
  NamedLocale('ps_AF', 'Pashto (Afghanistan)'),
  NamedLocale('fa', 'Persian'),
  NamedLocale('fa_AF', 'Persian (Afghanistan)'),
  NamedLocale('fa_IR', 'Persian (Iran)'),
  NamedLocale('pl', 'Polish'),
  NamedLocale('pl_PL', 'Polish (Poland)'),
  NamedLocale('pt', 'Portuguese'),
  NamedLocale('pt_AO', 'Portuguese (Angola)'),
  NamedLocale('pt_BR', 'Portuguese (Brazil)'),
  NamedLocale('pt_CV', 'Portuguese (Cape Verde)'),
  NamedLocale('pt_GW', 'Portuguese (Guinea-Bissau)'),
  NamedLocale('pt_MO', 'Portuguese (Macau SAR China)'),
  NamedLocale('pt_MZ', 'Portuguese (Mozambique)'),
  NamedLocale('pt_PT', 'Portuguese (Portugal)'),
  NamedLocale('pt_ST', 'Portuguese (São Tomé & Príncipe)'),
  NamedLocale('pt_TL', 'Portuguese (Timor-Leste)'),
  NamedLocale('pa', 'Punjabi'),
  NamedLocale('pa_Arab_PK', 'Punjabi (Arabic, Pakistan)'),
  NamedLocale('pa_Arab', 'Punjabi (Arabic)'),
  NamedLocale('pa_Guru_IN', 'Punjabi (Gurmukhi, India)'),
  NamedLocale('pa_Guru', 'Punjabi (Gurmukhi)'),
  NamedLocale('pa_IN', 'Punjabi (India)'),
  NamedLocale('pa_PK', 'Punjabi (Pakistan)'),
  NamedLocale('qu', 'Quechua'),
  NamedLocale('qu_BO', 'Quechua (Bolivia)'),
  NamedLocale('qu_EC', 'Quechua (Ecuador)'),
  NamedLocale('qu_PE', 'Quechua (Peru)'),
  NamedLocale('ro', 'Romanian'),
  NamedLocale('ro_MD', 'Romanian (Moldova)'),
  NamedLocale('ro_RO', 'Romanian (Romania)'),
  NamedLocale('rm', 'Romansh'),
  NamedLocale('rm_CH', 'Romansh (Switzerland)'),
  NamedLocale('rn', 'Rundi'),
  NamedLocale('rn_BI', 'Rundi (Burundi)'),
  NamedLocale('ru', 'Russian'),
  NamedLocale('ru_BY', 'Russian (Belarus)'),
  NamedLocale('ru_KZ', 'Russian (Kazakhstan)'),
  NamedLocale('ru_KG', 'Russian (Kyrgyzstan)'),
  NamedLocale('ru_MD', 'Russian (Moldova)'),
  NamedLocale('ru_RU', 'Russian (Russia)'),
  NamedLocale('ru_UA', 'Russian (Ukraine)'),
  NamedLocale('sg', 'Sango'),
  NamedLocale('sg_CF', 'Sango (Central African Republic)'),
  NamedLocale('gd', 'Scottish Gaelic'),
  NamedLocale('gd_GB', 'Scottish Gaelic (United Kingdom)'),
  NamedLocale('sr', 'Serbian'),
  NamedLocale('sr_BA', 'Serbian (Bosnia & Herzegovina)'),
  NamedLocale('sr_Cyrl_BA', 'Serbian (Cyrillic, Bosnia & Herzegovina)'),
  NamedLocale('sr_Cyrl_XK', 'Serbian (Cyrillic, Kosovo)'),
  NamedLocale('sr_Cyrl_ME', 'Serbian (Cyrillic, Montenegro)'),
  NamedLocale('sr_Cyrl_RS', 'Serbian (Cyrillic, Serbia)'),
  NamedLocale('sr_Cyrl', 'Serbian (Cyrillic)'),
  NamedLocale('sr_XK', 'Serbian (Kosovo)'),
  NamedLocale('sr_Latn_BA', 'Serbian (Latin, Bosnia & Herzegovina)'),
  NamedLocale('sr_Latn_XK', 'Serbian (Latin, Kosovo)'),
  NamedLocale('sr_Latn_ME', 'Serbian (Latin, Montenegro)'),
  NamedLocale('sr_Latn_RS', 'Serbian (Latin, Serbia)'),
  NamedLocale('sr_Latn', 'Serbian (Latin)'),
  NamedLocale('sr_ME', 'Serbian (Montenegro)'),
  NamedLocale('sr_RS', 'Serbian (Serbia)'),
  NamedLocale('sh', 'Serbo-Croatian'),
  NamedLocale('sh_BA', 'Serbo-Croatian (Bosnia & Herzegovina)'),
  NamedLocale('sn', 'Shona'),
  NamedLocale('sn_ZW', 'Shona (Zimbabwe)'),
  NamedLocale('ii', 'Sichuan Yi'),
  NamedLocale('ii_CN', 'Sichuan Yi (China)'),
  NamedLocale('si', 'Sinhala'),
  NamedLocale('si_LK', 'Sinhala (Sri Lanka)'),
  NamedLocale('sk', 'Slovak'),
  NamedLocale('sk_SK', 'Slovak (Slovakia)'),
  NamedLocale('sl', 'Slovenian'),
  NamedLocale('sl_SI', 'Slovenian (Slovenia)'),
  NamedLocale('so', 'Somali'),
  NamedLocale('so_DJ', 'Somali (Djibouti)'),
  NamedLocale('so_ET', 'Somali (Ethiopia)'),
  NamedLocale('so_KE', 'Somali (Kenya)'),
  NamedLocale('so_SO', 'Somali (Somalia)'),
  NamedLocale('es', 'Spanish'),
  NamedLocale('es_AR', 'Spanish (Argentina)'),
  NamedLocale('es_BO', 'Spanish (Bolivia)'),
  NamedLocale('es_IC', 'Spanish (Canary Islands)'),
  NamedLocale('es_EA', 'Spanish (Ceuta & Melilla)'),
  NamedLocale('es_CL', 'Spanish (Chile)'),
  NamedLocale('es_CO', 'Spanish (Colombia)'),
  NamedLocale('es_CR', 'Spanish (Costa Rica)'),
  NamedLocale('es_CU', 'Spanish (Cuba)'),
  NamedLocale('es_DO', 'Spanish (Dominican Republic)'),
  NamedLocale('es_EC', 'Spanish (Ecuador)'),
  NamedLocale('es_SV', 'Spanish (El Salvador)'),
  NamedLocale('es_GQ', 'Spanish (Equatorial Guinea)'),
  NamedLocale('es_GT', 'Spanish (Guatemala)'),
  NamedLocale('es_HN', 'Spanish (Honduras)'),
  NamedLocale('es_MX', 'Spanish (Mexico)'),
  NamedLocale('es_NI', 'Spanish (Nicaragua)'),
  NamedLocale('es_PA', 'Spanish (Panama)'),
  NamedLocale('es_PY', 'Spanish (Paraguay)'),
  NamedLocale('es_PE', 'Spanish (Peru)'),
  NamedLocale('es_PH', 'Spanish (Philippines)'),
  NamedLocale('es_PR', 'Spanish (Puerto Rico)'),
  NamedLocale('es_ES', 'Spanish (Spain)'),
  NamedLocale('es_US', 'Spanish (United States)'),
  NamedLocale('es_UY', 'Spanish (Uruguay)'),
  NamedLocale('es_VE', 'Spanish (Venezuela)'),
  NamedLocale('sw', 'Swahili'),
  NamedLocale('sw_KE', 'Swahili (Kenya)'),
  NamedLocale('sw_TZ', 'Swahili (Tanzania)'),
  NamedLocale('sw_UG', 'Swahili (Uganda)'),
  NamedLocale('sv', 'Swedish'),
  NamedLocale('sv_AX', 'Swedish (Åland Islands)'),
  NamedLocale('sv_FI', 'Swedish (Finland)'),
  NamedLocale('sv_SE', 'Swedish (Sweden)'),
  NamedLocale('tl', 'Tagalog'),
  NamedLocale('tl_PH', 'Tagalog (Philippines)'),
  NamedLocale('ta', 'Tamil'),
  NamedLocale('ta_IN', 'Tamil (India)'),
  NamedLocale('ta_MY', 'Tamil (Malaysia)'),
  NamedLocale('ta_SG', 'Tamil (Singapore)'),
  NamedLocale('ta_LK', 'Tamil (Sri Lanka)'),
  NamedLocale('te', 'Telugu'),
  NamedLocale('te_IN', 'Telugu (India)'),
  NamedLocale('th', 'Thai'),
  NamedLocale('th_TH', 'Thai (Thailand)'),
  NamedLocale('bo', 'Tibetan'),
  NamedLocale('bo_CN', 'Tibetan (China)'),
  NamedLocale('bo_IN', 'Tibetan (India)'),
  NamedLocale('ti', 'Tigrinya'),
  NamedLocale('ti_ER', 'Tigrinya (Eritrea)'),
  NamedLocale('ti_ET', 'Tigrinya (Ethiopia)'),
  NamedLocale('to', 'Tongan'),
  NamedLocale('to_TO', 'Tongan (Tonga)'),
  NamedLocale('tr', 'Turkish'),
  NamedLocale('tr_CY', 'Turkish (Cyprus)'),
  NamedLocale('tr_TR', 'Turkish (Turkey)'),
  NamedLocale('uk', 'Ukrainian'),
  NamedLocale('uk_UA', 'Ukrainian (Ukraine)'),
  NamedLocale('ur', 'Urdu'),
  NamedLocale('ur_IN', 'Urdu (India)'),
  NamedLocale('ur_PK', 'Urdu (Pakistan)'),
  NamedLocale('ug', 'Uyghur'),
  NamedLocale('ug_Arab_CN', 'Uyghur (Arabic, China)'),
  NamedLocale('ug_Arab', 'Uyghur (Arabic)'),
  NamedLocale('ug_CN', 'Uyghur (China)'),
  NamedLocale('uz', 'Uzbek'),
  NamedLocale('uz_AF', 'Uzbek (Afghanistan)'),
  NamedLocale('uz_Arab_AF', 'Uzbek (Arabic, Afghanistan)'),
  NamedLocale('uz_Arab', 'Uzbek (Arabic)'),
  NamedLocale('uz_Cyrl_UZ', 'Uzbek (Cyrillic, Uzbekistan)'),
  NamedLocale('uz_Cyrl', 'Uzbek (Cyrillic)'),
  NamedLocale('uz_Latn_UZ', 'Uzbek (Latin, Uzbekistan)'),
  NamedLocale('uz_Latn', 'Uzbek (Latin)'),
  NamedLocale('uz_UZ', 'Uzbek (Uzbekistan)'),
  NamedLocale('vi', 'Vietnamese'),
  NamedLocale('vi_VN', 'Vietnamese (Vietnam)'),
  NamedLocale('cy', 'Welsh'),
  NamedLocale('cy_GB', 'Welsh (United Kingdom)'),
  NamedLocale('fy', 'Western Frisian'),
  NamedLocale('fy_NL', 'Western Frisian (Netherlands)'),
  NamedLocale('yi', 'Yiddish'),
  NamedLocale('yo', 'Yoruba'),
  NamedLocale('yo_BJ', 'Yoruba (Benin)'),
  NamedLocale('yo_NG', 'Yoruba (Nigeria)'),
  NamedLocale('zu', 'Zulu'),
  NamedLocale('zu_ZA', 'Zulu (South Africa)'),
];

Locale basicLocaleListResolution(
    List<Locale> preferredLocales, Iterable<Locale> supportedLocales) {
  // preferredLocales can be null when called before the platform has had a chance to
  // initialize the locales. Platforms without locale passing support will provide an empty list.
  // We default to the first supported locale in these cases.
  if (preferredLocales == null || preferredLocales.isEmpty) {
    return supportedLocales.first;
  }
  // Hash the supported locales because apps can support many locales and would
  // be expensive to search through them many times.
  final Map<String, Locale> allSupportedLocales = HashMap<String, Locale>();
  final Map<String, Locale> languageAndCountryLocales =
      HashMap<String, Locale>();
  final Map<String, Locale> languageAndScriptLocales =
      HashMap<String, Locale>();
  final Map<String, Locale> languageLocales = HashMap<String, Locale>();
  final Map<String, Locale> countryLocales = HashMap<String, Locale>();
  for (final locale in supportedLocales) {
    allSupportedLocales[
            '${locale.languageCode}_${locale.scriptCode}_${locale.countryCode}'] ??=
        locale;
    languageAndScriptLocales['${locale.languageCode}_${locale.scriptCode}'] ??=
        locale;
    languageAndCountryLocales[
        '${locale.languageCode}_${locale.countryCode}'] ??= locale;
    languageLocales[locale.languageCode] ??= locale;
    countryLocales[locale.countryCode] ??= locale;
  }

  // Since languageCode-only matches are possibly low quality, we don't return
  // it instantly when we find such a match. We check to see if the next
  // preferred locale in the list has a high accuracy match, and only return
  // the languageCode-only match when a higher accuracy match in the next
  // preferred locale cannot be found.
  Locale matchesLanguageCode;
  Locale matchesCountryCode;
  // Loop over user's preferred locales
  for (var localeIndex = 0;
      localeIndex < preferredLocales.length;
      localeIndex += 1) {
    final userLocale = preferredLocales[localeIndex];
    // Look for perfect match.
    if (allSupportedLocales.containsKey(
        '${userLocale.languageCode}_${userLocale.scriptCode}_${userLocale.countryCode}')) {
      return userLocale;
    }
    // Look for language+script match.
    if (userLocale.scriptCode != null) {
      final match = languageAndScriptLocales[
          '${userLocale.languageCode}_${userLocale.scriptCode}'];
      if (match != null) {
        return match;
      }
    }
    // Look for language+country match.
    if (userLocale.countryCode != null) {
      final match = languageAndCountryLocales[
          '${userLocale.languageCode}_${userLocale.countryCode}'];
      if (match != null) {
        return match;
      }
    }
    // If there was a languageCode-only match in the previous iteration's higher
    // ranked preferred locale, we return it if the current userLocale does not
    // have a better match.
    if (matchesLanguageCode != null) {
      return matchesLanguageCode;
    }
    // Look and store language-only match.
    var match = languageLocales[userLocale.languageCode];
    if (match != null) {
      matchesLanguageCode = match;
      // Since first (default) locale is usually highly preferred, we will allow
      // a languageCode-only match to be instantly matched. If the next preferred
      // languageCode is the same, we defer hastily returning until the next iteration
      // since at worst it is the same and at best an improved match.
      if (localeIndex == 0 &&
          !(localeIndex + 1 < preferredLocales.length &&
              preferredLocales[localeIndex + 1].languageCode ==
                  userLocale.languageCode)) {
        return matchesLanguageCode;
      }
    }
    // countryCode-only match. When all else except default supported locale fails,
    // attempt to match by country only, as a user is likely to be familar with a
    // language from their listed country.
    if (matchesCountryCode == null && userLocale.countryCode != null) {
      match = countryLocales[userLocale.countryCode];
      if (match != null) {
        matchesCountryCode = match;
      }
    }
  }
  // When there is no languageCode-only match. Fallback to matching countryCode only. Country
  // fallback only applies on iOS. When there is no countryCode-only match, we return first
  // suported locale.
  final resolvedLocale =
      matchesLanguageCode ?? matchesCountryCode ?? supportedLocales.first;
  return resolvedLocale;
}
