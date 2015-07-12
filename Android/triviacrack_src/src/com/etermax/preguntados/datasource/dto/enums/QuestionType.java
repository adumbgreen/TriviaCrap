// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class QuestionType extends Enum
{

    private static final QuestionType $VALUES[];
    public static final QuestionType IMAGE;
    public static final QuestionType NORMAL;
    public static final QuestionType SOUND;
    public static final QuestionType VIDEO;

    private QuestionType(String s, int i)
    {
        super(s, i);
    }

    public static QuestionType valueOf(String s)
    {
        return (QuestionType)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/QuestionType, s);
    }

    public static QuestionType[] values()
    {
        return (QuestionType[])$VALUES.clone();
    }

    static 
    {
        NORMAL = new QuestionType("NORMAL", 0);
        IMAGE = new QuestionType("IMAGE", 1);
        VIDEO = new QuestionType("VIDEO", 2);
        SOUND = new QuestionType("SOUND", 3);
        QuestionType aquestiontype[] = new QuestionType[4];
        aquestiontype[0] = NORMAL;
        aquestiontype[1] = IMAGE;
        aquestiontype[2] = VIDEO;
        aquestiontype[3] = SOUND;
        $VALUES = aquestiontype;
    }
}
