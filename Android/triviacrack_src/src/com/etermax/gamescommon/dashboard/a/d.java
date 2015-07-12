// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard.a;

import com.etermax.gamescommon.datasource.dto.AppConfigDTO;
import java.util.Date;
import java.util.List;

public interface d
{

    public abstract AppConfigDTO getAppConfig();

    public abstract List getGames();

    public abstract Date getLastChatActivity();

    public abstract String getNotificationId();

    public abstract List getSuggestedOpponents();

    public abstract Date getTime();

    public abstract int getUnreadConversations();
}
