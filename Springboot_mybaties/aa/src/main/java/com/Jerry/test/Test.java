package com.Jerry.test;

import com.Jerry.entity.User;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Properties;

public class Test {
    public static void main(String args[]) {
        System.out.println("aa : " + getPro("aa"));
        List<User> list = new ArrayList<User>();
        list.add(new User("1", "1"));
        list.add(new User("2", "2"));
        List<User> ilist = new ArrayList<User>();
        ilist.add(new User("3", "3"));
        ilist.add(new User("4", "4"));
        ilist.add(new User("2", "2"));
        ilist.add(new User("1", "1"));
        Collections.sort(ilist);//排序
        User cuser;
        for (User euser : list) {
            cuser = binarySearch(ilist, euser);
            if (cuser != null) {
                System.out.println(cuser.getUsername());
            }
        }
    }

    /*jdbc连接池*/
    public static void jdbc() {
        try {
            /* jdbc:mysql://localhost:3306/user?*/
            //加载驱动
            Class.forName("com.mysql.jdbc.Driver");
            //建立连接池
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "root");
            String sql = "select  * from  user ";
            //执行数据库操作
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            //返回值
            while (resultSet.next()) {
                System.out.println(resultSet.getString("username"));
            }
            //关闭连接
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /*比较某个字符*/
    public static Integer countnumber(String str, String data) {
        Integer count = 0;
        while (data.indexOf(str) != -1) {
            count++;
            int start = data.indexOf(str);
            int last = data.length();
            data = data.substring(start + 1, last);
        }
        return count;
    }

    /*获取文件*/
    public static Integer getNum(File file) {
        File[] subFile = file.listFiles();
        Integer count = 0;
      /*  list()方法是返回某个目录下的所有文件和目录的文件名，返回的是String数组
        listFiles()方法是返回某个目录下所有文件和目录的绝对路径，返回的是File数组*/
        for (File file1 : subFile) {
            count++;
            if (file1.isFile()) {
                count++;
                System.out.println(file + "文件名： " + file1.getName());
            } else if (file1.isDirectory()) {
                /* isDirectory是检查此抽象路径是否是文件夹。*/
                count++;
                getNum(file1);//当文件下面还有时需要遍历
            }
        }
        return count;
    }

    //    冒泡排序
    public static Integer[] getmm(Integer[] mm) {
        for (int i = 1; i < mm.length; i++) {
            for (int j = 0; j < mm.length; j++) {
                if (mm[i] < mm[j]) {
                    Integer a = mm[i];
                    mm[i] = mm[j];
                    mm[j] = a;
                }
            }
        }
        return mm;
    }

    /*二分查找对象*/
    public static User binarySearch(List<User> list, User user) {
        System.out.println("-------------------");
        int curpage = 0;
        int statrPos = 0;
        int endPos = list.size() - 1;
        int count = 0;
        User cuser;
        while (true) {
            curpage = (statrPos + endPos) / 2;
            cuser = list.get(curpage);
            if (user.equals(cuser)) {
                System.out.printf("查找了%d次\n", count);
                return cuser;
            } else if (endPos < statrPos) {
                return null;
            } else {
                if (user.compareTo(cuser) > 0) {
                    statrPos = curpage + 1;
                } else {
                    endPos = curpage - 1;
                }
            }
            count++;
        }
    }

    /*获取properties文件*/
    public static String getPro(String config) {
        InputStream is = Test.class.getClassLoader().getResourceAsStream("aa.properties");
        Properties pps = new Properties();
        try {
            pps.load(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
        String a = pps.getProperty(config);
        return a;
    }
}
