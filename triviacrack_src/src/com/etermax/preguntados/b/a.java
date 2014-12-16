// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.b;

import android.content.Context;
import android.content.res.AssetManager;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.animations.v1.b;
import com.etermax.gamescommon.animations.v1.c;
import com.etermax.gamescommon.animations.v1.d;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.etermax.preguntados.b:
//            c

public class a
{

    com.etermax.gamescommon.animations.a a;
    com.etermax.gamescommon.resources.a b;
    Context c;

    public a()
    {
    }

    public String a(com.etermax.preguntados.b.c c1)
    {
        java.io.InputStream inputstream = c.getAssets().open((new StringBuilder()).append("animation/").append(c1.a()).append("/animation.xml").toString());
        String s = (String)a.a(inputstream).iterator().next();
        for (Iterator iterator = ((b)a.a().get(s)).f().iterator(); iterator.hasNext();)
        {
            Iterator iterator1 = ((d)iterator.next()).c().iterator();
            while (iterator1.hasNext()) 
            {
                c c2 = (c)iterator1.next();
                c2.a((new StringBuilder()).append("animation/").append(c1.a()).append("/").append(com.etermax.gamescommon.resources.a.b(c, c1.b())).append("/").append(c2.a()).append(".png").toString());
            }
        }

        return s;
    }

    public void a(ViewGroup viewgroup)
    {
        for (int i = 0; i < viewgroup.getChildCount(); i++)
        {
            View view = viewgroup.getChildAt(i);
            if (view instanceof com.etermax.gamescommon.animations.d)
            {
                ((com.etermax.gamescommon.animations.d)view).b();
            }
        }

    }

    public void a(ViewGroup viewgroup, com.etermax.preguntados.b.c c1)
    {
        try
        {
            a(a.a(c1.a(), c1.b()), viewgroup);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    protected void a(com.etermax.gamescommon.animations.d d1, ViewGroup viewgroup)
    {
        if (d1 == null)
        {
            return;
        } else
        {
            viewgroup.removeAllViews();
            viewgroup.addView((View)d1);
            d1.a();
            return;
        }
    }

    public void a(com.etermax.preguntados.b.c ac[])
    {
        if (b.b() != com.etermax.gamescommon.resources.b.a && b.b() != com.etermax.gamescommon.resources.b.b && a.a().size() == 0)
        {
            int i = ac.length;
            int j = 0;
            while (j < i) 
            {
                com.etermax.preguntados.b.c c1 = ac[j];
                try
                {
                    a(c1);
                }
                catch (Exception exception) { }
                j++;
            }
        }
    }

    public boolean b(com.etermax.preguntados.b.c c1)
    {
        boolean flag;
        flag = true;
        break MISSING_BLOCK_LABEL_2;
_L1:
        do
        {
            return false;
        } while (b.b() == com.etermax.gamescommon.resources.b.a || b.b() == com.etermax.gamescommon.resources.b.b || !a.a(c1.a()));
        BufferedReader bufferedreader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
        long l;
        int i;
        String s = bufferedreader.readLine();
        l = Math.round(Integer.valueOf(bufferedreader.readLine().split("\\s+")[1]).intValue() / 1024);
        i = Math.round(Integer.valueOf(s.split("\\s+")[1]).intValue() / 1024);
        long l1 = i;
        if (l <= 13L || l1 <= 13L)
        {
            flag = false;
        }
        IOException ioexception;
        Exception exception;
        IOException ioexception1;
        IOException ioexception2;
        Exception exception1;
        IOException ioexception3;
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception4)
            {
                ioexception4.printStackTrace();
                return flag;
            }
            return flag;
        } else
        {
            return flag;
        }
        ioexception;
        bufferedreader = null;
_L6:
        ioexception.printStackTrace();
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception2)
            {
                ioexception2.printStackTrace();
                return false;
            }
            return false;
        }
          goto _L1
        exception1;
        bufferedreader = null;
_L5:
        exception1.printStackTrace();
        if (bufferedreader == null) goto _L1; else goto _L2
_L2:
        try
        {
            bufferedreader.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception3)
        {
            ioexception3.printStackTrace();
            return false;
        }
        return false;
        exception;
        bufferedreader = null;
_L4:
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        }
        throw exception;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
        exception1;
          goto _L5
        ioexception;
          goto _L6
    }
}
