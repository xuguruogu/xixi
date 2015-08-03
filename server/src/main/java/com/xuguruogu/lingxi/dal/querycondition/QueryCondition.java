package com.xuguruogu.lingxi.dal.querycondition;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public abstract class QueryCondition<Q extends QueryCondition<?>> implements Serializable {
    /**  */
    private static final long     serialVersionUID = -8241459673022299671L;

    private static final String   KEY_PAGINDEX     = "startIndex";
    private static final String   KEY_PAGESIZE     = "pageSize";

    protected Map<String, Object> params           = new HashMap<String, Object>();

    private int                   pageNo;

    private int                   pageSize;

    @SuppressWarnings("unchecked")
    public final Q pagination(int pageNo, int pageSize) {

        if (pageNo > 0 && pageSize > 0) {
            int startIndex = (pageNo - 1) * pageSize;

            addIfExist(KEY_PAGINDEX, startIndex);
            addIfExist(KEY_PAGESIZE, pageSize);

            this.pageNo = pageNo;
            this.pageSize = pageSize;
        }
        return (Q) this;
    }

    public final Q nextPage() {

        return pagination(pageNo + 1, pageSize);
    }

    protected <P extends Object> void addIfExist(String key, P value) {

        if (null != value) {
            params.put(key, value);
        }
    }

    public Map<String, Object> asMap() {
        return params;
    }

    @SuppressWarnings("unchecked")
    public Q reset() {
        params.clear();
        return (Q) this;
    }

}
