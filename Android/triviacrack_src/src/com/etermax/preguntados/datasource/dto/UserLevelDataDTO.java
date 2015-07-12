// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;
import java.util.List;

public class UserLevelDataDTO
    implements Serializable
{

    private int goal_points;
    private int level;
    private boolean level_up;
    private int points;
    private int progress;
    private List rewards;

    public UserLevelDataDTO()
    {
    }

    public int getGoalPoints()
    {
        return goal_points;
    }

    public int getLevel()
    {
        return level;
    }

    public int getPoints()
    {
        return points;
    }

    public int getProgress()
    {
        return progress;
    }

    public List getRewards()
    {
        return rewards;
    }

    public boolean isLevelUp()
    {
        return level_up;
    }

    public void setLevelUp(boolean flag)
    {
        level_up = flag;
    }
}
