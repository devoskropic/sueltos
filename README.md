# sueltos

Aquí voy a añadir distintos widgets para conocerlos mejor y/o trabajar con ellos desde distintos enfoques, configuraciones o implementaciones según vaya requiriendo utilizarlos en otros proyectos.

## Disclaimer (monday May 27 2024) 
   I've realized that latests changes on Git where until ver1.0.0, so once I already ended up modificating v1.1.0 this day, just after at least 3 months of not working in this project since February (I  belive) was too late to revert changes so, I hope this could be a good reference for averyone that takes a look at it and for myself, Let me know if you have any doubts.

### v_1.1.0
   - Made changes on this version, the drawer now is stateless, and their 'state' it's now managed via provider (lib/providers/drawer_provider.dart).
   - Added theme to external file.

### v_1.2.0
   - Stateless drawer, it can load the screen corresponding to each drawer item or use the DefaultScreen widget as we see on X.

### v_1.1.0
   - Stateful Drawer added, every item can be opened either:
      - At HomePage with its values
      - At FirstScreen page, with no drawer, just leading as X app.

### v_1.0.0 
   - All v_0.1.0 drawers now has buildHeader and buildMenuItems, giving a fresh new and cleaner look, new drawers will use it too.
   
   - New drawer, each children called by an item is opened into a new external file (on pages/drawer_children folder).

   - The style of the drawer it's like X: you tap on an item and after that a new page is opened, no drawer on the scaffold, just the leading icon to go back to the previous page, the drawer is stateless and it doesn't highlights the tapped item.
   
### v_0.1.0
   - Incluye 3 tipos de drawer y una clase para generar ListTiles.

   - None of them opens anything, if you tap/click any item it just close the drawer.

   **- DrawerHeader() drawer_hdr.dart**
      - DrawerHeader is a stack, with positioned children.
      - Gets the onTap function from Home widget (so, all items would do exactly the same), each item is added through  DrawerOption.

   **- NoStackDrawer() no_stack_drawer.dart**
      - DrawerHeader is a ListTile (personally I don't recommend the use of it).
      - Same onTap case than past previous drawer.

   **- OsaDrawer() osa_drawer.dart**
      - Implements UserAccountsDrawerHeader
      - MenuItems are all ListTiles.