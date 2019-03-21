package com.car.admin.entity;


import com.car.admin.entity.post.PostPage;
import com.car.admin.entity.post.PostSort;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.util.StringUtils;

/**
 * @author sun, 2019/3/20
 * @version V1.0
 * @description: post参数
 */

public class PostParameter<T> {

    private PostPage page;


    private T condition;


    public void setPage(PostPage page) {
        this.page = page;
    }

    public void setCondition(T condition) {
        this.condition = condition;
    }

    public Pageable getPage() {
        PostSort postSort = this.page.getSort();
        Sort sort = null;
        if (postSort != null && !StringUtils.isEmpty(postSort.getProp())) {
            Sort.Direction direction = Sort.Direction.ASC;
            if ("descending".equals(postSort.getOrder())) {
                direction = Sort.Direction.DESC;
            }
            sort = new Sort(direction, postSort.getProp());
        }
        int cpage = this.page.getPage() - 1;
        if (sort != null)
            return PageRequest.of(cpage < 0 ? 0 : cpage, this.page.getSize(), sort);
        else
            return PageRequest.of(cpage < 0 ? 0 : cpage, this.page.getSize());
    }

    public T getCondition() {
        return this.condition;
    }
}