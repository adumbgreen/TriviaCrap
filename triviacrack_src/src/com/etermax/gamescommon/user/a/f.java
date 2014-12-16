// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user.a;

import com.etermax.gamescommon.h.a.e;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class f
{

    e a;
    List b;
    boolean c;

    public f()
    {
    }

    public e a()
    {
        return a;
    }

    public f a(CharSequence charsequence)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            UserDTO userdto = (UserDTO)iterator.next();
            StringBuilder stringbuilder = (new StringBuilder()).append(userdto.getUsername());
            String s;
            String s1;
            if (userdto.getFb_show_name())
            {
                s = userdto.getFacebook_name();
            } else
            {
                s = "";
            }
            s1 = stringbuilder.append(s).toString();
            if (Pattern.compile(charsequence.toString(), 2).matcher(s1).find())
            {
                arraylist.add(userdto);
            }
        } while (true);
        if (!arraylist.isEmpty())
        {
            f f1 = new f();
            f1.a(a);
            f1.a(c);
            f1.a(((List) (arraylist)));
            return f1;
        } else
        {
            return null;
        }
    }

    public void a(e e)
    {
        a = e;
    }

    public void a(List list)
    {
        b = list;
    }

    public void a(boolean flag)
    {
        c = flag;
    }

    public List b()
    {
        return b;
    }

    public boolean c()
    {
        return c;
    }
}
