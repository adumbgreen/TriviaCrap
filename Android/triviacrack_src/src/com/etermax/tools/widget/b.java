// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.os.AsyncTask;
import android.os.SystemClock;
import android.widget.RelativeLayout;
import android.widget.TextView;

// Referenced classes of package com.etermax.tools.widget:
//            ProfileProgressBar

class b extends AsyncTask
{

    final ProfileProgressBar a;

    private b(ProfileProgressBar profileprogressbar)
    {
        a = profileprogressbar;
        super();
    }

    b(ProfileProgressBar profileprogressbar, ProfileProgressBar._cls1 _pcls1)
    {
        this(profileprogressbar);
    }

    private void a(float f, float f1)
    {
        int i = 0;
        float f2 = f1;
        float f3 = f;
        while (i < 10) 
        {
            f3--;
            float f6 = f2 - 1.0F;
            Integer ainteger1[] = new Integer[4];
            ainteger1[0] = Integer.valueOf((int)f3);
            ainteger1[1] = Integer.valueOf((int)f6);
            ainteger1[2] = Integer.valueOf(a.g);
            ainteger1[3] = Integer.valueOf(a.h);
            publishProgress(ainteger1);
            int k = i + 1;
            SystemClock.sleep(20L);
            i = k;
            f2 = f6;
        }
        float f4 = f3;
        float f5 = f2;
        for (int j = 0; j < 10;)
        {
            f4++;
            f5++;
            Integer ainteger[] = new Integer[4];
            ainteger[0] = Integer.valueOf((int)f4);
            ainteger[1] = Integer.valueOf((int)f5);
            ainteger[2] = Integer.valueOf(a.g);
            ainteger[3] = Integer.valueOf(a.h);
            publishProgress(ainteger);
            j++;
            SystemClock.sleep(20L);
        }

    }

    protected transient Void a(Void avoid[])
    {
        SystemClock.sleep(850L);
        int i = a.g + a.h;
        int j = a.f.getMeasuredWidth() / 2;
        int k = a.f.getMeasuredWidth() / 2;
        if (i != 0)
        {
            j = (a.g * a.f.getMeasuredWidth()) / i;
            k = (a.h * a.f.getMeasuredWidth()) / i;
        }
        if (j <= a.b.getWidth())
        {
            j = a.b.getWidth();
            k = a.f.getMeasuredWidth() - j;
        }
        if (k <= a.c.getWidth())
        {
            k = a.c.getWidth();
            j = a.f.getMeasuredWidth() - k;
        }
        float f = (float)j / (float)a.i;
        float f1 = (float)k / (float)a.i;
        float f2 = 0.0F;
        float f3 = 0.0F;
        float f4 = 0.0F;
        float f5 = 0.0F;
        float f6 = (float)a.g / (float)a.i;
        float f7 = (float)a.h / (float)a.i;
        long l = System.currentTimeMillis();
        SystemClock.sleep(300L);
        int i1 = 0;
        while (i1 <= a.i) 
        {
            float f8 = f2 + f;
            float f9 = f3 + f1;
            float f10;
            float f11;
            long l1;
            long l2;
            Integer ainteger[];
            if (f4 < (float)a.g)
            {
                f10 = f4 + f6;
            } else
            {
                f10 = f4;
            }
            if (f5 < (float)a.h)
            {
                f11 = f5 + f7;
            } else
            {
                f11 = f5;
            }
            i1++;
            l1 = System.currentTimeMillis();
            l2 = l1 - l;
            ainteger = new Integer[4];
            ainteger[0] = Integer.valueOf((int)f8);
            ainteger[1] = Integer.valueOf((int)f9);
            ainteger[2] = Integer.valueOf((int)f10);
            ainteger[3] = Integer.valueOf((int)f11);
            publishProgress(ainteger);
            if (l2 < (long)a.j)
            {
                SystemClock.sleep((long)a.j - l2);
            }
            l = l1;
            f5 = f11;
            f4 = f10;
            f3 = f9;
            f2 = f8;
        }
        a(f2, f3);
        return null;
    }

    protected void a(Void void1)
    {
        super.onPostExecute(void1);
        a.b.setText(String.valueOf(a.g));
        a.c.setText(String.valueOf(a.h));
    }

    protected transient void a(Integer ainteger[])
    {
        super.onProgressUpdate(ainteger);
        if (a.d.getVisibility() != 0)
        {
            ProfileProgressBar.a(a);
            a.d.setVisibility(0);
            a.e.setVisibility(0);
        }
        ProfileProgressBar.a(a, a.d, ainteger[0].intValue());
        ProfileProgressBar.a(a, a.e, ainteger[1].intValue());
        a.b.setText(String.valueOf(ainteger[2]));
        a.c.setText(String.valueOf(ainteger[3]));
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Void)obj);
    }

    protected void onProgressUpdate(Object aobj[])
    {
        a((Integer[])aobj);
    }
}
