require('code_runner').setup({
  filetype = {
    java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
        javascript = "node",
        haskell = "stack runhaskell",
        rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
        typescript = "deno run",
        cpp = {
        "cd $dir &&",
        "g++ -std=c++17 $fileName",
        "-o /tmp/$fileNameWithoutExt &&",
        "/tmp/$fileNameWithoutExt",
      },
	},
})
