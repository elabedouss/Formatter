/*******************************************************************************
 * Format Section
 ******************************************************************************/

/*
 *  switch form actions 
 *  by default is Json action
 */
function SwitchFormActionToJson(){
	document.forms['formFormatting'].action=$("#jsonAction").attr('value');
}
function SwitchFormActionToXml(){
	document.forms['formFormatting'].action=$("#xmlAction").attr('value');
}
function SwitchFormActionToHtml(){
	document.forms['formFormatting'].action=$("#htmlAction").attr('value');
}
function SwitchFormActionToJavascript(){	
	document.forms['formFormatting'].action=$("#javascriptAction").attr('value');
}
function SwitchFormActionToCss(){
	document.forms['formFormatting'].action=$("#cssAction").attr('value');
}
function SwitchFormActionToSql(){
	document.forms['formFormatting'].action=$("#sqlAction").attr('value');
}
function SwitchFormActionToJava(){	
	document.forms['formFormatting'].action=$("#javaAction").attr('value');
}

function IsJsonString(str) {
	str = document.forms['formFormatting'].jsonText.value;
	if (str === "") {
		UIkit.notification({
			message : 'Empty JSON input',
			status : 'danger',
			pos : 'top-center',
			timeout : 3000
		});
		return false;
	} else {
		try {
			JSON.parse(str);
		} catch (e) {
			UIkit.notification({
				message : 'Not a JSON Object',
				status : 'danger',
				pos : 'top-center',
				timeout : 3000
			});
			return false;
		}
		return true;
	}
}

function IsXmlString(str) {
	str = document.forms['formFormatting'].xmlText.value;
	if (str === "") {
		UIkit.notification({
			message : 'Empty XML input',
			status : 'danger',
			pos : 'top-center',
			timeout : 3000
		});
		return false;
	} else {
		try {
			$.parseXML(str);
			return true;
		} catch (e) {
			UIkit.notification({
				message : 'Not a XML Object',
				status : 'danger',
				pos : 'top-center',
				timeout : 3000
			});
			return false;
		}
		return true;
	}
}


function IsHtmlString(str) {
	str = document.forms['formFormatting'].htmlText.value;
	if (str === "") {
		UIkit.notification({
			message : 'Empty HTML input',
			status : 'danger',
			pos : 'top-center',
			timeout : 3000
		});
		return false;
	} else {
		try {
			$.parseHTML(str);
			return true;
		} catch (e) {
			UIkit.notification({
				message : 'Not a HTML Object',
				status : 'danger',
				pos : 'top-center',
				timeout : 3000
			});
			return false;
		}
		return true;
	}
}

function IsJavascriptString(str) {
	str = document.forms['formFormatting'].javascriptText.value;
	//TO DO
}

function IsCssString(str) {
	str = document.forms['formFormatting'].cssText.value;
	//TO DO
}

function IsSqlString(str) {
	str = document.forms['formFormatting'].sqlText.value;
	//TO DO
}

function IsJavaString(str) {
	str = document.forms['formFormatting'].javaText.value;
	//TO DO
}

function copyToClipboard() {
	var copyText = $('[name="jsonText"]');
	copyText.select();
	document.execCommand("Copy");
	UIkit.notification({
		message : 'Copied!',
		status : 'success',
		pos : 'top-center',
		timeout : 1000
	});
}