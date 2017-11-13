package ru.javawebinar.topjava.service;

import ru.javawebinar.topjava.model.Meal;
import ru.javawebinar.topjava.util.exception.NotFoundException;

import java.time.LocalDate;
import java.util.List;

public interface MealService {
    Meal save(Meal meal);

    void delete(int id, int userID) throws NotFoundException;

    Meal get(int id, int userID) throws NotFoundException;

    List<Meal> getAll(int userID);

    List<Meal> getFiltered(LocalDate startDate, LocalDate endDate, int userId);

    void update(Meal meal);
}