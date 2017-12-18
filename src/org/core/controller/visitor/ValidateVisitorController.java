package org.core.controller.visitor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.core.domain.visitor.RecordVisitors;
import org.core.domain.visitor.VisitorInfo;
import org.core.domain.webapp.Blacklist;
import org.core.domain.webapp.Reson;
import org.core.service.record.RecordBevisitedsService;
import org.core.service.record.RecordVisitorsService;
import org.core.service.record.VisitorRecordService;
import org.core.service.visitor.VisitorInfoService;
import org.core.service.visitor.VisitorService;
import org.core.service.webapp.ResonService;
import org.core.util.GenId;
import org.core.util.ImageUtils;
import org.core.util.JsonUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * 多访客
 * */
@Controller
public class ValidateVisitorController {
	
	
	/**
	 * 多访客登记信息
	 * @param mv
	 * @return
	 */
	@RequestMapping(value="/visitor/forwardValidateVisitor")
	 public ModelAndView forwardValidateVisitor(HttpServletRequest request,HttpServletResponse response,ModelAndView mv){
		// 设置客户端跳转到查询请求
		mv.setViewName("visitor/validate-visitor");
		// 返回ModelAndView
		return mv;
	}
}
