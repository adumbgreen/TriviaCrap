// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;


public class AdUnitDTO
{

    private String id;
    private com.etermax.gamescommon.mediation.MediationManager.AdMediatorType mediator;
    private String name;

    public AdUnitDTO()
    {
    }

    public AdUnitDTO(String s, com.etermax.gamescommon.mediation.MediationManager.AdMediatorType admediatortype, String s1)
    {
        name = s;
        mediator = admediatortype;
        id = s1;
    }

    public String getId()
    {
        return id;
    }

    public com.etermax.gamescommon.mediation.MediationManager.AdMediatorType getMediator()
    {
        return mediator;
    }

    public String getName()
    {
        return name;
    }
}
