// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.preguntados.h.g;

public class b
{

    public b()
    {
    }

    public void a(Fragment fragment, View view, UserDTO userdto, UserDTO userdto1)
    {
        com.etermax.gamescommon.dashboard.b b1 = new com.etermax.gamescommon.dashboard.b();
        if (userdto != null)
        {
            view.findViewById(i.question_authors).setVisibility(0);
            view.findViewById(i.question_container_author).setVisibility(0);
            ViewSwitcher viewswitcher1 = (ViewSwitcher)view.findViewById(i.question_switcher_author);
            b1.a(viewswitcher1, userdto);
            viewswitcher1.findViewById(i.tile_image_icon).setOnClickListener(new g(fragment, userdto));
            String s1 = userdto.getName();
            ((TextView)view.findViewById(i.question_author_name)).setText(s1);
        }
        if (userdto1 != null)
        {
            view.findViewById(i.question_authors).setVisibility(0);
            view.findViewById(i.question_container_translator).setVisibility(0);
            ViewSwitcher viewswitcher = (ViewSwitcher)view.findViewById(i.question_switcher_translator);
            b1.a(viewswitcher, userdto1);
            viewswitcher.findViewById(i.tile_image_icon).setOnClickListener(new g(fragment, userdto1));
            String s = userdto1.getName();
            ((TextView)view.findViewById(i.question_translator_name)).setText(s);
        }
    }
}
