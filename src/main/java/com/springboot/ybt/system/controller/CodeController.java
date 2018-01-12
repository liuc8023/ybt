package com.springboot.ybt.system.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Map;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springboot.ybt.util.ImageUtil;



/**
 * 获取验证码图片和文本(验证码文本会保存在HttpSession中)
 * 
 * @author liuc
 * 
 */
@Controller
public class CodeController {

	@RequestMapping("/getGifCode")
	public void getGifCode(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		HttpSession session = req.getSession();
		Map<String, BufferedImage> map = ImageUtil.createImage();
		String imageCode = map.keySet().iterator().next();
		// 将验证码放到HttpSession里面
		session.setAttribute("imageCode", imageCode);

		// 设置页面不缓存
		resp.setHeader("Pragma", "no-cache");
		resp.setHeader("Cache-Control", "no-cache");
		resp.setDateHeader("Expires", 0);
		// 设置输出的内容的类型为gif图像
		resp.setContentType("image/gif");
		ServletOutputStream sos = resp.getOutputStream();
		// 写给浏览器
		ImageIO.write(map.get(imageCode), "gif", sos);
		sos.close();
	}

}
