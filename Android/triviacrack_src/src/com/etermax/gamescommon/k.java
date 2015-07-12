// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;

import java.io.Serializable;

public interface k
    extends Serializable
{

    public abstract String getFacebookId();

    public abstract Long getId();

    public abstract String getName();

    public abstract String getPhotoUrl();

    public abstract boolean isFbShowPicture();
}
