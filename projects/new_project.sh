#!/bin/sh
project_name=$1
cp -r skeleton $project_name
cd $project_name
mv NAME.gemspec $project_name.gemspec
mv bin/NAME bin/$project_name
mv tests/test_NAME.rb tests/test_$project_name.rb
mv lib/NAME lib/$project_name
mv lib/NAME.rb lib/$project_name.rb
find . -name "*NAME*" -print
