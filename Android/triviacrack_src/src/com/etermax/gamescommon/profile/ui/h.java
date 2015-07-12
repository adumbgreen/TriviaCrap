// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import com.etermax.gamescommon.k;
import java.util.List;

public interface h
    extends k
{

    public abstract long getConsultedUserId();

    public abstract List getFacebookFriendsIds();

    public abstract boolean isBlocked();

    public abstract boolean isFriend();

    public abstract void setBlocked(boolean flag);

    public abstract void setFriend(boolean flag);
}
