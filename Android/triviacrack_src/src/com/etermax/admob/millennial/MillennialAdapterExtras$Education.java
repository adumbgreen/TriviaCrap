// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.millennial;


public final class description extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ASSOCIATE;
    public static final .VALUES BACHELORS;
    public static final .VALUES HIGH_SCHOOL;
    public static final .VALUES IN_COLLEGE;
    public static final .VALUES MASTERS;
    public static final .VALUES PHD;
    public static final .VALUES PROFESSIONAL;
    public static final .VALUES SOME_COLLEGE;
    private final String description;

    public static description valueOf(String s)
    {
        return (description)Enum.valueOf(com/etermax/admob/millennial/MillennialAdapterExtras$Education, s);
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
        HIGH_SCHOOL = new <init>("HIGH_SCHOOL", 0, "highschool");
        IN_COLLEGE = new <init>("IN_COLLEGE", 1, "incollege");
        SOME_COLLEGE = new <init>("SOME_COLLEGE", 2, "somecollege");
        ASSOCIATE = new <init>("ASSOCIATE", 3, "associate");
        BACHELORS = new <init>("BACHELORS", 4, "bachelors");
        MASTERS = new <init>("MASTERS", 5, "masters");
        PHD = new <init>("PHD", 6, "phd");
        PROFESSIONAL = new <init>("PROFESSIONAL", 7, "professional");
        description adescription[] = new <init>[8];
        adescription[0] = HIGH_SCHOOL;
        adescription[1] = IN_COLLEGE;
        adescription[2] = SOME_COLLEGE;
        adescription[3] = ASSOCIATE;
        adescription[4] = BACHELORS;
        adescription[5] = MASTERS;
        adescription[6] = PHD;
        adescription[7] = PROFESSIONAL;
        $VALUES = adescription;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        description = s1;
    }
}
