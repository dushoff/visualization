
Sources += Makefile .ignore README.md makestuff.mk LICENSE.md
-include target.mk

# -include $(ms)/perl.def

##################################################################

## Content

clonedirs += private
private:
	git clone https://github.com/bbolker/stat744_private.git $@

clonedirs += course
course:
	git clone https://github.com/bbolker/stat744.git $@

Ignore += $(clonedirs)

######################################################################

include makestuff.mk
-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/hybrid.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/texdeps.mk
