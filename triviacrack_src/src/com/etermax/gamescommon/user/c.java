// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user;


public class c
{

    public static String a(String s, int i)
    {
        String s1;
        String s2;
        s1 = (new StringBuilder()).append("https://graph.facebook.com/").append(s).append("/picture?width=%s&height=%s").toString();
        s2 = "120";
        if (i < 720) goto _L2; else goto _L1
_L1:
        s2 = "720";
_L4:
        return String.format(s1, new Object[] {
            s2, s2
        });
_L2:
        if (i >= 250)
        {
            s2 = "250";
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String b(String s, int i)
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s1;
        String s2;
        String s3;
        if (s.startsWith("http"))
        {
            s1 = "";
        } else
        {
            s1 = "http://";
        }
        s2 = stringbuilder.append(s1).append(s).toString();
        if (i > 200)
        {
            s3 = (new StringBuilder()).append(s2).append("_l").toString();
        } else
        if (i > 160)
        {
            s3 = (new StringBuilder()).append(s2).append("_p").toString();
        } else
        {
            s3 = (new StringBuilder()).append(s2).append("_t").toString();
        }
        return (new StringBuilder()).append(s3).append(".jpg").toString();
    }
}
