<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://topjava.javawebinar.ru/functions" %>
<html>
<head>
    <title>Meal list</title>
    <style>
        .normal {
            color: green;
        }
        .exceeded {
            color: red;
        }
        dl {
            background: none repeat scroll 0 0 #FAFAFA;
            margin: 8px 0;
            padding: 0;
        }
        dt {
            display: inline-block;
            width: 100px;
        }
        dd {
            display: inline-block;
            margin-left: 8px;
            vertical-align: top;
            width: 160px;
        }
    </style>
</head>
<body>
<section>
    <h2><a href="index.html">Home</a></h2>
    <h2>Meal list</h2>

    <form method="get" action="meals">
        <input type="hidden" name="action" value="filter">
        <dl>
            <dt>Date range:</dt>
            <dd><input type="date" value="${startDate}" name="startDate"></dd>
            -
            <dd><input type="date" value="${endDate}" name="endDate"></dd>
        </dl>
        <dl>
            <dt>Time range:</dt>
            <dd><input type="time" value="${startTime}" name="startTime"></dd>
            -
            <dd><input type="time" value="${endTime}" name="endTime"></dd>
        </dl>
        <button type="submit">Filter</button>
    </form>

    <a href="meals?action=create">Add Meal</a>
    <hr>
    <table border="1" cellpadding="8" cellspacing="0">
        <thead>
        <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Calories</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <c:forEach items="${meals}" var="meal">
            <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.to.MealWithExceed"/>
            <tr class="${meal.exceed ? 'exceeded' : 'normal'}">
                <td>
                        ${fn:formatDateTime(meal.dateTime)}
                </td>
                <td>${meal.description}</td>
                <td>${meal.calories}</td>
                <td><a href="meals?action=update&id=${meal.id}">Update</a></td>
                <td><a href="meals?action=delete&id=${meal.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</section>
</body>
</html>