// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;
import java.util.List;

public class SuggestedOpponentDTO
    implements Serializable
{

    private List list;

    public SuggestedOpponentDTO()
    {
    }

    public List getList()
    {
        return list;
    }

    public void setList(List list1)
    {
        list = list1;
    }
}
