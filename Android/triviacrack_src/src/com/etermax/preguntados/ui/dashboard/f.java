// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.preguntados.datasource.dto.DashboardDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.LivesConfigDTO;
import com.etermax.preguntados.datasource.dto.LivesDTO;

public interface f
{

    public abstract void a(int i, int j);

    public abstract void a(Language language, UserDTO userdto);

    public abstract void a(DashboardDTO dashboarddto);

    public abstract void a(LivesDTO livesdto, LivesConfigDTO livesconfigdto);

    public abstract void a(Long long1);

    public abstract void b(LivesDTO livesdto, LivesConfigDTO livesconfigdto);

    public abstract void c(GameDTO gamedto);

    public abstract void d(GameDTO gamedto);

    public abstract void p();

    public abstract void q();

    public abstract void r();
}
