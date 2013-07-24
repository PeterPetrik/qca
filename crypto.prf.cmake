QCA_INCDIR = @QCA_INCLUDE_INSTALL_DIR@
QCA_LIBDIR = @QCA_LIBRARY_INSTALL_DIR@

CONFIG *= qt
INCLUDEPATH += $$QCA_INCDIR/QtCrypto
LIBS += -L$$QCA_LIBDIR

LINKAGE = -lqca
CONFIG(debug, debug|release) {
	windows:LINKAGE = -lqcad
	mac:LINKAGE = -lqca_debug
}
LIBS += $$LINKAGE
