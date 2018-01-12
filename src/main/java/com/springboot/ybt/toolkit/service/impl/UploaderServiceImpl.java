package com.springboot.ybt.toolkit.service.impl;


import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.springboot.ybt.system.service.impl.BaseService;
import com.springboot.ybt.toolkit.entity.SysFile;
import com.springboot.ybt.toolkit.service.UploaderService;
import com.springboot.ybt.util.PropertiesUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

/**
 * 附件上传控制器
 *
 * @author cnpc
 */
@Service
public class UploaderServiceImpl extends BaseService<SysFile> implements UploaderService {



    /**
     * 创建文件
     *
     * @param file
     * @return
     */
    public File createFile(MultipartFile file) {

        String dirPath = PropertiesUtil.getValue("uploadPath");
        return createFile(file, dirPath);
    }

    public File createFile(MultipartFile file, String dirPath) {

        File dir = new File(dirPath);
        if (!dir.exists()) {
            dir.mkdir();
        }
        String filePath = dirPath + "/" + (new Date().getTime()) + "_" + file.getOriginalFilename();
        File newFile = new File(filePath);
        try {
            InputStream ins = file.getInputStream();
            OutputStream os = new FileOutputStream(newFile);
            int bytesRead = 0;
            byte[] buffer = new byte[1024];
            while ((bytesRead = ins.read(buffer, 0, 1024)) != -1) {
                os.write(buffer, 0, bytesRead);
            }
            os.close();
            ins.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return newFile;
    }

	@Override
	public String saveAvatar(String userId, String fileName, String filePath, String dirPath) {
		// TODO Auto-generated method stub
		return null;
	}


//    public String saveAvatar(String userId, String fileName, String filePath, String dirPath) {
//        UserAvatar avatar = null;
//        if(!StrUtil.isEmpty(userId)&&!userId.equals("0"))
//                avatar=userService.getAvatarByUserId(userId);
//        String avatar_id=avatar==null?null:avatar.getId();
//        //图片替换
//        if (avatar != null) {
//            File file = new File(dirPath + avatar.getSrc());
//            if (file.exists())
//                file.delete();
//            avatar.setName(fileName);
//            avatar.setSrc(filePath);
//            avatar.setUpdateDateTime(new Date());
//            this.update(avatar);
//        }
//        // 新增图片
//        else {
//            avatar = new UserAvatar();
//            avatar.setName(fileName);
//            avatar.setSrc(filePath);
//            avatar.setCreateDateTime(new Date());
//            avatar.setUserId(userId);
//            avatar_id=this.save(avatar).toString();
//        }
//        return avatar_id;
//    }


}
