// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

public class f
{

    private final String a = (new StringBuilder()).append("===").append(System.currentTimeMillis()).append("===").toString();
    private HttpURLConnection b;
    private String c;
    private OutputStream d;
    private PrintWriter e;

    public f(String s, String s1)
    {
        c = s1;
        b = (HttpURLConnection)(new URL(s)).openConnection();
        b.setUseCaches(false);
        b.setDoOutput(true);
        b.setDoInput(true);
        b.setConnectTimeout(2000);
        b.setReadTimeout(2000);
        b.setRequestProperty("Content-Type", (new StringBuilder()).append("multipart/form-data; boundary=").append(a).toString());
        d = b.getOutputStream();
        e = new PrintWriter(new OutputStreamWriter(d, s1), true);
    }

    public List a()
    {
        ArrayList arraylist = new ArrayList();
        e.append("\r\n").flush();
        e.append((new StringBuilder()).append("--").append(a).append("--").toString()).append("\r\n");
        e.close();
        int i = b.getResponseCode();
        if (i == 200)
        {
            BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(b.getInputStream()));
            do
            {
                String s = bufferedreader.readLine();
                if (s != null)
                {
                    arraylist.add(s);
                } else
                {
                    bufferedreader.close();
                    b.disconnect();
                    return arraylist;
                }
            } while (true);
        } else
        {
            throw new IOException((new StringBuilder()).append("Server returned non-OK status: ").append(i).toString());
        }
    }

    public void a(String s, File file)
    {
        String s1 = file.getName();
        e.append((new StringBuilder()).append("--").append(a).toString()).append("\r\n");
        e.append((new StringBuilder()).append("Content-Disposition: form-data; name=\"").append(s).append("\"; filename=\"").append(s1).append("\"").toString()).append("\r\n");
        e.append((new StringBuilder()).append("Content-Type: ").append(URLConnection.guessContentTypeFromName(s1)).toString()).append("\r\n");
        e.append("Content-Transfer-Encoding: binary").append("\r\n");
        e.append("\r\n");
        e.flush();
        FileInputStream fileinputstream = new FileInputStream(file);
        byte abyte0[] = new byte[4096];
        do
        {
            int i = fileinputstream.read(abyte0);
            if (i != -1)
            {
                d.write(abyte0, 0, i);
            } else
            {
                d.flush();
                fileinputstream.close();
                e.append("\r\n");
                e.flush();
                return;
            }
        } while (true);
    }
}
