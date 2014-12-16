// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.j256.ormlite.android;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.DatabaseTableConfig;
import java.lang.reflect.Field;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;

public class DatabaseTableConfigUtil
{

    private static final int ALLOW_GENERATED_ID_INSERT = 24;
    private static final int CAN_BE_NULL = 5;
    private static final int COLUMN_DEFINITON = 25;
    private static final int COLUMN_NAME = 1;
    private static final int DATA_TYPE = 2;
    private static final int DEFAULT_VALUE = 3;
    private static final int FOREIGN = 9;
    private static final int FOREIGN_AUTO_CREATE = 26;
    private static final int FOREIGN_AUTO_REFRESH = 21;
    private static final int FOREIGN_COLUMN_NAME = 28;
    private static final int FORMAT = 14;
    private static final int GENERATED_ID = 7;
    private static final int GENERATED_ID_SEQUENCE = 8;
    private static final int ID = 6;
    private static final int INDEX = 17;
    private static final int INDEX_NAME = 19;
    private static final int MAX_FOREIGN_AUTO_REFRESH_LEVEL = 22;
    private static final int PERSISTED = 13;
    private static final int PERSISTER_CLASS = 23;
    private static final int READ_ONLY = 29;
    private static final int THROW_IF_NULL = 12;
    private static final int UNIQUE = 15;
    private static final int UNIQUE_COMBO = 16;
    private static final int UNIQUE_INDEX = 18;
    private static final int UNIQUE_INDEX_NAME = 20;
    private static final int UNKNOWN_ENUM_NAME = 11;
    private static final int USE_GET_SET = 10;
    private static final int VERSION = 27;
    private static final int WIDTH = 4;
    private static Class annotationFactoryClazz;
    private static Class annotationMemberClazz;
    private static final int configFieldNums[] = lookupClasses();
    private static Field elementsField;
    private static Field nameField;
    private static Field valueField;
    private static int workedC = 0;

    public DatabaseTableConfigUtil()
    {
    }

    private static void assignConfigField(int i, DatabaseFieldConfig databasefieldconfig, Field field, Object obj)
    {
        i;
        JVM INSTR tableswitch 1 29: default 132
    //                   1 159
    //                   2 171
    //                   3 180
    //                   4 208
    //                   5 220
    //                   6 232
    //                   7 244
    //                   8 256
    //                   9 268
    //                   10 280
    //                   11 292
    //                   12 305
    //                   13 317
    //                   14 329
    //                   15 341
    //                   16 353
    //                   17 365
    //                   18 377
    //                   19 389
    //                   20 401
    //                   21 413
    //                   22 425
    //                   23 437
    //                   24 446
    //                   25 458
    //                   26 470
    //                   27 482
    //                   28 494
    //                   29 506;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28 _L29 _L30
_L1:
        throw new IllegalStateException((new StringBuilder()).append("Could not find support for DatabaseField number ").append(i).toString());
_L2:
        databasefieldconfig.setColumnName(valueIfNotBlank((String)obj));
_L32:
        return;
_L3:
        databasefieldconfig.setDataType((DataType)obj);
        return;
_L4:
        String s = (String)obj;
        if (s == null || s.equals("__ormlite__ no default value string was specified")) goto _L32; else goto _L31
_L31:
        databasefieldconfig.setDefaultValue(s);
        return;
_L5:
        databasefieldconfig.setWidth(((Integer)obj).intValue());
        return;
_L6:
        databasefieldconfig.setCanBeNull(((Boolean)obj).booleanValue());
        return;
_L7:
        databasefieldconfig.setId(((Boolean)obj).booleanValue());
        return;
_L8:
        databasefieldconfig.setGeneratedId(((Boolean)obj).booleanValue());
        return;
_L9:
        databasefieldconfig.setGeneratedIdSequence(valueIfNotBlank((String)obj));
        return;
_L10:
        databasefieldconfig.setForeign(((Boolean)obj).booleanValue());
        return;
_L11:
        databasefieldconfig.setUseGetSet(((Boolean)obj).booleanValue());
        return;
_L12:
        databasefieldconfig.setUnknownEnumValue(DatabaseFieldConfig.findMatchingEnumVal(field, (String)obj));
        return;
_L13:
        databasefieldconfig.setThrowIfNull(((Boolean)obj).booleanValue());
        return;
_L14:
        databasefieldconfig.setPersisted(((Boolean)obj).booleanValue());
        return;
_L15:
        databasefieldconfig.setFormat(valueIfNotBlank((String)obj));
        return;
_L16:
        databasefieldconfig.setUnique(((Boolean)obj).booleanValue());
        return;
_L17:
        databasefieldconfig.setUniqueCombo(((Boolean)obj).booleanValue());
        return;
_L18:
        databasefieldconfig.setIndex(((Boolean)obj).booleanValue());
        return;
_L19:
        databasefieldconfig.setUniqueIndex(((Boolean)obj).booleanValue());
        return;
_L20:
        databasefieldconfig.setIndexName(valueIfNotBlank((String)obj));
        return;
_L21:
        databasefieldconfig.setUniqueIndexName(valueIfNotBlank((String)obj));
        return;
_L22:
        databasefieldconfig.setForeignAutoRefresh(((Boolean)obj).booleanValue());
        return;
_L23:
        databasefieldconfig.setMaxForeignAutoRefreshLevel(((Integer)obj).intValue());
        return;
_L24:
        databasefieldconfig.setPersisterClass((Class)obj);
        return;
_L25:
        databasefieldconfig.setAllowGeneratedIdInsert(((Boolean)obj).booleanValue());
        return;
_L26:
        databasefieldconfig.setColumnDefinition(valueIfNotBlank((String)obj));
        return;
_L27:
        databasefieldconfig.setForeignAutoCreate(((Boolean)obj).booleanValue());
        return;
_L28:
        databasefieldconfig.setVersion(((Boolean)obj).booleanValue());
        return;
_L29:
        databasefieldconfig.setForeignColumnName(valueIfNotBlank((String)obj));
        return;
_L30:
        databasefieldconfig.setReadOnly(((Boolean)obj).booleanValue());
        return;
    }

    private static DatabaseFieldConfig buildConfig(DatabaseField databasefield, String s, Field field)
    {
        java.lang.reflect.InvocationHandler invocationhandler = Proxy.getInvocationHandler(databasefield);
        if (invocationhandler.getClass() != annotationFactoryClazz)
        {
            return null;
        }
        Object obj = elementsField.get(invocationhandler);
        if (obj == null)
        {
            return null;
        }
        DatabaseFieldConfig databasefieldconfig = new DatabaseFieldConfig(field.getName());
        Object aobj[] = (Object[])(Object[])obj;
        for (int i = 0; i < configFieldNums.length; i++)
        {
            Object obj1 = valueField.get(aobj[i]);
            if (obj1 != null)
            {
                assignConfigField(configFieldNums[i], databasefieldconfig, field, obj1);
            }
        }

        return databasefieldconfig;
    }

    private static int configFieldNameToNum(String s)
    {
        if (s.equals("columnName"))
        {
            return 1;
        }
        if (s.equals("dataType"))
        {
            return 2;
        }
        if (s.equals("defaultValue"))
        {
            return 3;
        }
        if (s.equals("width"))
        {
            return 4;
        }
        if (s.equals("canBeNull"))
        {
            return 5;
        }
        if (s.equals("id"))
        {
            return 6;
        }
        if (s.equals("generatedId"))
        {
            return 7;
        }
        if (s.equals("generatedIdSequence"))
        {
            return 8;
        }
        if (s.equals("foreign"))
        {
            return 9;
        }
        if (s.equals("useGetSet"))
        {
            return 10;
        }
        if (s.equals("unknownEnumName"))
        {
            return 11;
        }
        if (s.equals("throwIfNull"))
        {
            return 12;
        }
        if (s.equals("persisted"))
        {
            return 13;
        }
        if (s.equals("format"))
        {
            return 14;
        }
        if (s.equals("unique"))
        {
            return 15;
        }
        if (s.equals("uniqueCombo"))
        {
            return 16;
        }
        if (s.equals("index"))
        {
            return 17;
        }
        if (s.equals("uniqueIndex"))
        {
            return 18;
        }
        if (s.equals("indexName"))
        {
            return 19;
        }
        if (s.equals("uniqueIndexName"))
        {
            return 20;
        }
        if (s.equals("foreignAutoRefresh"))
        {
            return 21;
        }
        if (s.equals("maxForeignAutoRefreshLevel"))
        {
            return 22;
        }
        if (s.equals("persisterClass"))
        {
            return 23;
        }
        if (s.equals("allowGeneratedIdInsert"))
        {
            return 24;
        }
        if (s.equals("columnDefinition"))
        {
            return 25;
        }
        if (s.equals("foreignAutoCreate"))
        {
            return 26;
        }
        if (s.equals("version"))
        {
            return 27;
        }
        if (s.equals("foreignColumnName"))
        {
            return 28;
        }
        if (s.equals("readOnly"))
        {
            return 29;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Could not find support for DatabaseField ").append(s).toString());
        }
    }

    private static DatabaseFieldConfig configFromField(DatabaseType databasetype, String s, Field field)
    {
        DatabaseField databasefield;
        if (configFieldNums == null)
        {
            return DatabaseFieldConfig.fromField(databasetype, s, field);
        }
        databasefield = (DatabaseField)field.getAnnotation(com/j256/ormlite/field/DatabaseField);
        if (databasefield == null) goto _L2; else goto _L1
_L1:
        DatabaseFieldConfig databasefieldconfig;
        DatabaseFieldConfig databasefieldconfig1;
        try
        {
            databasefieldconfig1 = buildConfig(databasefield, s, field);
        }
        catch (Exception exception)
        {
            databasefieldconfig = null;
            continue; /* Loop/switch isn't completed */
        }
        databasefieldconfig = databasefieldconfig1;
_L4:
        if (databasefieldconfig == null)
        {
            return DatabaseFieldConfig.fromField(databasetype, s, field);
        } else
        {
            workedC = 1 + workedC;
            return databasefieldconfig;
        }
_L2:
        databasefieldconfig = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static DatabaseTableConfig fromClass(ConnectionSource connectionsource, Class class1)
    {
        DatabaseType databasetype = connectionsource.getDatabaseType();
        String s = DatabaseTableConfig.extractTableName(class1);
        ArrayList arraylist = new ArrayList();
        for (Class class2 = class1; class2 != null; class2 = class2.getSuperclass())
        {
            Field afield[] = class2.getDeclaredFields();
            int i = afield.length;
            for (int j = 0; j < i; j++)
            {
                DatabaseFieldConfig databasefieldconfig = configFromField(databasetype, s, afield[j]);
                if (databasefieldconfig != null && databasefieldconfig.isPersisted())
                {
                    arraylist.add(databasefieldconfig);
                }
            }

        }

        if (arraylist.size() == 0)
        {
            return null;
        } else
        {
            return new DatabaseTableConfig(class1, s, arraylist);
        }
    }

    public static int getWorkedC()
    {
        return workedC;
    }

    private static int[] lookupClasses()
    {
        Class class1;
        Field field;
        java.lang.reflect.InvocationHandler invocationhandler;
        try
        {
            annotationFactoryClazz = Class.forName("org.apache.harmony.lang.annotation.AnnotationFactory");
            annotationMemberClazz = Class.forName("org.apache.harmony.lang.annotation.AnnotationMember");
            class1 = Class.forName("[Lorg.apache.harmony.lang.annotation.AnnotationMember;");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            return null;
        }
        try
        {
            elementsField = annotationFactoryClazz.getDeclaredField("elements");
            elementsField.setAccessible(true);
            nameField = annotationMemberClazz.getDeclaredField("name");
            nameField.setAccessible(true);
            valueField = annotationMemberClazz.getDeclaredField("value");
            valueField.setAccessible(true);
            field = com/j256/ormlite/android/DatabaseTableConfigUtil$DatabaseFieldSample.getDeclaredField("field");
        }
        catch (SecurityException securityexception)
        {
            return null;
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            return null;
        }
        invocationhandler = Proxy.getInvocationHandler((DatabaseField)field.getAnnotation(com/j256/ormlite/field/DatabaseField));
        if (invocationhandler.getClass() != annotationFactoryClazz)
        {
            return null;
        }
        Object obj;
        Object aobj[];
        int ai[];
        int i;
        try
        {
            obj = elementsField.get(invocationhandler);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            return null;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_221;
        }
        if (obj.getClass() != class1)
        {
            break MISSING_BLOCK_LABEL_221;
        }
        aobj = (Object[])(Object[])obj;
        ai = new int[aobj.length];
        i = 0;
_L2:
        if (i >= aobj.length)
        {
            break; /* Loop/switch isn't completed */
        }
        ai[i] = configFieldNameToNum((String)nameField.get(aobj[i]));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return ai;
        return null;
    }

    private static String valueIfNotBlank(String s)
    {
        if (s == null || s.length() == 0)
        {
            s = null;
        }
        return s;
    }

}
