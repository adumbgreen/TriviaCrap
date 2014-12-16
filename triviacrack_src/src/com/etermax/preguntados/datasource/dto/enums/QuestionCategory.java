// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class QuestionCategory extends Enum
{

    private static final QuestionCategory $VALUES[];
    public static final QuestionCategory ARTS;
    public static final QuestionCategory CAT_01;
    public static final QuestionCategory CAT_02;
    public static final QuestionCategory CAT_03;
    public static final QuestionCategory CAT_04;
    public static final QuestionCategory CAT_05;
    public static final QuestionCategory CAT_06;
    public static final QuestionCategory ENTERTAINMENT;
    public static final QuestionCategory GEOGRAPHY;
    public static final QuestionCategory HISTORY;
    public static final QuestionCategory SCIENCE;
    public static final QuestionCategory SPORTS;

    private QuestionCategory(String s, int i)
    {
        super(s, i);
    }

    public static QuestionCategory valueOf(String s)
    {
        return (QuestionCategory)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/QuestionCategory, s);
    }

    public static QuestionCategory[] values()
    {
        return (QuestionCategory[])$VALUES.clone();
    }

    static 
    {
        ENTERTAINMENT = new QuestionCategory("ENTERTAINMENT", 0);
        ARTS = new QuestionCategory("ARTS", 1);
        SPORTS = new QuestionCategory("SPORTS", 2);
        HISTORY = new QuestionCategory("HISTORY", 3);
        SCIENCE = new QuestionCategory("SCIENCE", 4);
        GEOGRAPHY = new QuestionCategory("GEOGRAPHY", 5);
        CAT_06 = new QuestionCategory("CAT_06", 6);
        CAT_05 = new QuestionCategory("CAT_05", 7);
        CAT_04 = new QuestionCategory("CAT_04", 8);
        CAT_03 = new QuestionCategory("CAT_03", 9);
        CAT_02 = new QuestionCategory("CAT_02", 10);
        CAT_01 = new QuestionCategory("CAT_01", 11);
        QuestionCategory aquestioncategory[] = new QuestionCategory[12];
        aquestioncategory[0] = ENTERTAINMENT;
        aquestioncategory[1] = ARTS;
        aquestioncategory[2] = SPORTS;
        aquestioncategory[3] = HISTORY;
        aquestioncategory[4] = SCIENCE;
        aquestioncategory[5] = GEOGRAPHY;
        aquestioncategory[6] = CAT_06;
        aquestioncategory[7] = CAT_05;
        aquestioncategory[8] = CAT_04;
        aquestioncategory[9] = CAT_03;
        aquestioncategory[10] = CAT_02;
        aquestioncategory[11] = CAT_01;
        $VALUES = aquestioncategory;
    }
}
