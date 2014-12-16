// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.media.AudioManager;
import android.media.SoundPool;
import java.lang.ref.WeakReference;

class LoadCompleteListener extends LoadCompleteListener
{

    final a a;

    public void onLoadComplete(SoundPool soundpool, int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        if (soundpool == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        Context context = (Context)LoadCompleteListener(a).get();
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        AudioManager audiomanager = (AudioManager)context.getSystemService("audio");
        float f = (0.0F + (float)audiomanager.getStreamVolume(3)) / (float)audiomanager.getStreamMaxVolume(3);
        soundpool.play(i, f, f, 1, 0, 1.0F);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    LoadCompleteListener(LoadCompleteListener loadcompletelistener, SoundPool soundpool)
    {
        a = loadcompletelistener;
        super(loadcompletelistener, soundpool);
    }
}
