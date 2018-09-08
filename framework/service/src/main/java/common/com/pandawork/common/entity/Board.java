package com.pandawork.common.entity;

import com.pandawork.core.common.entity.AbstractEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "t_board_out")
@Entity
public class Board extends AbstractEntity{
    @Id
    public Integer  id;
    @Column(name="content")
    private String content;
    @Column(name ="year")
    private int  year;
    @Column(name ="month")
    private int month;
    @Column(name ="day")
    private  int day;
    public Board() {
    }

    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    @Override
    public String toString() {
        return "Board{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", year=" + year +
                ", month=" + month +
                ", day=" + day +
                '}';
    }
}
