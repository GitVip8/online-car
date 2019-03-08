package com.car.admin.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;

/**
 * @author sun, 2019/3/7
 * @version V1.0
 * @description: 行政区划
 */

@Entity
@Table(name = "region_code")
@Data
public class RegionCode {

    @Id
    private Long code;

    private String name;

    private short level;

  /*  @Transient
    private Region region;

    public Region getRegion() {
        return new Region(this);
    }
*/
    @ManyToOne
    @JsonIgnoreProperties(value = "parent")
    private RegionCode parent;


}