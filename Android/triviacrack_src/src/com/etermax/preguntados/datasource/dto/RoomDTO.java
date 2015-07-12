// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            GameDTO

public class RoomDTO
    implements Serializable
{

    private int countdown;
    private GameDTO game;
    private long id;

    public RoomDTO()
    {
    }

    public int getCountdown()
    {
        return countdown;
    }

    public GameDTO getGame()
    {
        return game;
    }

    public long getId()
    {
        return id;
    }
}
