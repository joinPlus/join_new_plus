package com.pandawork.common.entity.beauty;

import com.pandawork.core.common.entity.AbstractEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @Author:liangll
 * @Description:
 * @Date: 0:23 2018/8/4
 */
@Table(name = "t_beauty")
@Entity
public class Beauty extends AbstractEntity{
    @Id
    private Integer id;

    @Column(name = "name")
    private String name;

    @Column(name = "path")
    private String path;

    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    @Override
    public String toString() {
        return "Lunbo{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", path='" + path + '\'' +
                '}';
    }
}
