# !/bin/sh

# Clean out old brewfile/create new one.
> Brewfile

# Add in all brews, in alphabetical order.
for i in $(brew leaves | sort);
do
	echo brew \'$i\' >> Brewfile
done

echo >> Brewfile

# Add in all casks, in alphabetical order.
for i in $(brew cask list | sort);
do
	echo cask \'$i\' >> Brewfile
done
