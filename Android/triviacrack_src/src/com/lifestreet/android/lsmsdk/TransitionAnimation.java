// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


public final class TransitionAnimation extends Enum
{

    private static final TransitionAnimation $VALUES[];
    public static final TransitionAnimation CURLDOWN;
    public static final TransitionAnimation CURLUP;
    public static final TransitionAnimation DEFAULT;
    public static final TransitionAnimation FLIPFROMLEFT;
    public static final TransitionAnimation FLIPFROMRIGHT;
    public static final TransitionAnimation NONE;
    public static final TransitionAnimation RANDOM;

    private TransitionAnimation(String s, int i)
    {
        super(s, i);
    }

    public static boolean doesNotExist(String s)
    {
        TransitionAnimation atransitionanimation[] = values();
        int i = atransitionanimation.length;
        for (int j = 0; j < i; j++)
        {
            if (atransitionanimation[j].name().equals(s))
            {
                return false;
            }
        }

        return true;
    }

    public static TransitionAnimation valueOf(String s)
    {
        return (TransitionAnimation)Enum.valueOf(com/lifestreet/android/lsmsdk/TransitionAnimation, s);
    }

    public static TransitionAnimation[] values()
    {
        return (TransitionAnimation[])$VALUES.clone();
    }

    static 
    {
        NONE = new TransitionAnimation("NONE", 0);
        RANDOM = new TransitionAnimation("RANDOM", 1);
        FLIPFROMLEFT = new TransitionAnimation("FLIPFROMLEFT", 2);
        FLIPFROMRIGHT = new TransitionAnimation("FLIPFROMRIGHT", 3);
        CURLUP = new TransitionAnimation("CURLUP", 4);
        CURLDOWN = new TransitionAnimation("CURLDOWN", 5);
        TransitionAnimation atransitionanimation[] = new TransitionAnimation[6];
        atransitionanimation[0] = NONE;
        atransitionanimation[1] = RANDOM;
        atransitionanimation[2] = FLIPFROMLEFT;
        atransitionanimation[3] = FLIPFROMRIGHT;
        atransitionanimation[4] = CURLUP;
        atransitionanimation[5] = CURLDOWN;
        $VALUES = atransitionanimation;
        DEFAULT = NONE;
    }
}
