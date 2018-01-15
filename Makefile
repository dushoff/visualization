
######################################################################

## Hooks

current: target
target = Makefile
-include target.mk

###################################################################

Sources += Makefile .ignore README.md upstuff.mk LICENSE.md
include upstuff.mk

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

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/hybrid.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/texdeps.mk
