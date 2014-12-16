// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ANGRY_MIX;
    public static final .VALUES ANGRY_WORDS;
    public static final .VALUES AWORDED;
    public static final .VALUES BINGO_CRACK;
    public static final .VALUES OTHER;
    public static final .VALUES TRIVIA_CRACK;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/etermax/gamescommon/datasource/dto/MessageDTO$Application, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        ANGRY_WORDS = new <init>("ANGRY_WORDS", 0);
        AWORDED = new <init>("AWORDED", 1);
        ANGRY_MIX = new <init>("ANGRY_MIX", 2);
        BINGO_CRACK = new <init>("BINGO_CRACK", 3);
        TRIVIA_CRACK = new <init>("TRIVIA_CRACK", 4);
        OTHER = new <init>("OTHER", 5);
        n_3B_.clone aclone[] = new <init>[6];
        aclone[0] = ANGRY_WORDS;
        aclone[1] = AWORDED;
        aclone[2] = ANGRY_MIX;
        aclone[3] = BINGO_CRACK;
        aclone[4] = TRIVIA_CRACK;
        aclone[5] = OTHER;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
