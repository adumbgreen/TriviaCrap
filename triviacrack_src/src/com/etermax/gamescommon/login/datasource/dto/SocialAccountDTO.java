// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource.dto;


// Referenced classes of package com.etermax.gamescommon.login.datasource.dto:
//            UserInfo

public class SocialAccountDTO
{

    private String access_token;
    private String email;
    private String id;
    private String network;
    private UserInfo user;

    public SocialAccountDTO()
    {
    }

    public SocialAccountDTO(String s, String s1, String s2)
    {
        this(s, s1, s2, null, null);
    }

    public SocialAccountDTO(String s, String s1, String s2, UserInfo userinfo)
    {
        this(s, s1, s2, userinfo, null);
    }

    public SocialAccountDTO(String s, String s1, String s2, UserInfo userinfo, String s3)
    {
        network = s;
        id = s1;
        access_token = s2;
        user = userinfo;
        email = s3;
    }
}
