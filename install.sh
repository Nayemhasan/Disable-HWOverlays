SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=true
LATESTARTSERVICE=false
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"
REPLACE="
/system/bin/safetypatch
"
print_modname() {
  ui_print "- Diable HW Overlay by 🍉"
  ui_print "- It will drink more battery"
}
on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}
set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm $MODPATH/system/bin/safetypatch  0 0 0554
}

