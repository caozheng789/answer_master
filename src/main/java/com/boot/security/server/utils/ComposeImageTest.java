//package com.boot.security.server.utils;
//
//import com.sun.image.codec.jpeg.ImageFormatException;
//import com.sun.image.codec.jpeg.JPEGCodec;
//import com.sun.image.codec.jpeg.JPEGImageDecoder;
//import com.sun.image.codec.jpeg.JPEGImageEncoder;
//
//import javax.imageio.ImageIO;
//import javax.servlet.http.HttpServletRequest;
//import javax.swing.*;
//import java.awt.*;
//import java.awt.image.BufferedImage;
//import java.io.*;
//import java.text.SimpleDateFormat;
//import java.util.Date;
//
///**
// * Created by huawei on 2020/10/11.
// */
//public class ComposeImageTest {
//
//    public static void main(String[] args) throws IOException {
//        exportImg();
//    }
//
//
//    public static String exportImg(){
//        try {
//            //1.jpg是你的 主图片的路径
//            String jzz = "d:\\1.jpg";
//            InputStream is = new FileInputStream(jzz );
//
//
//            //通过JPEG图象流创建JPEG数据流解码器
//            JPEGImageDecoder jpegDecoder = JPEGCodec.createJPEGDecoder(is);
//            //解码当前JPEG数据流，返回BufferedImage对象
//            BufferedImage buffImg = jpegDecoder.decodeAsBufferedImage();
//            //得到画笔对象
//            Graphics g = buffImg.getGraphics();
//
//            //创建你要附加的图象。
//            //小图片的路径
//            String uploadDir = "d:\\2.jpg";
//            String imgUrl = "d:\\3.jpg";
//            ImageIcon imgIcon = new ImageIcon("4");
//
//            //得到Image对象。
//            Image img = imgIcon.getImage();
//
//            //将小图片绘到大图片上。
//            //5,300 .表示你的小图片在大图片上的位置。
//            g.drawImage(img,105,405,null);
//
//            //设置颜色。
//            g.setColor(Color.BLACK);
//
//
//            //最后一个参数用来设置字体的大小
//            Font f = new Font("宋体",Font.PLAIN,11);
//            Color mycolor = Color.BLACK;//new Color(0, 0, 255);
//            g.setColor(mycolor);
//            g.setFont(f);
//
//            //10,20 表示这段文字在图片上的位置(x,y) .第一个是你设置的内容。
//            g.drawString("扫描验证真伪",100,470);
//
//
//            Graphics2D tip = buffImg.createGraphics();
//            tip.setColor(Color.BLACK);
//            //设置字体
//            Font tipFont = new Font("宋体", Font.PLAIN, 14);
//            tip.setFont(tipFont);
//            //内容，左右位置，上下位置
//
//            SimpleDateFormat bartDateFormat = new SimpleDateFormat("yyyy-MM-dd");
//            Date date = new Date();
//            g.dispose();
//
//            OutputStream os;
//
////            os = new FileOutputStream("d:/union.jpg");
//            String upJzzUrl = "123";
//            String shareFileName = "22"+ ".jpg";
//            os = new FileOutputStream(upJzzUrl+shareFileName);
//            //创键编码器，用于编码内存中的图象数据。
//            JPEGImageEncoder en = JPEGCodec.createJPEGEncoder(os);
//            en.encode(buffImg);
//
//            is.close();
//            os.close();
//            return shareFileName;
//        } catch (FileNotFoundException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        } catch (ImageFormatException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        } catch (IOException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//        return null;
//
//    }
//}
