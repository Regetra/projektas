package core.service.impl;

import core.service.NameService;
import org.springframework.stereotype.Service;

@Service
public class NameServiceImpl implements NameService {

    @Override
    public String getName() {
        return "Foo bar";
    }

}
