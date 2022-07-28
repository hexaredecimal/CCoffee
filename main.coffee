import "<iup.h>"

exit_cb = (self) -> IUP_CLOSE
open_cb = (self) -> 
    cout << "Open the file" << endl
    0 


_main = (argc, argv) ->

    IupOpen(argc, argv)
    multitext = IupText(NULL)
    IupSetAttribute(multitext, "MULTILINE".c_str(), "YES".c_str())
    IupSetAttribute(multitext, "EXPAND".c_str(), "YES".c_str())

    item_open = IupItem("Open".c_str(), NULL)
    IupSetCallback(item_open, "ACTION".c_str(), open_cb)
    item_saveas = IupItem("Save As".c_str(), NULL)
    item_exit = IupItem("Exit".c_str(), NULL)
    IupSetCallback(item_exit, "ACTION".c_str(), exit_cb)

    file_menu = IupMenu(item_open,item_saveas,IupSeparator(),item_exit,NULL)
    sub1_menu = IupSubmenu("File".c_str(), file_menu)
    menu = IupMenu(sub1_menu, NULL)


    vbox = IupVbox(multitext,NULL)
    dlg = IupDialog(vbox)
    IupSetAttributeHandle(dlg, "MENU".c_str(), menu)
    IupSetAttribute(dlg, "TITLE".c_str(), "Simple Notepad".c_str())
    IupSetAttribute(dlg, "SIZE".c_str(), "QUARTERxQUARTER".c_str())

    IupShowXY(dlg, IUP_CENTER, IUP_CENTER)
    IupSetAttribute(dlg, "USERSIZE".c_str(), NULL)

    IupMainLoop()

    IupClose()
    0
