package ru.javawebinar.topjava.repository.mock;

import org.springframework.stereotype.Repository;
import ru.javawebinar.topjava.AuthorizedUser;
import ru.javawebinar.topjava.model.Meal;
import ru.javawebinar.topjava.repository.MealRepository;
import ru.javawebinar.topjava.util.MealsUtil;
import ru.javawebinar.topjava.util.TimeUtil;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Collectors;
@Repository
public class InMemoryMealRepositoryImpl implements MealRepository {
    private Map<Integer, Meal> repository = new ConcurrentHashMap<>();
    private AtomicInteger counter = new AtomicInteger(0);

    {
        MealsUtil.MEALS.forEach(this::save);
    }

    @Override
    public Meal save(Meal meal) {
        if (meal.isNew()) {
            meal.setId(counter.incrementAndGet());
        }
        repository.put(meal.getId(), meal);
        return meal;
    }

    @Override
    public boolean delete(int id, int userID) {

        Meal meal = repository.get(id);
        if (meal != null && meal.getUserId().equals(userID)) {
            repository.remove(id);
            return true;
        } else {
            return false;
        }

    }

    @Override
    public Meal get(int id, int userID) {

        Meal meal = repository.get(id);
        return meal.getUserId() == userID ? repository.get(id): null;

    }

    @Override
    public List<Meal> getAll(int userID) {
        return repository.values().stream()
                .filter(meal -> meal.getUserId() == userID)
                .sorted((o1, o2) -> o1.getDateTime().isBefore(o2.getDateTime()) ? 1 : -1)
                .collect(Collectors.toList());
    }

    @Override
    public List<Meal> getFiltered(LocalDate startDate, LocalDate endDate, int userId) {
        return repository.values().stream()
                .filter(meal -> meal.getUserId().equals(userId) && TimeUtil.isBetween(meal.getDate(), startDate, endDate))
                .sorted((o1, o2) -> o2.getDateTime().compareTo(o1.getDateTime()))
                .collect(Collectors.toList());
    }

}

