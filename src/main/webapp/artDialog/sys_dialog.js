var closeMsg = "<br/><label id=timeId></label>&nbsp;秒钟后将自动关闭";// 定时关闭提示信息
/**
 * 共用配置
 * @param {Object} config
 */
(function(config) {
	config['width'] = '300px';
	config['height'] = '100px';
	config['okVal'] = '确定';
	config['cancelVal'] = '关闭';
	config['title'] = '操作提示';
	config['opacity'] = 0.37;
})(art.dialog.defaults);

/**
 * 提问对话框
 * @param {Object} msg 提示信息
 * @param {Object} succCall 用户点确定调用的方法
 * @param {Object} cancelCall 用户点取消调用的方法
 * @return {TypeName} 
 */
function questionDialog(msg, succCall, cancelCall) {
	var options = {
		content : '<b>' + msg + '</b>',
		ok : function() {
			if (succCall != null && succCall != "") {
				var tempFun = succCall;
				tempFun();
			}
			return true;
		},
		cancelVal : '取消',
		cancel : function() {

			return true;
		},
		icon : 'question'
	}
	var dialog;
	dialog = newDialog(options);
	dialog.lock();
}
/**
 * 警告对话框
 * @param {Object} msg 警告信息
 */
function waringDialog(msg) {
	var dialog = art.dialog( {
		init : function() {
			var that = this;
			var i = 2;
			$("#timeId").html(i);
			var fn = function() {
				$("#timeId").html(i);
				!i && that.close();
				i--;
			};
			timer = setInterval(fn, 1000);
			fn();
		},
		close : function() {
			clearInterval(timer);
		},
		content : '<b>' + msg + '</b>',
		icon : 'warning'
	});
	dialog.lock();
}
/**
 * 成功信息提示
 * @param {Object} msg 成功提示信息
 * @param {Object} afterCall 提示后所调用的方法
 */
function succeedDialog(msg, afterCall) {
	var dialog;
	var options = {
		init : function() {
			var that = this;
			var i = 1;
			$("#timeId").html(i);
			var fn = function() {
				$("#timeId").html(i);
				!i && that.close();
				i--;
			};
			timer = setInterval(fn, 1000);
			fn();
		},
		content : '<b>' + msg + '</b>' + closeMsg,
		close : function() {
			clearInterval(timer);
			if (afterCall != null && afterCall != "") {
				var tempFun = afterCall;
				tempFun();
			}
			return true;
		},

		icon : 'succeed',
		time : 1,
		cancel : function() {
			clearInterval(timer);
			return true;
		}
	}
	dialog = newDialog(options);

	dialog.lock();
}
/**
 * 错误信息提示对话框
 * @param {Object} msg 提示信息
 * @param {Object} afterCall 弹出信息框关闭后执行的方法
 */
function errorDialog(msg, afterCall) {
	var dialog;
	var options = {
		init : function() {
			var that = this;
			var i = 2;
			$("#timeId").html(i);
			var fn = function() {
				$("#timeId").html(i);
				!i && that.close();
				i--;
			};
			timer = setInterval(fn, 1000);
			fn();
		},
		content : '<b>' + msg + '</b>' + closeMsg,
		close : function() {
			clearInterval(timer);
			if (afterCall != null && afterCall != "") {
				var tempFun = afterCall;
				tempFun();
			}
			return true;
		},
		icon : 'error',
		time : 2,
		cancel : function() {
			clearInterval(timer);
			return true;
		}
	}
	dialog = newDialog(options);
	dialog.lock();
}

/**
 * 使用 artDkialog 打开指定的页面，页面关闭后，执行相应的方法，当 art.dialog.data('result') =1 表示成功，否则失败
 * @param {Object} url 打开的页面地址（URL）
 * @param {Object} succCall 成功后执行的方法
 * @param {Object} errCall 失败后执行的方法
 */
function openPage(url, title, succCall, errCall) {
	artDialog.open(url, {
		title : title,
		width : '50%',
		height : '50%',
		close : function(cwindow) {
			if (art.dialog.data('result') == 1) {
				if (succCall != null && succCall != "") {
					var tempFun = succCall;
					tempFun();
				}
			} else {
				if (succCall != null && succCall != "") {
					var tempFun = succCall;
					tempFun();
				}
			}

		},
		lock : true
	});
}

/**
 * 初始化对话框 0 为本页面 1为
 * @param {Object} flag
 */
function newDialog(options) {
	var dialog;
	//isParent = isParent || 0;
	//if (isParent == 0) {
	dialog = art.dialog(options);
	//} else {
	//	dialog = parent.art.dialog(options);
	//}
	return dialog;
}
/**
 * 
 * @param {Object} title
 * @param {Object} num 选择用户的数量上限,0 表示无上限
 * @param {Object} okfun 回调函数,此回调函数的参数是长度为2的数组,数组的第一个元素为所选的id,第二个元素为所选的name
 * @param {Object} ids 传入已选的ID
 * @param {Object} names 传入已选的name
 * @memberOf {TypeName} 
 * @return {TypeName} 
 */
function openStaffWindow(title, num, okfun, ids, names) {
	var art = {
		title : title || "选择人员",
		width : '680px',
		height : '445px',
		lock : true,
		init : function() {
			var iframe = this.iframe.contentWindow;
			iframe.eachOption(ids, names)
		},
		ok : function() {
			var iframe = this.iframe.contentWindow;
			var dept = iframe.saveOptionMessage()//右侧的选择中的数据进入下一个页
			if (okfun != null && okfun != "") {
				okfun(dept);
			}
			this.close();
			return true;
		},
		cancel : true
	}
	var tNum = "";
	var tIds = "";
	var tNames = "";
	if (!!(parseInt(num))) {
		tNum = num;
	}
	tIds = ids || tIds;
	tNames = names || tNames;
	artDialog.open(framework_bp + "/system/staff/select_staff_main?staffNum="
			+ tNum + "&ids=" + tIds + "&names=" + tNames, art);
}

/**
 * 
 * @param {Object} title
 * @param {Object} num 选择部门的数量上限,0 表示无上限
 * @param {Object} okfun 回调函数,此回调函数的参数是长度为2的数组,数组的第一个元素为所选的id,第二个元素为所选的name
 * @param {Object} ids 传入已选的ID
 * @param {Object} names 传入已选的name
 * @memberOf {TypeName} 
 * @return {TypeName} 
 */
function openDeptWindow(title, okfun,depts) {
	var art = {
		title : title || "选择机构",
		width : '400px',
		height : '445px',
		lock : true,
		init : function() {
			//var iframe = this.iframe.contentWindow;
			//iframe.eachOption(ids, names)
		},
		ok : function() {
			var iframe = this.iframe.contentWindow;
			var depts = iframe.saveOptionMessage(depts);
			if (okfun != null && okfun != "") {
				okfun(depts);
			}
			this.close();
			return true;
		},
		cancel : true
	}

	artDialog.open(framework_bp
			+ "/jiGouTree/select_jigou_main", art);
}


/**
 * 
 * @param {Object} title
 * @param {Object} num 选择片区的数量上限,0 表示无上限
 * @param {Object} okfun 回调函数,此回调函数的参数是长度为2的数组,数组的第一个元素为所选的id,第二个元素为所选的name
 * @param {Object} ids 传入已选的ID
 * @param {Object} names 传入已选的name
 * @memberOf {TypeName} 
 * @return {TypeName} 
 */
function openPianQuWindow(title, num, okfun, ids, names) {
	var art = {
		title : title || "选择片区地址",
		width : '400px',
		height : '445px',
		lock : true,
		init : function() {
			var iframe = this.iframe.contentWindow;
			iframe.eachOption(ids, names)
		},
		ok : function() {
			var iframe = this.iframe.contentWindow;
			var dept = iframe.saveOptionMessage(ids, names);
			if (okfun != null && okfun != "") {
				okfun(dept);
			}
			this.close();
			return true;
		},
		cancel : true
	}
	var tNum = "";

	if (parseInt(num)) {
		tNum = num;
	}else{
		tNum = 0;
	}

	artDialog.open(framework_bp
			+ "/pianqudizhi/select_piqudizi_main?deptNum=" + tNum, art);
}

/**
 * 
 * @param {Object} title
 * @param {Object} num 选择片区的数量上限,0 表示无上限
 * @param {Object} okfun 回调函数,此回调函数的参数是长度为2的数组,数组的第一个元素为所选的id,第二个元素为所选的name
 * @param {Object} ids 传入已选的ID
 * @param {Object} names 传入已选的name
 * @param {Object} cs_type 将要弹出的树类型，1表示字典树，2表示科目树，3表示分析项目集合（科目，类型（存款类型），客户（存款），期限（存款期限））
 * @memberOf {TypeName} 
 * @return {TypeName} 
 */
function openCanShuBMWindow(title,canshu,okfun,cs_type) {
	var art = {
		title : title,
		width : '400px',
		height : '445px',
		lock : true,
		init : function() {
		},
		ok : function() {
			var iframe = this.iframe.contentWindow;
			var dept = iframe.saveOptionMessage();
			if (okfun != null && okfun != "") {
				okfun(dept);
			}
			this.close();
			return true;
		},
		cancel : true
	}
		artDialog.open(framework_bp
				+ "/canshubm/select_canshu_main?cs_type="+cs_type+"&canshu=" + canshu, art);
}
/**
 * 功能描述：贷款科目
 * @param title
 * @param okfun
 * @return
 */
function openDaiKuanKMWindow(title,okfun) {
	var art = {
		title : title,
		width : '400px',
		height : '445px',
		lock : true,
		init : function() {
		},
		ok : function() {
			var iframe = this.iframe.contentWindow;
			var dept = iframe.saveOptionMessage();
			if (okfun != null && okfun != "") {
				okfun(dept);
			}
			this.close();
			return true;
		},
		cancel : true
	}
		artDialog.open(framework_bp
				+ "/daikuankm/select_daikuankm_main",art);
}

/**
 * 功能描述：损益余额、费用树
 * @param title 标题
 * @param okfun 方法名
 * @param type 1表示损益余额,2表示费用
 * @return
 */
function openSunYiFeiYongWindow(title,okfun,type) {
	var art = {
		title : title,
		width : '400px',
		height : '445px',
		lock : true,
		init : function() {
		},
		ok : function() {
			var iframe = this.iframe.contentWindow;
			var dept = iframe.saveOptionMessage();
			if (okfun != null && okfun != "") {
				okfun(dept);
			}
			this.close();
			return true;
		},
		cancel : true
	}
		artDialog.open(framework_bp
				+ "/sunyifeiyong/select_sunyifeiyong_main?type="+type,art);
}

/**
 * 功能描述：综合查询科目树
 * @param title 标题
 * @param okfun 方法名
 * @param org_no 方法名
 * @return
 */
function openZhongHeCXKMWindow(title,okfun,org_no) {
	var art = {
		title : title,
		width : '400px',
		height : '445px',
		lock : true,
		init : function() {
		},
		ok : function() {
			var iframe = this.iframe.contentWindow;
			var dept = iframe.saveOptionMessage();
			if (okfun != null && okfun != "") {
				okfun(dept);
			}
			this.close();
			return true;
		},
		cancel : true
	}
		artDialog.open(framework_bp
				+ "/zhonghecxkm/select_zhongHeCXKM_main?org_no="+org_no,art);
}


/**
 * 功能描述:贷款分析项目树
 * @param title
 * @param okfun
 * @return
 */
function openDaiKuanfxxmWindow(title,okfun,is_zunzai_dkkm, departmentId, org_level, jiGJB) {
	var art = {
		title : title,
		width : '400px',
		height : '445px',
		lock : true,
		init : function() {
		},
		ok : function() {
			var iframe = this.iframe.contentWindow;
			var dept = iframe.saveOptionMessage();
			if (okfun != null && okfun != "") {
				okfun(dept);
			}
			this.close();
			return true;
		},
		cancel : true
	}
		artDialog.open(framework_bp
				+ "/daikuanfxxm/select_dkfxxm_main?is_zunzai_dkkm="+is_zunzai_dkkm+"&departmentId="+departmentId+"&org_level="+org_level+"&jiGJB="+jiGJB,art);
}

function openYeWLXWindow(title, okfun) {
	var art = {
		title : title,
		width : '400px',
		height : '445px',
		lock : true,
		init : function() {
		},
		ok : function() {
			var iframe = this.iframe.contentWindow;
			var dept = iframe.saveOptionMessage();
			if (okfun != null && okfun != "") {
				okfun(dept);
			}
			this.close();
			return true;
		},
		cancel : true
	}
	artDialog.open(framework_bp + "/bankcardtrans/select_YeWLX_main", art);
}
function show(){
    if($("#show_1").val()=='打开查询'){
    	$("#hy_form").show();
    	$("#show_1").val('隐藏查询');
    }else if($("#show_1").val()=='隐藏查询'){
    	$("#hy_form").hide();
    	$("#show_1").val('打开查询');
    }   
}