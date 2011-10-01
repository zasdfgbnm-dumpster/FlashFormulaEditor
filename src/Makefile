FLEXPATH=/usr/local/flex_sdk#replace this with your own flex path
MXMLC=$(FLEXPATH)/bin/mxmlc
THEME=$(FLEXPATH)/samples/themes/cobalt/cobalt.swc $(FLEXPATH)/frameworks/themes/Spark/spark.css
FlashFormulaEditor.swf:FlashFormulaEditor.mxml
%.swf:%.mxml
	$(MXMLC) $^ -theme $(THEME) -output $@
clean:
	rm -f *.swf *.swz
