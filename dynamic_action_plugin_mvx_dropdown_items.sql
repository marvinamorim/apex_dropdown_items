prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_200200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>29300347010897583
,p_default_application_id=>999998
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
end;
/
 
prompt APPLICATION 999998 - Plugin Dev
--
-- Application Export:
--   Application:     999998
--   Name:            Plugin Dev
--   Date and Time:   11:39 Monday May 3, 2021
--   Exported By:     MARVIN
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 193000505468342184
--   Manifest End
--   Version:         20.2.0.00.20
--   Instance ID:     800139656204023
--

begin
  -- replace components
  wwv_flow_api.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/mvx_dropdown_items
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(193000505468342184)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'MVX.DROPDOWN.ITEMS'
,p_display_name=>'Dropdown Items'
,p_category=>'MISC'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix=>'&G_APEX_NITRO_IMAGES.'
,p_javascript_file_urls=>'#PLUGIN_FILES#js/dropdownItems.js'
,p_css_file_urls=>'#PLUGIN_FILES#css/dropdownItems.css'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION f_render(',
'  p_dynamic_action IN apex_plugin.t_dynamic_action,',
'  p_plugin         IN apex_plugin.t_plugin',
') RETURN apex_plugin.t_dynamic_action_render_result IS',
'  --',
'  -- plugin attributes',
'  v_result  apex_plugin.t_dynamic_action_render_result;',
'BEGIN',
'  v_result.javascript_function := ''dropdownItems.init'';',
'  v_result.attribute_01        := p_dynamic_action.attribute_01;',
'  v_result.attribute_02        := p_dynamic_action.attribute_02;',
'  v_result.attribute_03        := p_dynamic_action.attribute_03;',
'  RETURN v_result;',
'END f_render;'))
,p_api_version=>2
,p_render_function=>'f_render'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>9
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(193800238651546329)
,p_plugin_id=>wwv_flow_api.id(193000505468342184)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Hook Static ID'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(193900204212655365)
,p_plugin_id=>wwv_flow_api.id(193000505468342184)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Items Dropdown'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(193900978385659680)
,p_plugin_id=>wwv_flow_api.id(193000505468342184)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Static ID (Others)'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_is_translatable=>false
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '636F6E736F6C652E6C6F67282244726F70646F776E204974656D73204170657820506C7567696E22293B0D0A636F6E73742064726F70646F776E4974656D73203D2066756E6374696F6E2829207B0D0A202066756E6374696F6E20696E69742829207B0D';
wwv_flow_api.g_varchar2_table(2) := '0A20202020636F6E736F6C652E6C6F672822496E69742064726F70646F776E22293B0D0A202020206C657420686F6F6B4964203D20746869732E616374696F6E2E61747472696275746530313B0D0A202020206C65742064726F70646F776E4974656D73';
wwv_flow_api.g_varchar2_table(3) := '203D20746869732E616374696F6E2E61747472696275746530322E73706C697428272C27293B0D0A202020206C65742064726F70646F776E4F7468657273203D20746869732E616374696F6E2E61747472696275746530332E73706C697428272C27293B';
wwv_flow_api.g_varchar2_table(4) := '0D0A20202020636F6E736F6C652E6C6F67287B686F6F6B49642C2064726F70646F776E4974656D732C2064726F70646F776E4F74686572737D293B0D0A20202020242822236D61696E22292E616674657228603C6469762069643D226D79437573746F6D';
wwv_flow_api.g_varchar2_table(5) := '44726F70646F776E2220636C6173733D2264726F70646F776E2D636F6E74656E7420637573746F6D223E3C2F6469763E60293B0D0A202020206C657420686569676874203D2024282223222B686F6F6B4964292E6F7574657248656967687428293B0D0A';
wwv_flow_api.g_varchar2_table(6) := '202020206C657420746F70203D2024282223222B686F6F6B4964292E6F666673657428292E746F70202B206865696768743B0D0A202020206C6574206C656674203D2024282223222B686F6F6B4964292E6F666673657428292E6C6566742D353B0D0A20';
wwv_flow_api.g_varchar2_table(7) := '202020242822236D79437573746F6D44726F70646F776E22292E6373732822746F70222C20746F702B22707822293B0D0A20202020242822236D79437573746F6D44726F70646F776E22292E63737328226C656674222C206C6566742B22707822293B0D';
wwv_flow_api.g_varchar2_table(8) := '0A2020202064726F70646F776E4974656D732E6D61702866756E6374696F6E286974656D297B0D0A20202020202024286023247B6974656D7D60292E616464436C6173732822637573746F6D22293B0D0A202020202020242822236D79437573746F6D44';
wwv_flow_api.g_varchar2_table(9) := '726F70646F776E22292E617070656E642824286023247B6974656D7D5F434F4E5441494E45526029293B0D0A202020207D293B0D0A2020202064726F70646F776E4F74686572732E6D61702866756E6374696F6E286974656D297B0D0A20202020202024';
wwv_flow_api.g_varchar2_table(10) := '286023247B6974656D7D60292E616464436C6173732822637573746F6D22293B0D0A202020202020242822236D79437573746F6D44726F70646F776E22292E617070656E642824286023247B6974656D7D6029293B0D0A202020207D293B0D0A20202020';
wwv_flow_api.g_varchar2_table(11) := '24282223222B686F6F6B4964292E6174747228226F6E636C69636B222C2264726F70646F776E4974656D732E746F67676C6544726F70646F776E282922293B0D0A202020202F2F20436C6F7365207468652064726F70646F776E20696620746865207573';
wwv_flow_api.g_varchar2_table(12) := '657220636C69636B73206F757473696465206F662069740D0A2020202077696E646F772E6F6E636C69636B203D2066756E6374696F6E286576656E7429207B0D0A20202020202069662028216576656E742E7461726765742E6D61746368657328272E63';
wwv_flow_api.g_varchar2_table(13) := '7573746F6D272929207B0D0A20202020202020207661722064726F70646F776E203D20646F63756D656E742E676574456C656D656E744279496428226D79437573746F6D44726F70646F776E22293B0D0A20202020202020206966202864726F70646F77';
wwv_flow_api.g_varchar2_table(14) := '6E2E636C6173734C6973742E636F6E7461696E73282273686F772229292064726F70646F776E2E636C6173734C6973742E72656D6F7665282273686F7722293B0D0A2020202020207D0D0A202020207D0D0A20207D0D0A202066756E6374696F6E20746F';
wwv_flow_api.g_varchar2_table(15) := '67676C6544726F70646F776E2829207B0D0A20202020646F63756D656E742E676574456C656D656E744279496428226D79437573746F6D44726F70646F776E22292E636C6173734C6973742E746F67676C65282273686F7722293B0D0A20207D0D0A2020';
wwv_flow_api.g_varchar2_table(16) := '72657475726E207B0D0A20202020696E69742C0D0A20202020746F67676C6544726F70646F776E0D0A20207D0D0A7D28293B0D0A2F2F2320736F757263654D617070696E6755524C3D64726F70646F776E4974656D732E6A732E6D61700D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(194300394224726069)
,p_plugin_id=>wwv_flow_api.id(193000505468342184)
,p_file_name=>'js/dropdownItems.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E64726F70646F776E2D636F6E74656E74207B0D0A2020646973706C61793A206E6F6E653B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A20206D696E2D77696474683A2031363070783B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(2) := '723A20726762612832352C32352C32352C302E35293B0D0A2020626F782D736861646F773A20302038707820313670782038707820726762612832352C32352C32352C302E34293B0D0A2020626F726465723A2035707820736F6C696420726762612832';
wwv_flow_api.g_varchar2_table(3) := '352C2032352C2032352C20302E31293B0D0A2020626F726465722D7261646975733A203470783B0D0A7D0D0A2E73686F77207B646973706C61793A20626C6F636B3B207A2D696E6465783A203939393B7D0D0A236D79437573746F6D44726F70646F776E';
wwv_flow_api.g_varchar2_table(4) := '202E742D466F726D2D6669656C64436F6E7461696E6572207B70616464696E673A3021696D706F7274616E743B7D0D0A236D79437573746F6D44726F70646F776E202E742D466F726D2D6669656C64436F6E7461696E6572207B70616464696E672D626F';
wwv_flow_api.g_varchar2_table(5) := '74746F6D3A203570782021696D706F7274616E743B7D0D0A2F2A2320736F757263654D617070696E6755524C3D64726F70646F776E4974656D732E6373732E6D6170202A2F0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(194300720462727252)
,p_plugin_id=>wwv_flow_api.id(193000505468342184)
,p_file_name=>'css/dropdownItems.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '7B2276657273696F6E223A332C22736F7572636573223A5B2264726F70646F776E4974656D732E637373225D2C226E616D6573223A5B5D2C226D617070696E6773223A22414141413B454143452C614141613B454143622C6B4241416B423B4541436C42';
wwv_flow_api.g_varchar2_table(2) := '2C6742414167423B45414368422C6F4341416F433B45414370432C3643414136433B45414337432C7543414175433B45414376432C6B4241416B423B41414370423B414143412C4F41414F2C634141632C454141452C594141592C434141433B41414370';
wwv_flow_api.g_varchar2_table(3) := '432C3043414130432C6D4241416D422C434141433B41414339442C3043414130432C3842414138422C43414143222C2266696C65223A2264726F70646F776E4974656D732E637373222C22736F7572636573436F6E74656E74223A5B222E64726F70646F';
wwv_flow_api.g_varchar2_table(4) := '776E2D636F6E74656E74207B5C725C6E2020646973706C61793A206E6F6E653B5C725C6E2020706F736974696F6E3A206162736F6C7574653B5C725C6E20206D696E2D77696474683A2031363070783B5C725C6E20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(5) := '6F723A20726762612832352C32352C32352C302E35293B5C725C6E2020626F782D736861646F773A20302038707820313670782038707820726762612832352C32352C32352C302E34293B5C725C6E2020626F726465723A2035707820736F6C69642072';
wwv_flow_api.g_varchar2_table(6) := '6762612832352C2032352C2032352C20302E31293B5C725C6E2020626F726465722D7261646975733A203470783B5C725C6E7D5C725C6E2E73686F77207B646973706C61793A20626C6F636B3B207A2D696E6465783A203939393B7D5C725C6E236D7943';
wwv_flow_api.g_varchar2_table(7) := '7573746F6D44726F70646F776E202E742D466F726D2D6669656C64436F6E7461696E6572207B70616464696E673A3021696D706F7274616E743B7D5C725C6E236D79437573746F6D44726F70646F776E202E742D466F726D2D6669656C64436F6E746169';
wwv_flow_api.g_varchar2_table(8) := '6E6572207B70616464696E672D626F74746F6D3A203570782021696D706F7274616E743B7D225D7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(197305356778046887)
,p_plugin_id=>wwv_flow_api.id(193000505468342184)
,p_file_name=>'css/dropdownItems.css.map'
,p_mime_type=>'text/plain'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E64726F70646F776E2D636F6E74656E747B646973706C61793A6E6F6E653B706F736974696F6E3A6162736F6C7574653B6D696E2D77696474683A31363070783B6261636B67726F756E642D636F6C6F723A726762612832352C32352C32352C2E35293B';
wwv_flow_api.g_varchar2_table(2) := '626F782D736861646F773A302038707820313670782038707820726762612832352C32352C32352C2E34293B626F726465723A35707820736F6C696420726762612832352C32352C32352C2E31293B626F726465722D7261646975733A3470787D2E7368';
wwv_flow_api.g_varchar2_table(3) := '6F777B646973706C61793A626C6F636B3B7A2D696E6465783A3939397D236D79437573746F6D44726F70646F776E202E742D466F726D2D6669656C64436F6E7461696E65727B70616464696E673A3021696D706F7274616E747D236D79437573746F6D44';
wwv_flow_api.g_varchar2_table(4) := '726F70646F776E202E742D466F726D2D6669656C64436F6E7461696E65727B70616464696E672D626F74746F6D3A35707821696D706F7274616E747D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(197305701973046889)
,p_plugin_id=>wwv_flow_api.id(193000505468342184)
,p_file_name=>'css/dropdownItems.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '7B2276657273696F6E223A332C226E616D6573223A5B5D2C226D617070696E6773223A22222C22736F7572636573223A5B2264726F70646F776E4974656D732E6A73225D2C22736F7572636573436F6E74656E74223A5B22636F6E736F6C652E6C6F6728';
wwv_flow_api.g_varchar2_table(2) := '5C2244726F70646F776E204974656D73204170657820506C7567696E5C22293B5C725C6E636F6E73742064726F70646F776E4974656D73203D2066756E6374696F6E2829207B5C725C6E202066756E6374696F6E20696E69742829207B5C725C6E202020';
wwv_flow_api.g_varchar2_table(3) := '20636F6E736F6C652E6C6F67285C22496E69742064726F70646F776E5C22293B5C725C6E202020206C657420686F6F6B4964203D20746869732E616374696F6E2E61747472696275746530313B5C725C6E202020206C65742064726F70646F776E497465';
wwv_flow_api.g_varchar2_table(4) := '6D73203D20746869732E616374696F6E2E61747472696275746530322E73706C697428272C27293B5C725C6E202020206C65742064726F70646F776E4F7468657273203D20746869732E616374696F6E2E61747472696275746530332E73706C69742827';
wwv_flow_api.g_varchar2_table(5) := '2C27293B5C725C6E20202020636F6E736F6C652E6C6F67287B686F6F6B49642C2064726F70646F776E4974656D732C2064726F70646F776E4F74686572737D293B5C725C6E2020202024285C22236D61696E5C22292E616674657228603C646976206964';
wwv_flow_api.g_varchar2_table(6) := '3D5C226D79437573746F6D44726F70646F776E5C2220636C6173733D5C2264726F70646F776E2D636F6E74656E7420637573746F6D5C223E3C2F6469763E60293B5C725C6E202020206C657420686569676874203D2024285C22235C222B686F6F6B4964';
wwv_flow_api.g_varchar2_table(7) := '292E6F7574657248656967687428293B5C725C6E202020206C657420746F70203D2024285C22235C222B686F6F6B4964292E6F666673657428292E746F70202B206865696768743B5C725C6E202020206C6574206C656674203D2024285C22235C222B68';
wwv_flow_api.g_varchar2_table(8) := '6F6F6B4964292E6F666673657428292E6C6566742D353B5C725C6E2020202024285C22236D79437573746F6D44726F70646F776E5C22292E637373285C22746F705C222C20746F702B5C2270785C22293B5C725C6E2020202024285C22236D7943757374';
wwv_flow_api.g_varchar2_table(9) := '6F6D44726F70646F776E5C22292E637373285C226C6566745C222C206C6566742B5C2270785C22293B5C725C6E2020202064726F70646F776E4974656D732E6D61702866756E6374696F6E286974656D297B5C725C6E20202020202024286023247B6974';
wwv_flow_api.g_varchar2_table(10) := '656D7D60292E616464436C617373285C22637573746F6D5C22293B5C725C6E20202020202024285C22236D79437573746F6D44726F70646F776E5C22292E617070656E642824286023247B6974656D7D5F434F4E5441494E45526029293B5C725C6E2020';
wwv_flow_api.g_varchar2_table(11) := '20207D293B5C725C6E2020202064726F70646F776E4F74686572732E6D61702866756E6374696F6E286974656D297B5C725C6E20202020202024286023247B6974656D7D60292E616464436C617373285C22637573746F6D5C22293B5C725C6E20202020';
wwv_flow_api.g_varchar2_table(12) := '202024285C22236D79437573746F6D44726F70646F776E5C22292E617070656E642824286023247B6974656D7D6029293B5C725C6E202020207D293B5C725C6E2020202024285C22235C222B686F6F6B4964292E61747472285C226F6E636C69636B5C22';
wwv_flow_api.g_varchar2_table(13) := '2C5C2264726F70646F776E4974656D732E746F67676C6544726F70646F776E28295C22293B5C725C6E202020202F2F20436C6F7365207468652064726F70646F776E20696620746865207573657220636C69636B73206F757473696465206F662069745C';
wwv_flow_api.g_varchar2_table(14) := '725C6E2020202077696E646F772E6F6E636C69636B203D2066756E6374696F6E286576656E7429207B5C725C6E20202020202069662028216576656E742E7461726765742E6D61746368657328272E637573746F6D272929207B5C725C6E202020202020';
wwv_flow_api.g_varchar2_table(15) := '20207661722064726F70646F776E203D20646F63756D656E742E676574456C656D656E7442794964285C226D79437573746F6D44726F70646F776E5C22293B5C725C6E20202020202020206966202864726F70646F776E2E636C6173734C6973742E636F';
wwv_flow_api.g_varchar2_table(16) := '6E7461696E73285C2273686F775C2229292064726F70646F776E2E636C6173734C6973742E72656D6F7665285C2273686F775C22293B5C725C6E2020202020207D5C725C6E202020207D5C725C6E20207D5C725C6E202066756E6374696F6E20746F6767';
wwv_flow_api.g_varchar2_table(17) := '6C6544726F70646F776E2829207B5C725C6E20202020646F63756D656E742E676574456C656D656E7442794964285C226D79437573746F6D44726F70646F776E5C22292E636C6173734C6973742E746F67676C65285C2273686F775C22293B5C725C6E20';
wwv_flow_api.g_varchar2_table(18) := '207D5C725C6E202072657475726E207B5C725C6E20202020696E69742C5C725C6E20202020746F67676C6544726F70646F776E5C725C6E20207D5C725C6E7D28293B225D2C2266696C65223A2264726F70646F776E4974656D732E6A73227D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(197306411415046895)
,p_plugin_id=>wwv_flow_api.id(193000505468342184)
,p_file_name=>'js/dropdownItems.js.map'
,p_mime_type=>'text/plain'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '636F6E736F6C652E6C6F67282244726F70646F776E204974656D73204170657820506C7567696E22293B636F6E73742064726F70646F776E4974656D733D66756E6374696F6E28297B72657475726E7B696E69743A66756E6374696F6E28297B636F6E73';
wwv_flow_api.g_varchar2_table(2) := '6F6C652E6C6F672822496E69742064726F70646F776E22293B6C6574206F3D746869732E616374696F6E2E61747472696275746530312C743D746869732E616374696F6E2E61747472696275746530322E73706C697428222C22292C6E3D746869732E61';
wwv_flow_api.g_varchar2_table(3) := '6374696F6E2E61747472696275746530332E73706C697428222C22293B636F6E736F6C652E6C6F67287B686F6F6B49643A6F2C64726F70646F776E4974656D733A742C64726F70646F776E4F74686572733A6E7D292C242822236D61696E22292E616674';
wwv_flow_api.g_varchar2_table(4) := '657228273C6469762069643D226D79437573746F6D44726F70646F776E2220636C6173733D2264726F70646F776E2D636F6E74656E7420637573746F6D223E3C2F6469763E27293B6C657420733D24282223222B6F292E6F757465724865696768742829';
wwv_flow_api.g_varchar2_table(5) := '2C653D24282223222B6F292E6F666673657428292E746F702B732C643D24282223222B6F292E6F666673657428292E6C6566742D353B242822236D79437573746F6D44726F70646F776E22292E6373732822746F70222C652B22707822292C242822236D';
wwv_flow_api.g_varchar2_table(6) := '79437573746F6D44726F70646F776E22292E63737328226C656674222C642B22707822292C742E6D61702866756E6374696F6E286F297B24286023247B6F7D60292E616464436C6173732822637573746F6D22292C242822236D79437573746F6D44726F';
wwv_flow_api.g_varchar2_table(7) := '70646F776E22292E617070656E642824286023247B6F7D5F434F4E5441494E45526029297D292C6E2E6D61702866756E6374696F6E286F297B24286023247B6F7D60292E616464436C6173732822637573746F6D22292C242822236D79437573746F6D44';
wwv_flow_api.g_varchar2_table(8) := '726F70646F776E22292E617070656E642824286023247B6F7D6029297D292C24282223222B6F292E6174747228226F6E636C69636B222C2264726F70646F776E4974656D732E746F67676C6544726F70646F776E282922292C77696E646F772E6F6E636C';
wwv_flow_api.g_varchar2_table(9) := '69636B3D66756E6374696F6E286F297B696628216F2E7461726765742E6D61746368657328222E637573746F6D2229297B76617220743D646F63756D656E742E676574456C656D656E744279496428226D79437573746F6D44726F70646F776E22293B74';
wwv_flow_api.g_varchar2_table(10) := '2E636C6173734C6973742E636F6E7461696E73282273686F7722292626742E636C6173734C6973742E72656D6F7665282273686F7722297D7D7D2C746F67676C6544726F70646F776E3A66756E6374696F6E28297B646F63756D656E742E676574456C65';
wwv_flow_api.g_varchar2_table(11) := '6D656E744279496428226D79437573746F6D44726F70646F776E22292E636C6173734C6973742E746F67676C65282273686F7722297D7D7D28293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(197306881139046897)
,p_plugin_id=>wwv_flow_api.id(193000505468342184)
,p_file_name=>'js/dropdownItems.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done