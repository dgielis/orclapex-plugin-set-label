# orclapex-plugin-set-label
Oracle Application Express Plug-in: Set Label

Oracle Application Express comes with a Dynamic Action called "Set Value".
This Dynamic Action will set the value of an item. In analogy to the Dynamic Action: Set Value, Set Label will set the label of an item. Just like Set Value it will be possible to define multiple items in the Effected Elements, so labels of the different items are set at once.

The plugin looks like this:

### Identification 

Action: Set Label

### Settings

Set Type: 
- Static Assignment
- JavaScript Expression
- SQL Statement
- PL/SQL Expression
- PL/SQL Function Body
- Dialog Return Item

Depending the previous type other boxes arrive to set the value, items to submit, suppress change event etc.

Affected Elements:
Item(s)


*Note: currently the plugin is build for APEX 5.1, once it's complete we will backport to APEX 5.0 too*
