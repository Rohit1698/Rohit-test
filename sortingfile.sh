#!/bin/bash



echo "This programe will sort out top 10 biggest file in the file system passed by positional argument"

path="$1"
echo $path
du -ah $path | sort -hr | head -n 5 > ./demofile.txt
echo "this is the list of big files in the filesystem $path"
cat ./demofile.txt

<<comment

This line in your script:


du -ah "$path" | sort -hr | head -n 10 > ./demofile.txt

does the following:

🔍 Step-by-Step Explanation

du -ah "$path"

Lists disk usage for all files and directories under the specified path.

-a: includes files (not just directories).

-h: makes the sizes human-readable (e.g., 10K, 2M, 3G).

| sort -hr

Sorts the results:

-h: sorts human-readable sizes correctly.

-r: sorts in reverse order (largest first).

| head -n 10

Shows only the top 10 biggest entries.

> ./demofile.txt

Redirects the output into a file named demofile.txt in the current directory.

comment
