CFLAGS=-g -O0 -Wall -ltsm -D_GNU_SOURCE -lm
GTK=`pkg-config --cflags --libs gtk+-3.0 cairo pango pangocairo xkbcommon`
FILES=src/wlterm.c src/wlt_font.c src/wlt_render.c src/shl_htable.c src/shl_pty.c

all:
	clang -o wlterm $(FILES) $(CFLAGS) $(GTK) -L/usr/local/lib -Wno-cast-qual -Wno-padded -Wno-shorten-64-to-32 -Wno-sign-conversion -Wno-unused-parameter -Wno-shift-sign-overflow -Wno-cast-align -Wno-documentation -Wno-documentation-unknown-command -Wno-gnu-statement-expression -Wno-reserved-id-macro -Wno-missing-field-initializers -Wno-float-equal -Wno-float-conversion -Wno-unreachable-code -Wno-conversion -Wno-format-nonliteral -Wno-switch-enum -Wno-gnu-conditional-omitted-operand -Wno-double-promotion -Wno-unused-variable -Wno-language-extension-token -Wno-assign-enum -Wno-comma -Wno-absolute-value # TODO: remove -Wno-... and fix sources
