// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;

import java.io.Serializable;

public class AchievementDTO
    implements Serializable
{

    private int activeImageResourceId;
    private String description;
    private int id;
    private int imageResourceId;
    private int max;
    private int percent;
    private int rewards;
    private Status status;
    private String title;

    public AchievementDTO()
    {
    }

    public int getActiveImageResourceId()
    {
        return activeImageResourceId;
    }

    public String getDescription()
    {
        return description;
    }

    public int getId()
    {
        return id;
    }

    public int getImageResourceId()
    {
        return imageResourceId;
    }

    public int getMax()
    {
        return max;
    }

    public int getPercent()
    {
        return percent;
    }

    public int getRewards()
    {
        return rewards;
    }

    public Status getStatus()
    {
        return status;
    }

    public String getTitle()
    {
        return title;
    }

    public void setActiveImageResourceId(int i)
    {
        activeImageResourceId = i;
    }

    public void setDescription(String s)
    {
        description = s;
    }

    public void setImageResourceId(int i)
    {
        imageResourceId = i;
    }

    public void setTitle(String s)
    {
        title = s;
    }
}
