-- see `:help vim.lsp.start_client` Understand the supported `config` Overview of options .
local config = {

-- Command to start the language server 
-- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
cmd = {

-- 
'java', -- Or the absolute path '/path/to/java11_or_newer/bin/java'
-- Depending on `java` Whether in your $PATH Environment variable and whether it points to the correct version .
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
--'-jar', '/path/to/jdtls_install_location/plugins/org.eclipse.equinox.launcher_VERSION_NUMBER.jar',
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^
-- Must point to Change this to 
-- eclipse.jdt.ls The installation path The actual version 
'-jar', '/Users/ahmedsaheed/local/share/nvim/java/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
-- 
--'-configuration', '/path/to/jdtls_install_location/config_SYSTEM',
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^
-- Must point to the Change to one of `linux`, `win` or `mac`
-- eclipse.jdt.ls installation Depending on your system.
-- Here is what we unzipped above jdt-language-server Absolute path , I am here linux, Please adjust according to the system type 
'-configuration', '/Users/ahmedsaheed/local/share/nvim/java/config_mac',
-- 
-- see also README Medium “ Data directory configuration ” part 
'-data', '/Users/ahmedsaheed/local/share/nvim/java'
},
-- 
-- This is the default setting , If not provided , You can delete it . Or adjust as needed .
-- Each unique root_dir A dedicated... Will be started LSP Servers and clients 
-- root_dir = require('jdtls.setup').find_root({
-- '.git', 'mvnw', 'gradlew'}),
-- It can be configured here eclipse.jdt.ls Specific settings 
-- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
-- A list of options 
settings = {

java = {
    signatureHelp = { enabled = true },
    import = { enabled = true },
    rename = { enabled = true },



}
},
-- Language server `initializationOptions`
-- You need to use jar File path extension `bundles`
-- If you want to use additional eclipse.jdt.ls plug-in unit .
--
-- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
--
-- If you're not going to use a debugger or something eclipse.jdt.ls plug-in unit , You can delete it 
init_options = {

bundles = {
}
},
}
-- This will start a new client and server ,
-- Or according to `root_dir` Attach to existing clients and servers .
-- require('jdtls').start_or_attach(config)
