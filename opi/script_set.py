from org.csstudio.opibuilder.scriptUtil import ConsoleUtil
from org.csstudio.opibuilder.scriptUtil import PVUtil
import WidgetUtil
from org.eclipse.jface.dialogs import MessageDialog


lvl1 = PVUtil.getString(pvs[0])
lvl2 = PVUtil.getString(pvs[1])
lvl3 = PVUtil.getString(pvs[2])
lvl4 = PVUtil.getString(pvs[3])


if lvl1=="" or lvl2 =="" or lvl3 == "" or lvl4 =="":
	MessageDialog.openWarning(None, "Warning", "At least one field is empty!")    
	flag = 0
else:
	flag = 1



if flag ==1:
	if lvl4 == "?":
		StringToSend = lvl1+":"+lvl2+":"+lvl3+lvl4
		PVUtil.writePV("LLRF_USER:CavitySimulator:StringToSendQ", StringToSend)
	else:
		StringToSend = lvl1+":"+lvl2+":"+lvl3+" "+lvl4
		PVUtil.writePV("LLRF_USER:CavitySimulator:StringToSend", StringToSend)



