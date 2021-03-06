package org.core.service.car.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.core.dao.car.CarParkDao;
import org.core.domain.car.CarPark;
import org.core.service.car.CarParkService;
import org.core.util.tag.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**   
 * @Description: 停车场服务层接口
 */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("carParkService")
public class CarParkServiceImpl implements CarParkService{
	@Autowired
	private CarParkDao dao;
	@Override
	public String save(CarPark entity) {
		dao.save(entity);
		return "";
	}

	@Override
	public void deleteById(int id) {
		dao.deleteById(id);
	}

	@Override
	public void update(CarPark entity) {
		dao.update(entity);
	}

	@Override
	public CarPark selectById(int id) {
		return dao.selectById(id);
	}

	@Override
	public List<CarPark> selectByPage(CarPark entity,PageModel pageModel) {
		/** 当前需要分页的总数据条数  */
		Map<String,Object> params = new HashMap<>();
		params.put("entity", entity);
		int recordCount = dao.count(params);
		pageModel.setRecordCount(recordCount);
		if(recordCount > 0){
	        /** 开始分页查询数据：查询第几页的数据 */
		    params.put("pageModel", pageModel);
	    }
		List<CarPark> entitys = dao.selectByPage(params);
		return entitys;
	}

	@Override
	public List<CarPark> selectAll() {
		return dao.selectAll();
	}

}
