package ru.javawebinar.topjava;

import org.springframework.context.annotation.Profile;
import org.springframework.test.annotation.SystemProfileValueSource;
import org.springframework.test.context.ActiveProfilesResolver;

/**
 * Created by chumak on 03.12.17.
 */
public class ActiverepositoryImplResolver implements ActiveProfilesResolver {

    @Override
    public String[] resolve(Class<?> aClass) {
        final String activeProfile = System.getProperty("datajpa");
        return new String[] {activeProfile};
    }
}
