local config = {

cmd = {

-- 
'java', -- Or the absolute path '/path/to/java11_or_newer/bin/java'
'-Declipse.application=org.eclipse.jdt.ls.core.id1',
'-Dosgi.bundles.defaultStartLevel=4',
'-Declipse.product=org.eclipse.jdt.ls.core.product',
'-Dlog.protocol=true',
'-Dlog.level=ALL',
'-Xms1g',
'--add-modules=ALL-SYSTEM',
'--add-opens', 'java.base/java.util=ALL-UNNAMED',
'--add-opens', 'java.base/java.lang=ALL-UNNAMED',
-- 
'-jar', '/Users/ahmedsaheed/local/share/nvim/java/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
'-configuration', '/Users/ahmedsaheed/local/share/nvim/java/config_mac',
'-data', '/Users/ahmedsaheed/local/share/nvim/java'
},
settings = {

java = {
    signatureHelp = { enabled = true },
    import = { enabled = true },
    rename = { enabled = true },

}
},
init_options = {

bundles = {
}
},
}
