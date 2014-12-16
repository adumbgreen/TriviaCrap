// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;

import com.etermax.f;
import com.etermax.h;
import com.etermax.o;
import com.etermax.preguntados.c.a.g;

// Referenced classes of package com.etermax.preguntados.datasource.dto.enums:
//            QuestionCategory

public final class QuestionCategoryMapper extends Enum
    implements g
{

    private static final QuestionCategoryMapper $VALUES[];
    public static final QuestionCategoryMapper ARTS;
    public static final QuestionCategoryMapper ENTERTAINMENT;
    public static final QuestionCategoryMapper GEOGRAPHY;
    public static final QuestionCategoryMapper HISTORY;
    public static final QuestionCategoryMapper SCIENCE;
    public static final QuestionCategoryMapper SPORTS;
    private final QuestionCategory category;
    private final int headerColorResource;
    private final int iconColouredResource;
    private final int iconResource;
    private final int nameResource;
    private final int textColor;

    private QuestionCategoryMapper(String s, int i, QuestionCategory questioncategory, int j, int k, int l, int i1, 
            int j1)
    {
        super(s, i);
        category = questioncategory;
        nameResource = j;
        headerColorResource = k;
        iconResource = l;
        textColor = i1;
        iconColouredResource = j1;
    }

    public static QuestionCategoryMapper getByCategory(QuestionCategory questioncategory)
    {
        QuestionCategoryMapper aquestioncategorymapper[] = values();
        int i = aquestioncategorymapper.length;
        for (int j = 0; j < i; j++)
        {
            QuestionCategoryMapper questioncategorymapper = aquestioncategorymapper[j];
            if (questioncategorymapper.getCategory() == questioncategory)
            {
                return questioncategorymapper;
            }
        }

        return null;
    }

    public static QuestionCategoryMapper getByString(String s)
    {
        QuestionCategoryMapper aquestioncategorymapper[] = values();
        int i = aquestioncategorymapper.length;
        for (int j = 0; j < i; j++)
        {
            QuestionCategoryMapper questioncategorymapper = aquestioncategorymapper[j];
            if (questioncategorymapper.toString().equalsIgnoreCase(s))
            {
                return questioncategorymapper;
            }
        }

        return null;
    }

    public static QuestionCategory getCategoryAtIndex(int i)
    {
        return values()[i].getCategory();
    }

    public static int getIconByCategory(QuestionCategory questioncategory)
    {
        QuestionCategoryMapper aquestioncategorymapper[] = values();
        int i = aquestioncategorymapper.length;
        for (int j = 0; j < i; j++)
        {
            QuestionCategoryMapper questioncategorymapper = aquestioncategorymapper[j];
            if (questioncategorymapper.getCategory() == questioncategory)
            {
                return questioncategorymapper.iconResource;
            }
        }

        return -1;
    }

    public static int getOrdinalByCategory(QuestionCategory questioncategory)
    {
        return getByCategory(questioncategory).ordinal();
    }

    public static QuestionCategoryMapper valueOf(String s)
    {
        return (QuestionCategoryMapper)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper, s);
    }

    public static QuestionCategoryMapper[] values()
    {
        return (QuestionCategoryMapper[])$VALUES.clone();
    }

    public QuestionCategory getCategory()
    {
        return category;
    }

    public int getColouredIconResource()
    {
        return iconColouredResource;
    }

    public int getHeaderColorResource()
    {
        return headerColorResource;
    }

    public int getNameResource()
    {
        return nameResource;
    }

    public int getTextColorResource()
    {
        return textColor;
    }

    static 
    {
        ENTERTAINMENT = new QuestionCategoryMapper("ENTERTAINMENT", 0, QuestionCategory.ENTERTAINMENT, o.trivia_cat_05, f.pink, h.icon_category_04, f.pink, h.crown_entertainment);
        ARTS = new QuestionCategoryMapper("ARTS", 1, QuestionCategory.ARTS, o.trivia_cat_03, f.redLight, h.icon_category_06, f.redLight, h.crown_arts);
        SPORTS = new QuestionCategoryMapper("SPORTS", 2, QuestionCategory.SPORTS, o.trivia_cat_04, f.orangeLight, h.icon_category_05, f.orangeLight, h.crown_sports);
        HISTORY = new QuestionCategoryMapper("HISTORY", 3, QuestionCategory.HISTORY, o.trivia_cat_01, f.yellow, h.icon_category_03, f.yellow, h.crown_history);
        SCIENCE = new QuestionCategoryMapper("SCIENCE", 4, QuestionCategory.SCIENCE, o.trivia_cat_06, f.greenLight, h.icon_category_01, f.greenLight, h.crown_science);
        GEOGRAPHY = new QuestionCategoryMapper("GEOGRAPHY", 5, QuestionCategory.GEOGRAPHY, o.trivia_cat_02, f.blue, h.icon_category_02, f.blue, h.crown_geography);
        QuestionCategoryMapper aquestioncategorymapper[] = new QuestionCategoryMapper[6];
        aquestioncategorymapper[0] = ENTERTAINMENT;
        aquestioncategorymapper[1] = ARTS;
        aquestioncategorymapper[2] = SPORTS;
        aquestioncategorymapper[3] = HISTORY;
        aquestioncategorymapper[4] = SCIENCE;
        aquestioncategorymapper[5] = GEOGRAPHY;
        $VALUES = aquestioncategorymapper;
    }
}
