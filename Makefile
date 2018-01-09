
Sources = Makefile .gitignore README.md makestuff.mk LICENSE.md
-include target.mk

# -include $(ms)/perl.def

##################################################################

## Content

private:
	git clone https://github.com/bbolker/stat744_private.git $@

course:
	git clone https://github.com/bbolker/stat744.git $@

######################################################################

include makestuff.mk
-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/hybrid.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/texdeps.mk
