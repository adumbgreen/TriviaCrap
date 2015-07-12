// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification;

import android.content.Context;
import android.os.Bundle;
import com.etermax.gamescommon.notification.a.a;
import com.etermax.preguntados.notification.a.d;
import com.etermax.preguntados.notification.a.e;
import com.etermax.preguntados.notification.a.f;
import com.etermax.preguntados.notification.a.g;
import com.etermax.preguntados.notification.a.h;
import com.etermax.preguntados.notification.a.i;
import com.etermax.preguntados.notification.a.j;
import com.etermax.preguntados.notification.a.k;
import com.etermax.preguntados.notification.a.l;
import com.etermax.preguntados.notification.a.m;
import com.etermax.preguntados.notification.a.n;
import com.etermax.preguntados.notification.a.o;
import com.etermax.preguntados.notification.a.p;
import com.etermax.preguntados.notification.a.q;
import com.etermax.preguntados.notification.a.r;
import com.etermax.preguntados.notification.a.s;
import com.etermax.preguntados.notification.a.t;
import com.etermax.preguntados.notification.a.u;

public class c
{

    public static a a(Context context, Bundle bundle)
    {
        String s1 = bundle.getString("data.TYPE");
        m m1 = null;
        if (s1 != null)
        {
            if (s1.equalsIgnoreCase("DUEL_STARTED"))
            {
                m1 = new m(context, bundle);
            } else
            {
                if (s1.equalsIgnoreCase("DUEL_ENDED_LOST"))
                {
                    return new f(context, bundle);
                }
                if (s1.equalsIgnoreCase("DUEL_ENDED_WON"))
                {
                    return new g(context, bundle);
                }
                if (s1.equalsIgnoreCase("NEW_GAME"))
                {
                    return new n(context, bundle);
                }
                if (s1.equalsIgnoreCase("DUEL_GROUP_STARTED"))
                {
                    return new e(context, bundle);
                }
                if (s1.equalsIgnoreCase("USER_PLAYED_02"))
                {
                    return new r(context, bundle);
                }
                if (s1.equalsIgnoreCase("USER_RESIGN"))
                {
                    return new u(context, bundle);
                }
                if (s1.equalsIgnoreCase("USER_REJECT"))
                {
                    return new t(context, bundle);
                }
                if (s1.equalsIgnoreCase("NEW_MESSAGE"))
                {
                    return new o(context, bundle);
                }
                if (s1.equalsIgnoreCase("YOU_WIN"))
                {
                    return new k(context, bundle);
                }
                if (s1.equalsIgnoreCase("YOU_LOST"))
                {
                    return new i(context, bundle);
                }
                if (s1.equalsIgnoreCase("DUEL_GROUP_ENDED_LOST"))
                {
                    return new com.etermax.preguntados.notification.a.c(context, bundle);
                }
                if (s1.equalsIgnoreCase("DUEL_GROUP_ENDED_WON"))
                {
                    return new d(context, bundle);
                }
                if (s1.equalsIgnoreCase("GAME_NEARLY_TO_EXPIRE"))
                {
                    return new j(context, bundle);
                }
                if (s1.equalsIgnoreCase("GAME_EXPIRED"))
                {
                    return new h(context, bundle);
                }
                if (s1.equalsIgnoreCase("NEW_APP"))
                {
                    return new l(context, bundle);
                }
                if (s1.equalsIgnoreCase("QUESTION_APPROVAL"))
                {
                    return new p(context, bundle);
                }
                if (s1.equalsIgnoreCase("QUESTION_DISAPPROVAL"))
                {
                    return new q(context, bundle);
                }
                boolean flag = s1.equalsIgnoreCase("USER_INVITE");
                m1 = null;
                if (flag)
                {
                    return new s(context, bundle);
                }
            }
        }
        return m1;
    }
}
