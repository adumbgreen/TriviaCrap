// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.millennial;


public final class description extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ASIAN;
    public static final .VALUES BLACK;
    public static final .VALUES HISPANIC;
    public static final .VALUES INDIAN;
    public static final .VALUES MIDDLE_EASTERN;
    public static final .VALUES NATIVE_AMERICAN;
    public static final .VALUES OTHER;
    public static final .VALUES PACIFIC_ISLANDER;
    public static final .VALUES WHITE;
    private final String description;

    public static description valueOf(String s)
    {
        return (description)Enum.valueOf(com/etermax/admob/millennial/MillennialAdapterExtras$Ethnicity, s);
    }

    public static description[] values()
    {
        return (description[])$VALUES.clone();
    }

    public String getDescription()
    {
        return description;
    }

    static 
    {
        HISPANIC = new <init>("HISPANIC", 0, "hispanic");
        BLACK = new <init>("BLACK", 1, "black");
        ASIAN = new <init>("ASIAN", 2, "asian");
        INDIAN = new <init>("INDIAN", 3, "indian");
        MIDDLE_EASTERN = new <init>("MIDDLE_EASTERN", 4, "middleeastern");
        NATIVE_AMERICAN = new <init>("NATIVE_AMERICAN", 5, "nativeamerican");
        PACIFIC_ISLANDER = new <init>("PACIFIC_ISLANDER", 6, "pacificislander");
        WHITE = new <init>("WHITE", 7, "white");
        OTHER = new <init>("OTHER", 8, "other");
        description adescription[] = new <init>[9];
        adescription[0] = HISPANIC;
        adescription[1] = BLACK;
        adescription[2] = ASIAN;
        adescription[3] = INDIAN;
        adescription[4] = MIDDLE_EASTERN;
        adescription[5] = NATIVE_AMERICAN;
        adescription[6] = PACIFIC_ISLANDER;
        adescription[7] = WHITE;
        adescription[8] = OTHER;
        $VALUES = adescription;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        description = s1;
    }
}
