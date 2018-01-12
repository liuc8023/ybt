package com.springboot.ybt.toolkit.service;

import org.springframework.web.multipart.MultipartFile;
import com.springboot.ybt.system.service.IService;
import com.springboot.ybt.toolkit.entity.SysFile;
import java.io.File;

public interface UploaderService extends IService<SysFile> {

    /**
     * 创建文件
     *
     * @param file
     * @return
     */
    public File createFile(MultipartFile file);


    /**
     * 保存头像信息
     *
     * @param userId          用户ID
     * @param fileName       文件名
     * @param filePath       文件路径(相对路径)
     * @param dirPath        系统路径(绝对路径)
     */
    public String saveAvatar(String userId, String fileName, String filePath, String dirPath);

    /**
     * 创建文件
     *
     * @param file    文件
     * @param dirPath 文件存储路径
     * @return
     */
    public File createFile(MultipartFile file, String dirPath);

}
