// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;

import com.etermax.tools.nationality.Nationality;

// Referenced classes of package com.etermax.gamescommon:
//            k

public interface j
    extends k
{

    public abstract Integer getAge();

    public abstract Integer getDistance();

    public abstract Integer getFriendsInCommon();

    public abstract com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus getInvitationStatus();

    public abstract boolean getIsAppUser();

    public abstract Nationality getNationality();

    public abstract com.etermax.gamescommon.login.datasource.dto.UserDTO.Status getOnlineStatus();

    public abstract void setInvitationStatus(com.etermax.gamescommon.login.datasource.dto.UserDTO.InvitationStatus invitationstatus);
}
