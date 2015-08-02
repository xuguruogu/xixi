package com.xuguruogu.lingxi.dal.daointerface;

import java.util.List;

import com.xuguruogu.lingxi.dal.dataobject.Entity;
import com.xuguruogu.lingxi.dal.querycondition.QueryCondition;

public interface LxDaoBase<T extends Entity, C extends QueryCondition<?>> {

    /**
     * 插入
     * 
     * @param T entity
     * @return
     */
    public long insert(T entity);

    /**
     * selectOne
     * 
     * @param id
     * @return
     */
    public T selectById(Long id);

    /**
     * 删除
     * 
     * @param id
     * @return
     */
    public int deleteById(Long id);

    /**
     * 查找计数
     * 
     * @param queryCondition
     * @return
     */
    public long selectCountByQueryCondition(C queryCondition);

    /**
     * 查找
     * 
     * @param queryCondition
     * @return
     */
    public List<T> selectByQueryCondition(C queryCondition);
}
