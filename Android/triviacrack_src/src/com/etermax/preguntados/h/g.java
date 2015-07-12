// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.h;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.View;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.profile.ui.e;

public class g
    implements android.view.View.OnClickListener
{

    private Fragment a;
    private e b;

    public g(Fragment fragment, UserDTO userdto)
    {
        a = fragment;
        if (!TextUtils.isEmpty(userdto.getPhotoUrl()) || userdto.isFbShowPicture() && !TextUtils.isEmpty(userdto.getFacebookId()))
        {
            b = e.a(userdto);
        }
    }

    public void onClick(View view)
    {
        Fragment fragment = a.getFragmentManager().findFragmentByTag("big_picture_dialog");
        boolean flag;
        if (fragment != null && fragment.isAdded())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (b != null && !b.isAdded() && a != null && !flag)
        {
            b.show(a.getChildFragmentManager(), "big_picture_dialog");
        }
    }
}
