// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource.a;

import com.etermax.gamescommon.login.datasource.dto.DeviceInfo;
import com.etermax.gamescommon.login.datasource.dto.SocialAccountDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.datasource.dto.UserInfo;
import org.b.c.l;
import org.b.e.a.k;

public interface a
{

    public abstract UserDTO a(Long long1, SocialAccountDTO socialaccountdto);

    public abstract void a(Long long1, DeviceInfo deviceinfo);

    public abstract void a(Long long1, UserInfo userinfo);

    public abstract void a(String s);

    public abstract void a(k k);

    public abstract UserDTO b(Long long1, SocialAccountDTO socialaccountdto);

    public abstract l b(Long long1, UserInfo userinfo);
}
