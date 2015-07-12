// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import java.io.Serializable;

public class UserRankDTO
    implements Serializable
{

    private boolean is_me;
    private int position;
    private int score;
    private UserDTO user;

    public UserRankDTO()
    {
    }

    public int getPosition()
    {
        return position;
    }

    public int getScore()
    {
        return score;
    }

    public UserDTO getUser()
    {
        return user;
    }

    public boolean isMe()
    {
        return is_me;
    }
}
