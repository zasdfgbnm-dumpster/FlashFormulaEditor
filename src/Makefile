FLEXPATH=/opt/flex-sdk
MXMLC=$(FLEXPATH)/bin/mxmlc
THEMES=$(FLEXPATH)/samples/themes/cobalt/cobalt.swc $(FLEXPATH)/frameworks/themes/Spark/spark.css
all:FlashFormulaEditor.swf
FlashFormulaEditor.swf:FORCE
	$(MXMLC) FlashFormulaEditor.mxml -theme $(THEMES) -output FlashFormulaEditor.swf
.PHONY:clean FORCE
clean:
	rm -f *.swf *.swz
