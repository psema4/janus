# GNU Make project makefile autogenerated by GENie
ifndef config
  config=debug32
endif

ifndef verbose
  SILENT = @
endif

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

ifeq (posix,$(SHELLTYPE))
  MKDIR = $(SILENT) mkdir -p "$(1)"
  COPY  = $(SILENT) cp -fR "$(1)" "$(2)"
else
  MKDIR = $(SILENT) mkdir "$(subst /,\\,$(1))" 2> nul || true
  COPY  = $(SILENT) copy /Y "$(subst /,\\,$(1))" "$(subst /,\\,$(2))"
endif

CC  = x86_64-apple-darwin13-clang
CXX = x86_64-apple-darwin13-clang++
AR  = x86_64-apple-darwin13-ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),debug32)
  OBJDIR     = ../../_build/osx32_clang/obj/x32/Debug/cmft
  TARGETDIR  = ../../_build/osx32_clang/bin
  TARGET     = $(TARGETDIR)/libcmftDebug.a
  DEFINES   += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS
  INCLUDES  += -I../../dependency/bx/include/compat/osx -I../../dependency -I../../include -I../../src/cmft
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -g -m32 -m32 -Wfatal-errors -msse2 -Wunused-value -Wundef -stdlib=libc++ -Waddress -Wc++11-compat -Wchar-subscripts -Wcomment -Wformat -Wmissing-braces -Wnonnull -Wparentheses -Wreorder -Wreturn-type -Wsequence-point -Wsign-compare -Wstrict-aliasing -Wstrict-overflow=1 -Wswitch -Wtrigraphs -Wuninitialized -Wunknown-pragmas -Wunused-function -Wunused-label -Wunused-value -Wunused-variable -Wvolatile-register-var -Wempty-body -Wignored-qualifiers -Wmissing-field-initializers -Wsign-compare -Wtype-limits -Wuninitialized -Wunused-parameter -Wcast-qual -Wdisabled-optimization -Wdiv-by-zero -Wendif-labels -Wformat-extra-args -Wformat-security -Wformat-y2k -Wimport -Winit-self -Winvalid-pch -Werror=missing-braces -Wmissing-include-dirs -Wmultichar -Wpacked -Wpointer-arith -Wreturn-type -Wsequence-point -Wsign-compare -Wstrict-aliasing -Wstrict-aliasing=2 -Wshadow -Wwrite-strings -Werror=declaration-after-statement -Werror=implicit-function-declaration -Werror=nested-externs -Werror=old-style-definition -Werror=strict-prototypes -Wno-cast-align -Wno-enum-compare -Wno-unused-function -Wno-variadic-macros -Wno-missing-format-attribute -Wno-inline -Wuninitialized -Wconsumed -Wunused-parameter
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS) -fno-rtti -fno-exceptions
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -m32 -L/usr/lib32 -stdlib=libc++
  LDDEPS    +=
  LIBS      += $(LDDEPS)
  LINKCMD    = $(AR) -rcs $(TARGET)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = ../../_build/osx32_clang/obj/x32/Release/cmft
  TARGETDIR  = ../../_build/osx32_clang/bin
  TARGET     = $(TARGETDIR)/libcmftRelease.a
  DEFINES   += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS
  INCLUDES  += -I../../dependency/bx/include/compat/osx -I../../dependency -I../../include -I../../src/cmft
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -g -O3 -m32 -m32 -Wfatal-errors -msse2 -Wunused-value -Wundef -stdlib=libc++ -Waddress -Wc++11-compat -Wchar-subscripts -Wcomment -Wformat -Wmissing-braces -Wnonnull -Wparentheses -Wreorder -Wreturn-type -Wsequence-point -Wsign-compare -Wstrict-aliasing -Wstrict-overflow=1 -Wswitch -Wtrigraphs -Wuninitialized -Wunknown-pragmas -Wunused-function -Wunused-label -Wunused-value -Wunused-variable -Wvolatile-register-var -Wempty-body -Wignored-qualifiers -Wmissing-field-initializers -Wsign-compare -Wtype-limits -Wuninitialized -Wunused-parameter -Wcast-qual -Wdisabled-optimization -Wdiv-by-zero -Wendif-labels -Wformat-extra-args -Wformat-security -Wformat-y2k -Wimport -Winit-self -Winvalid-pch -Werror=missing-braces -Wmissing-include-dirs -Wmultichar -Wpacked -Wpointer-arith -Wreturn-type -Wsequence-point -Wsign-compare -Wstrict-aliasing -Wstrict-aliasing=2 -Wshadow -Wwrite-strings -Werror=declaration-after-statement -Werror=implicit-function-declaration -Werror=nested-externs -Werror=old-style-definition -Werror=strict-prototypes -Wno-cast-align -Wno-enum-compare -Wno-unused-function -Wno-variadic-macros -Wno-missing-format-attribute -Wno-inline -Wuninitialized -Wconsumed -Wunused-parameter
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS) -fno-rtti -fno-exceptions
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -m32 -L/usr/lib32 -stdlib=libc++
  LDDEPS    +=
  LIBS      += $(LDDEPS)
  LINKCMD    = $(AR) -rcs $(TARGET)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = ../../_build/osx64_clang/obj/x64/Debug/cmft
  TARGETDIR  = ../../_build/osx64_clang/bin
  TARGET     = $(TARGETDIR)/libcmftDebug.a
  DEFINES   += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS
  INCLUDES  += -I../../dependency/bx/include/compat/osx -I../../dependency -I../../include -I../../src/cmft
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -g -m64 -m64 -Wfatal-errors -msse2 -Wunused-value -Wundef -stdlib=libc++ -Waddress -Wc++11-compat -Wchar-subscripts -Wcomment -Wformat -Wmissing-braces -Wnonnull -Wparentheses -Wreorder -Wreturn-type -Wsequence-point -Wsign-compare -Wstrict-aliasing -Wstrict-overflow=1 -Wswitch -Wtrigraphs -Wuninitialized -Wunknown-pragmas -Wunused-function -Wunused-label -Wunused-value -Wunused-variable -Wvolatile-register-var -Wempty-body -Wignored-qualifiers -Wmissing-field-initializers -Wsign-compare -Wtype-limits -Wuninitialized -Wunused-parameter -Wcast-qual -Wdisabled-optimization -Wdiv-by-zero -Wendif-labels -Wformat-extra-args -Wformat-security -Wformat-y2k -Wimport -Winit-self -Winvalid-pch -Werror=missing-braces -Wmissing-include-dirs -Wmultichar -Wpacked -Wpointer-arith -Wreturn-type -Wsequence-point -Wsign-compare -Wstrict-aliasing -Wstrict-aliasing=2 -Wshadow -Wwrite-strings -Werror=declaration-after-statement -Werror=implicit-function-declaration -Werror=nested-externs -Werror=old-style-definition -Werror=strict-prototypes -Wno-cast-align -Wno-enum-compare -Wno-unused-function -Wno-variadic-macros -Wno-missing-format-attribute -Wno-inline -Wuninitialized -Wconsumed -Wunused-parameter
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS) -fno-rtti -fno-exceptions
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -m64 -L/usr/lib64 -stdlib=libc++
  LDDEPS    +=
  LIBS      += $(LDDEPS)
  LINKCMD    = $(AR) -rcs $(TARGET)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR     = ../../_build/osx64_clang/obj/x64/Release/cmft
  TARGETDIR  = ../../_build/osx64_clang/bin
  TARGET     = $(TARGETDIR)/libcmftRelease.a
  DEFINES   += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS
  INCLUDES  += -I../../dependency/bx/include/compat/osx -I../../dependency -I../../include -I../../src/cmft
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -g -O3 -m64 -m64 -Wfatal-errors -msse2 -Wunused-value -Wundef -stdlib=libc++ -Waddress -Wc++11-compat -Wchar-subscripts -Wcomment -Wformat -Wmissing-braces -Wnonnull -Wparentheses -Wreorder -Wreturn-type -Wsequence-point -Wsign-compare -Wstrict-aliasing -Wstrict-overflow=1 -Wswitch -Wtrigraphs -Wuninitialized -Wunknown-pragmas -Wunused-function -Wunused-label -Wunused-value -Wunused-variable -Wvolatile-register-var -Wempty-body -Wignored-qualifiers -Wmissing-field-initializers -Wsign-compare -Wtype-limits -Wuninitialized -Wunused-parameter -Wcast-qual -Wdisabled-optimization -Wdiv-by-zero -Wendif-labels -Wformat-extra-args -Wformat-security -Wformat-y2k -Wimport -Winit-self -Winvalid-pch -Werror=missing-braces -Wmissing-include-dirs -Wmultichar -Wpacked -Wpointer-arith -Wreturn-type -Wsequence-point -Wsign-compare -Wstrict-aliasing -Wstrict-aliasing=2 -Wshadow -Wwrite-strings -Werror=declaration-after-statement -Werror=implicit-function-declaration -Werror=nested-externs -Werror=old-style-definition -Werror=strict-prototypes -Wno-cast-align -Wno-enum-compare -Wno-unused-function -Wno-variadic-macros -Wno-missing-format-attribute -Wno-inline -Wuninitialized -Wconsumed -Wunused-parameter
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS) -fno-rtti -fno-exceptions
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -m64 -L/usr/lib64 -stdlib=libc++
  LDDEPS    +=
  LIBS      += $(LDDEPS)
  LINKCMD    = $(AR) -rcs $(TARGET)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/src/cmft/clcontext.o \
	$(OBJDIR)/src/cmft/image.o \
	$(OBJDIR)/src/cmft/allocator.o \
	$(OBJDIR)/src/cmft/cubemapfilter.o \
	$(OBJDIR)/src/cmft/common/print.o \
	$(OBJDIR)/src/cmft/common/stb_image.o \

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/src/cmft \
	$(OBJDIR)/src/cmft/common \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIRS) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Archiving cmft
	$(SILENT) $(LINKCMD) $(OBJECTS)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(OBJDIR)
	-$(call MKDIR,$(OBJDIR))
	-$(call MKDIR,$(OBJDIR)/src/cmft)
	-$(call MKDIR,$(OBJDIR)/src/cmft/common)

clean:
	@echo Cleaning cmft
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -MMD -MP $(DEFINES) $(INCLUDES) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
endif

$(OBJDIR)/src/cmft/clcontext.o: ../../src/cmft/clcontext.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/cmft/image.o: ../../src/cmft/image.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/cmft/allocator.o: ../../src/cmft/allocator.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/cmft/cubemapfilter.o: ../../src/cmft/cubemapfilter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/cmft/common/print.o: ../../src/cmft/common/print.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/src/cmft/common/stb_image.o: ../../src/cmft/common/stb_image.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
