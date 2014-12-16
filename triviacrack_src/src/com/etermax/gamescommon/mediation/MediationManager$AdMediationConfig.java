// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.mediation;


// Referenced classes of package com.etermax.gamescommon.mediation:
//            MediationManager

public class id
{

    private String id;
    private mediator mediator;
    final MediationManager this$0;

    public String getId()
    {
        return id;
    }

    public id getMediator()
    {
        return mediator;
    }

    public ( , String s)
    {
        this$0 = MediationManager.this;
        super();
        mediator = ;
        id = s;
    }
}
