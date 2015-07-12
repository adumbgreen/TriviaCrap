// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting.dto;

import com.etermax.gamescommon.login.datasource.dto.UserDTO;

// Referenced classes of package com.etermax.gamescommon.gifting.dto:
//            GiftItemDTO

public class GiftActionDTO
{

    private Action acceptAction;
    private Action action;
    private GiftItemDTO items[];
    private UserDTO receivers[];

    public GiftActionDTO()
    {
    }

    public void setAcceptAction(Action action1)
    {
        acceptAction = action1;
    }

    public void setAction(Action action1)
    {
        action = action1;
    }

    public void setItems(GiftItemDTO agiftitemdto[])
    {
        items = agiftitemdto;
    }

    public void setReceivers(UserDTO auserdto[])
    {
        receivers = auserdto;
    }
}
