package com.hookfunc.aliyun;

import com.hookfunc.aliyun.service.FileService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.web.multipart.MultipartFile;

@SpringBootTest(classes = AliyunApplication.class)
@RunWith(SpringRunner.class)
public class TestUpload {
    @Autowired
    private FileService fileService;
    
    @Test
    public void UploadFile() {
    }
}
