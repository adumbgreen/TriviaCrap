// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.a;

import android.content.Context;
import android.os.Handler;
import android.util.SparseArray;
import android.view.View;
import android.view.animation.AnimationUtils;
import java.util.Arrays;
import java.util.List;

public class a
{

    Context a;
    private SparseArray b;
    private Handler c;

    public a()
    {
        b = new SparseArray();
        c = new Handler();
    }

    public void a(View view, int i)
    {
        a(Arrays.asList(new View[] {
            view
        }), i, 0L);
    }

    public void a(List list, int i, long l)
    {
        for (int j = 0; j < list.size(); j++)
        {
            c.postDelayed(new Runnable(list, j, i) {

                final List a;
                final int b;
                final int c;
                final a d;

                public void run()
                {
                    ((View)a.get(b)).startAnimation(AnimationUtils.loadAnimation(d.a, c));
                }

            
            {
                d = a.this;
                a = list;
                b = i;
                c = j;
                super();
            }
            }, l * (long)j);
        }

    }
}
