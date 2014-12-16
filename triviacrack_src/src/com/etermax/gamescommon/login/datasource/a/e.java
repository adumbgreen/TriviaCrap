// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource.a;

import com.etermax.gamescommon.login.datasource.dto.SocialAccountDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.datasource.dto.UserInfo;
import com.etermax.gamescommon.login.datasource.dto.UserListDTO;
import org.b.e.a.k;

public interface e
{

    public abstract UserDTO a(Long long1, SocialAccountDTO socialaccountdto);

    public abstract UserListDTO a(String s);

    public abstract void a(UserInfo userinfo);

    public abstract void a(Long long1);

    public abstract void a(Long long1, String s);

    public abstract void a(k k);

    public abstract void b(String s);
}
