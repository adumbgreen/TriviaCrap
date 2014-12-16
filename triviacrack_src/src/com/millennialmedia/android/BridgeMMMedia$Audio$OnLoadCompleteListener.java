// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.media.SoundPool;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;

abstract class d
{

    private ArrayList a;
    final _cls1.a b;
    private Timer c;
    private SoundPool d;

    static ArrayList a(d d1)
    {
        return d1.a;
    }

    static SoundPool b(a a1)
    {
        return a1.d;
    }

    static Timer c(d d1)
    {
        return d1.c;
    }

    void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (c != null)
        {
            c.cancel();
            c.purge();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    void a(int i)
    {
        this;
        JVM INSTR monitorenter ;
        a.add(Integer.valueOf(i));
        if (a.size() == 1)
        {
            c = new Timer();
            c.scheduleAtFixedRate(new TimerTask() {

                final BridgeMMMedia.Audio.OnLoadCompleteListener a;

                public void run()
                {
                    ArrayList arraylist = new ArrayList();
                    Iterator iterator = BridgeMMMedia.Audio.OnLoadCompleteListener.a(a).iterator();
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            break;
                        }
                        Integer integer = (Integer)iterator.next();
                        int j = BridgeMMMedia.Audio.OnLoadCompleteListener.b(a).play(integer.intValue(), 0.0F, 0.0F, 0, 0, 1.0F);
                        if (j != 0)
                        {
                            BridgeMMMedia.Audio.OnLoadCompleteListener.b(a).stop(j);
                            a.onLoadComplete(BridgeMMMedia.Audio.OnLoadCompleteListener.b(a), integer.intValue(), 0);
                            arraylist.add(integer);
                        }
                    } while (true);
                    BridgeMMMedia.Audio.OnLoadCompleteListener.a(a).removeAll(arraylist);
                    if (BridgeMMMedia.Audio.OnLoadCompleteListener.a(a).size() == 0)
                    {
                        BridgeMMMedia.Audio.OnLoadCompleteListener.c(a).cancel();
                        BridgeMMMedia.Audio.OnLoadCompleteListener.c(a).purge();
                    }
                }

            
            {
                a = BridgeMMMedia.Audio.OnLoadCompleteListener.this;
                super();
            }
            }, 0L, 100L);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    abstract void onLoadComplete(SoundPool soundpool, int i, int j);

    public _cls1.a(_cls1.a a1, SoundPool soundpool)
    {
        b = a1;
        super();
        a = new ArrayList();
        d = soundpool;
    }
}
