// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.text.TextUtils;
import com.etermax.gamescommon.k;
import com.etermax.gamescommon.login.datasource.a;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            ProfileUserHeader

class a
    implements k
{

    final ProfileUserHeader a;

    public String getFacebookId()
    {
        return a.v.j();
    }

    public Long getId()
    {
        return Long.valueOf(a.v.e());
    }

    public String getName()
    {
        String s = (new StringBuilder()).append("@").append(a.v.g()).toString();
        if (!TextUtils.isEmpty(a.v.k()) && a.v.l())
        {
            s = a.v.k();
        }
        return s;
    }

    public String getPhotoUrl()
    {
        return null;
    }

    public boolean isFbShowPicture()
    {
        return a.v.m();
    }

    (ProfileUserHeader profileuserheader)
    {
        a = profileuserheader;
        super();
    }
}
