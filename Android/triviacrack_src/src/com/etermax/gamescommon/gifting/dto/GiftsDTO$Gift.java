// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting.dto;

import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import java.io.Serializable;

// Referenced classes of package com.etermax.gamescommon.gifting.dto:
//            GiftItemDTO

public class tate
    implements Serializable
{

    private long id;
    private GiftItemDTO items[];
    private UserDTO sender;
    private tate state;

    public long getId()
    {
        return id;
    }

    public GiftItemDTO[] getItems()
    {
        return items;
    }

    public UserDTO getSender()
    {
        return sender;
    }

    public tate getState()
    {
        return state;
    }

    public void setState(tate tate)
    {
        state = tate;
    }
}
