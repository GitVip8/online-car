package com.car.admin.entity.post;

/**
 * @author sun, 2019/3/21
 * @version V1.0
 * @description: postPage
 */

public class PostPage {

    private int page = 1;
    private int size = 10;
    private int totalPages = 1;
    private int totalElements = 0;
    private PostSort sort;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }


    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public int getTotalElements() {
        return totalElements;
    }

    public void setTotalElements(int totalElements) {
        this.totalElements = totalElements;
    }

    public PostSort getSort() {
        return sort;
    }

    public void setSort(PostSort sort) {
        this.sort = sort;
    }
}