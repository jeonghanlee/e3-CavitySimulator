from org.csstudio.opibuilder.scriptUtil import ConsoleUtil
from org.csstudio.opibuilder.scriptUtil import PVUtil
from org.csstudio.opibuilder.scriptUtil import ColorFontUtil
import WidgetUtil

value = PVUtil.getDouble(pvs[0])
name = pvs[1].getName()


if value == 0:
	PVUtil.writePV(name, "Model")
elif value == 1:
	PVUtil.writePV(name, "CONST")
elif value == 2:
	PVUtil.writePV(name, "AWG")
elif value == 3:
	PVUtil.writePV(name, "0")