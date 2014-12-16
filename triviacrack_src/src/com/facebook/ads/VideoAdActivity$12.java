// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;


// Referenced classes of package com.facebook.ads:
//            VideoAdActivity

class yerState
{

    static final int $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState[];

    static 
    {
        $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState = new int[yerState.values().length];
        try
        {
            $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState[yerState.PLAYING.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState[yerState.PAUSED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState[yerState.UNINITIALIZED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState[yerState.INITIALIZED.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState[yerState.COMPLETED.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4)
        {
            return;
        }
    }
}
