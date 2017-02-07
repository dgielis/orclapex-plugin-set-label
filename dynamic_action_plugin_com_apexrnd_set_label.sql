set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.0.00.45'
,p_default_workspace_id=>8549726844268266
,p_default_application_id=>399
,p_default_owner=>'TRAINING'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/com_apexrnd_set_label
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(21937859438879052)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM.APEXRND.SET_LABEL'
,p_display_name=>'Set Label'
,p_category=>'COMPONENT'
,p_supported_ui_types=>'DESKTOP'
,p_javascript_file_urls=>'#PLUGIN_FILES#com_apexrnd_set_label.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render_set_label (',
'    p_dynamic_action   IN apex_plugin.t_dynamic_action,',
'    p_plugin           IN apex_plugin.t_plugin',
') return apex_plugin.t_dynamic_action_render_result ',
'is',
'  l_result   apex_plugin.t_dynamic_action_render_result;',
'  l_type     varchar2(4000) := p_dynamic_action.attribute_01;',
'  l_value    varchar2(4000) := p_dynamic_action.attribute_02;  ',
'begin',
'  l_result.javascript_function := ''setLabel'';',
'  l_result.attribute_01        := l_type;  ',
'  l_result.attribute_02        := l_value;',
'  return l_result;',
'end render_set_label;'))
,p_api_version=>2
,p_render_function=>'render_set_label'
,p_standard_attributes=>'ITEM:REQUIRED'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'Oracle Application Express comes with a Dynamic Action called "Set Value". This Dynamic Action will set the value of an item. In analogy to the Dynamic Action: Set Value, Set Label will set the label of an item. Just like Set Value it will be possibl'
||'e to define multiple items in the Effected Elements, so labels of the different items are set at once.'
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/dgielis/orclapex-plugin-set-label'
,p_files_version=>5
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(21945791133974513)
,p_plugin_id=>wwv_flow_api.id(21937859438879052)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Set Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'STATIC_ASSIGNMENT'
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21946429059975404)
,p_plugin_attribute_id=>wwv_flow_api.id(21945791133974513)
,p_display_sequence=>10
,p_display_value=>'Static Assignment'
,p_return_value=>'STATIC_ASSIGNMENT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21947669913983201)
,p_plugin_attribute_id=>wwv_flow_api.id(21945791133974513)
,p_display_sequence=>20
,p_display_value=>'JavaScript Expression'
,p_return_value=>'JAVASCRIPT_EXPRESSION'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21948093160984258)
,p_plugin_attribute_id=>wwv_flow_api.id(21945791133974513)
,p_display_sequence=>30
,p_display_value=>'SQL Statement'
,p_return_value=>'SQL_STATEMENT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21948449525985607)
,p_plugin_attribute_id=>wwv_flow_api.id(21945791133974513)
,p_display_sequence=>40
,p_display_value=>'PL/SQL Expression'
,p_return_value=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21948842414986815)
,p_plugin_attribute_id=>wwv_flow_api.id(21945791133974513)
,p_display_sequence=>50
,p_display_value=>'PL/SQL Function Body'
,p_return_value=>'FUNCTION_BODY'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21949212592987868)
,p_plugin_attribute_id=>wwv_flow_api.id(21945791133974513)
,p_display_sequence=>60
,p_display_value=>'Dialog Return Item'
,p_return_value=>'DIALOG_RETURN_ITEM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(21943331209959536)
,p_plugin_id=>wwv_flow_api.id(21937859438879052)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Value'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(21945791133974513)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'STATIC_ASSIGNMENT'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0A4F7261636C65204170706C69636174696F6E204578707265737320506C75672D696E3A20536574204C6162656C0A536F757263653A2068747470733A2F2F6769746875622E636F6D2F646769656C69732F6F72636C617065782D706C7567696E2D';
wwv_flow_api.g_varchar2_table(2) := '7365742D6C6162656C0A2A2F0A0A66756E6374696F6E207365744C6162656C2829207B0A20202F2F2054686520747970650A20207661722074797065203D20746869732E616374696F6E2E61747472696275746530313B0A0A20202F2F20537461746963';
wwv_flow_api.g_varchar2_table(3) := '2041737369676E6D656E740A2020766172206E65774C6162656C203D20746869732E616374696F6E2E61747472696275746530323B0A0A20202F2F204A6176615363726970742045787072657373696F6E206574632E0A20202F2F20544F20444F0A0A20';
wwv_flow_api.g_varchar2_table(4) := '2024282723272B2428746869732E6166666563746564456C656D656E7473292E617474722827696427292B275F4C4142454C27292E68746D6C286E65774C6162656C293B0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(21951902796071421)
,p_plugin_id=>wwv_flow_api.id(21937859438879052)
,p_file_name=>'com_apexrnd_set_label.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
