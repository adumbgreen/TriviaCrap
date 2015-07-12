// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode.a;

import android.text.TextUtils;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.tools.widget.a.g;

public class d extends g
    implements com.etermax.tools.widget.a.d
{

    protected boolean a;

    public d(UserDTO userdto, int i)
    {
        super(userdto, i);
        a = false;
    }

    public d(UserDTO userdto, int i, boolean flag)
    {
        super(userdto, i);
        a = flag;
    }

    public String a()
    {
        UserDTO userdto = (UserDTO)c();
        String s = userdto.getUsername();
        if (!TextUtils.isEmpty(userdto.getFacebook_name()))
        {
            return (new StringBuilder()).append(s).append(" ").append(userdto.getFacebook_name()).toString();
        } else
        {
            return s;
        }
    }

    public boolean b()
    {
        return a;
    }
}
