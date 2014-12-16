// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;


public class PreferencesDTO
{

    String ALLOW_OG_POSTS;
    String FAVORITES_ONLY;
    String FB_SHOW_NAME;
    String FB_SHOW_PICTURE;
    String MAIL_NEWS;

    public PreferencesDTO()
    {
    }

    private String booleanToString(boolean flag)
    {
        return Boolean.toString(flag);
    }

    private Boolean stringToBoolean(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return Boolean.valueOf(Boolean.parseBoolean(s));
        }
    }

    public Boolean allowOGPosts()
    {
        return stringToBoolean(ALLOW_OG_POSTS);
    }

    public Boolean isFBShowName()
    {
        return stringToBoolean(FB_SHOW_NAME);
    }

    public Boolean isFBShowPicture()
    {
        return stringToBoolean(FB_SHOW_PICTURE);
    }

    public Boolean isFavoritesOnly()
    {
        return stringToBoolean(FAVORITES_ONLY);
    }

    public Boolean isMailNews()
    {
        return stringToBoolean(MAIL_NEWS);
    }

    public void setAllowOGPosts(boolean flag)
    {
        ALLOW_OG_POSTS = booleanToString(flag);
    }

    public void setFBShowName(boolean flag)
    {
        FB_SHOW_NAME = booleanToString(flag);
    }

    public void setFBShowPicture(boolean flag)
    {
        FB_SHOW_PICTURE = booleanToString(flag);
    }

    public void setFavoritesOnly(boolean flag)
    {
        FAVORITES_ONLY = booleanToString(flag);
    }

    public void setMailNews(boolean flag)
    {
        MAIL_NEWS = booleanToString(flag);
    }
}
