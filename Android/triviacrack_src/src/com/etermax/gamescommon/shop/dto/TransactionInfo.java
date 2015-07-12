// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.shop.dto;


public class TransactionInfo
{

    String amazon_user_id;
    String data;
    String signature;
    String type;

    public TransactionInfo(String s, String s1)
    {
        type = "GOOGLEPLAYV3";
        signature = s1;
        data = s;
    }

    public TransactionInfo(String s, String s1, String s2)
    {
        type = "GOOGLEPLAYV3";
        type = s;
        data = s1;
        amazon_user_id = s2;
    }
}
