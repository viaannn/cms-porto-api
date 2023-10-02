package id.pixel.portoservice.impl;

import id.pixel.portoservice.BaseService;
import org.springframework.stereotype.Service;

@Service
public class BaseServiceImpl implements BaseService {

    @Override
    public String ping() {
        return "Pong!!";
    }

}
