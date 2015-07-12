// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class QuestionDisapprovalReason extends Enum
{

    private static final QuestionDisapprovalReason $VALUES[];
    public static final QuestionDisapprovalReason DISLIKED;
    public static final QuestionDisapprovalReason FUTURE_CHANGES;
    public static final QuestionDisapprovalReason MISSPELLED;
    public static final QuestionDisapprovalReason OFFENSIVE_CONTENT;
    public static final QuestionDisapprovalReason OTHER;
    public static final QuestionDisapprovalReason REPEATED;
    public static final QuestionDisapprovalReason SPAM;
    public static final QuestionDisapprovalReason VERY_SPECIFIC;
    public static final QuestionDisapprovalReason WRONG_ANSWER;
    public static final QuestionDisapprovalReason WRONG_CATEGORY;
    public static final QuestionDisapprovalReason WRONG_LANGUAGE;
    public static final QuestionDisapprovalReason WRONG_REGION;
    public static final QuestionDisapprovalReason WRONG_SPELLING_OR_GRAMMAR;

    private QuestionDisapprovalReason(String s, int i)
    {
        super(s, i);
    }

    public static QuestionDisapprovalReason valueOf(String s)
    {
        return (QuestionDisapprovalReason)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason, s);
    }

    public static QuestionDisapprovalReason[] values()
    {
        return (QuestionDisapprovalReason[])$VALUES.clone();
    }

    static 
    {
        REPEATED = new QuestionDisapprovalReason("REPEATED", 0);
        WRONG_SPELLING_OR_GRAMMAR = new QuestionDisapprovalReason("WRONG_SPELLING_OR_GRAMMAR", 1);
        OFFENSIVE_CONTENT = new QuestionDisapprovalReason("OFFENSIVE_CONTENT", 2);
        WRONG_CATEGORY = new QuestionDisapprovalReason("WRONG_CATEGORY", 3);
        WRONG_REGION = new QuestionDisapprovalReason("WRONG_REGION", 4);
        WRONG_ANSWER = new QuestionDisapprovalReason("WRONG_ANSWER", 5);
        MISSPELLED = new QuestionDisapprovalReason("MISSPELLED", 6);
        OTHER = new QuestionDisapprovalReason("OTHER", 7);
        DISLIKED = new QuestionDisapprovalReason("DISLIKED", 8);
        VERY_SPECIFIC = new QuestionDisapprovalReason("VERY_SPECIFIC", 9);
        WRONG_LANGUAGE = new QuestionDisapprovalReason("WRONG_LANGUAGE", 10);
        FUTURE_CHANGES = new QuestionDisapprovalReason("FUTURE_CHANGES", 11);
        SPAM = new QuestionDisapprovalReason("SPAM", 12);
        QuestionDisapprovalReason aquestiondisapprovalreason[] = new QuestionDisapprovalReason[13];
        aquestiondisapprovalreason[0] = REPEATED;
        aquestiondisapprovalreason[1] = WRONG_SPELLING_OR_GRAMMAR;
        aquestiondisapprovalreason[2] = OFFENSIVE_CONTENT;
        aquestiondisapprovalreason[3] = WRONG_CATEGORY;
        aquestiondisapprovalreason[4] = WRONG_REGION;
        aquestiondisapprovalreason[5] = WRONG_ANSWER;
        aquestiondisapprovalreason[6] = MISSPELLED;
        aquestiondisapprovalreason[7] = OTHER;
        aquestiondisapprovalreason[8] = DISLIKED;
        aquestiondisapprovalreason[9] = VERY_SPECIFIC;
        aquestiondisapprovalreason[10] = WRONG_LANGUAGE;
        aquestiondisapprovalreason[11] = FUTURE_CHANGES;
        aquestiondisapprovalreason[12] = SPAM;
        $VALUES = aquestiondisapprovalreason;
    }
}
