package edu.hhu.tanzhiye.controller;

import edu.hhu.tanzhiye.entity.Video;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.Part;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.io.IOException;
import java.util.Collection;
import java.util.UUID;

@MultipartConfig
@WebServlet("/adminAddVideo")
public class AdminAddVideo extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Video video = new Video();
        // 获得应用的真实路径
        String appPath = request.getServletContext().getRealPath("/");
        File headImageDir = new File(appPath + "/video_upload");
        // 如果头像目录不存在，创建这个目录
        if (!headImageDir.exists()) {
            headImageDir.mkdir();
        }

        try {
            // ServletFileUpload解析request，将请求中所有的数据封装成FileItem对象
            //List<FileItem> fileItemList = upload.parseRequest(request);
            final Part file = request.getPart("uriPath");
            final Collection<Part> fileItemList = request.getParts();
            System.out.println("fileItemList.size() => " + fileItemList.size());
            for (Part fileItem : fileItemList) {
                // 如果数据域是普通的文本域
                String fileItemName = fileItem.getName();
                if (!fileItemName.equals("uriPath")) {

                    String fileItemValue = request.getParameter(fileItemName);
                    switch (fileItemName) {
                        case "name" -> video.setName(fileItemValue);
                        case "type" -> video.setType(fileItemValue);
                        case "author" -> video.setAuthor(fileItemValue);
                        case "timeSize" -> video.setTimeSize(Integer.parseInt(fileItemValue));
                        case "description" -> video.setDescription(fileItemValue);
                    }
                }
                // 如果数据域不是普通的文本域
                if (fileItemName.equals("uriPath")) {
                    // 获取图片的名称 : xxx.png | zhangwuji.jpg
                    String fileName = file.getSubmittedFileName();
                    // 获得文件的后缀名 : .png | .jpg
                    String suffix = fileName.substring(fileName.lastIndexOf("."));
                    // 生产头像的文件名称
                    String uuid = UUID.randomUUID().toString();
                    // 头像绝对路径的文件名
                    String headImageAbsoluteFileName = headImageDir.getAbsolutePath() + "/" + uuid + suffix;
                    video.setUriPath(uuid + suffix);
                    // 获得输入流
                    InputStream is = file.getInputStream();
                    // 创建上传的输出流
                    OutputStream os = new FileOutputStream(headImageAbsoluteFileName);
                    // 开始上传
                    byte[] bytes = new byte[1024 * 4];
                    int length = 0;
                    while ((length = is.read(bytes)) != -1) {
                        os.write(bytes, 0, length);
                    }
                    is.close();
                    os.close();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(video);
        response.sendRedirect(request.getContextPath() + "/admin/video_list.jsp");
    }
}

