# Oracle Apex Dropdown Plugin
  This plugin can be used to enable a button to create a dropdown area for configured page items or buttons.

## Requirements
  * The button that will call the dropdown need to have a Static ID configured, and it's action should be setted with Dynamic Action, without any action vinculated.
  * Page items that will be used in the dropdown need to have the class 'custom' added on: Advanced -> CSS Classes
  * Page buttons that should be added to the dropdown need to have a Static ID configured.

## Configuration
  * Import the file 'dynamic_action_plugin_mvx_dropdown_items.sql' in your application as a plugin.
  * Create a Dynamic Action on Page Load.
  * Create an True action 'Dropdownn Items [Plug-in]'
  * On 'Hook Static ID' put the static Id from the button that will call the dropdown.
  * On 'Items Dropdown' select the page items that will be moved into the dropdown.
  * On 'Static ID (Others)' write the static ID from page buttons or custom elements, separated by a comma. Eg: 'button-1,button-test,custom-element'.

## To-do
  * Create support for custom css configuration, like padding, background-color, offset for hooked position etc.
  * Create support for multiple dropdowns on the same page.
  * Fix the dropdown hook position when using a colapsable lateral Navigation Menu.