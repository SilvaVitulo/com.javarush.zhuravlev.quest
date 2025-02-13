package com.javarush.zhuravlev.quest.repository;

import com.javarush.zhuravlev.quest.entity.Question;

import java.util.Arrays;
import java.util.List;

public class QuestionRepository {

    private List<Question> questions= Arrays.asList(
            new Question("Куда вы хотите направится дальше?", new String[]{"Разбудить борт механика", "Поздороватся со штурманом"}, 1),
            new Question("Приветствую! Для вас есть задание из главного центра!", new String[]{"Какое?", "Притвориться что ничего не слышал"}, 0),
            new Question("Необходимо выставить координаты для нового маршрута коробля 10'12'100", new String[]{"Выставить 10'12'100", "Выставить 11'12'100"}, 0)
            );
    public List<Question> getAllQuestions(){
        return questions;
    }

}
