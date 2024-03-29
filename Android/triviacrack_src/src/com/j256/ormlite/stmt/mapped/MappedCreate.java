// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;

// Referenced classes of package com.j256.ormlite.stmt.mapped:
//            BaseMappedStatement

public class MappedCreate extends BaseMappedStatement
{

    private String dataClassName;
    private final String queryNextSequenceStmt;
    private int versionFieldTypeIndex;

    private MappedCreate(TableInfo tableinfo, String s, FieldType afieldtype[], String s1, int i)
    {
        super(tableinfo, s, afieldtype);
        dataClassName = tableinfo.getDataClass().getSimpleName();
        queryNextSequenceStmt = s1;
        versionFieldTypeIndex = i;
    }

    private void assignIdValue(Object obj, Number number, String s, ObjectCache objectcache)
    {
        idField.assignIdValue(obj, number, objectcache);
        if (logger.isLevelEnabled(com.j256.ormlite.logger.Log.Level.DEBUG))
        {
            Logger logger = logger;
            Object aobj[] = new Object[4];
            aobj[0] = number;
            aobj[1] = s;
            aobj[2] = idField.getFieldName();
            aobj[3] = dataClassName;
            logger.debug("assigned id '{}' from {} to '{}' in {} object", aobj);
        }
    }

    private void assignSequenceId(DatabaseConnection databaseconnection, Object obj, ObjectCache objectcache)
    {
        long l = databaseconnection.queryForLong(queryNextSequenceStmt);
        logger.debug("queried for sequence {} using stmt: {}", Long.valueOf(l), queryNextSequenceStmt);
        if (l == 0L)
        {
            throw new SQLException((new StringBuilder()).append("Should not have returned 0 for stmt: ").append(queryNextSequenceStmt).toString());
        } else
        {
            assignIdValue(obj, Long.valueOf(l), "sequence", objectcache);
            return;
        }
    }

    public static MappedCreate build(DatabaseType databasetype, TableInfo tableinfo)
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        appendTableName(databasetype, stringbuilder, "INSERT INTO ", tableinfo.getTableName());
        int i = -1;
        FieldType afieldtype[] = tableinfo.getFieldTypes();
        int j = afieldtype.length;
        int k = 0;
        int l = 0;
        for (; k < j; k++)
        {
            FieldType fieldtype1 = afieldtype[k];
            if (!isFieldCreatable(databasetype, fieldtype1))
            {
                continue;
            }
            if (fieldtype1.isVersion())
            {
                i = l;
            }
            l++;
        }

        FieldType afieldtype1[] = new FieldType[l];
        String s;
        if (l == 0)
        {
            databasetype.appendInsertNoColumns(stringbuilder);
        } else
        {
            stringbuilder.append('(');
            FieldType afieldtype2[] = tableinfo.getFieldTypes();
            int i1 = afieldtype2.length;
            int j1 = 0;
            boolean flag = true;
            int k1 = 0;
            while (j1 < i1) 
            {
                FieldType fieldtype = afieldtype2[j1];
                if (isFieldCreatable(databasetype, fieldtype))
                {
                    int j2;
                    if (flag)
                    {
                        flag = false;
                    } else
                    {
                        stringbuilder.append(",");
                    }
                    appendFieldColumnName(databasetype, stringbuilder, fieldtype, null);
                    j2 = k1 + 1;
                    afieldtype1[k1] = fieldtype;
                    k1 = j2;
                }
                j1++;
            }
            stringbuilder.append(") VALUES (");
            FieldType afieldtype3[] = tableinfo.getFieldTypes();
            int l1 = afieldtype3.length;
            int i2 = 0;
            boolean flag1 = true;
            while (i2 < l1) 
            {
                if (isFieldCreatable(databasetype, afieldtype3[i2]))
                {
                    if (flag1)
                    {
                        flag1 = false;
                    } else
                    {
                        stringbuilder.append(",");
                    }
                    stringbuilder.append("?");
                }
                i2++;
            }
            stringbuilder.append(")");
        }
        s = buildQueryNextSequence(databasetype, tableinfo.getIdField());
        return new MappedCreate(tableinfo, stringbuilder.toString(), afieldtype1, s, i);
    }

    private static String buildQueryNextSequence(DatabaseType databasetype, FieldType fieldtype)
    {
        String s;
        if (fieldtype != null)
        {
            if ((s = fieldtype.getGeneratedIdSequence()) != null)
            {
                StringBuilder stringbuilder = new StringBuilder(64);
                databasetype.appendSelectNextValFromSequence(stringbuilder, s);
                return stringbuilder.toString();
            }
        }
        return null;
    }

    private boolean foreignCollectionsAreAssigned(FieldType afieldtype[], Object obj)
    {
        int i = afieldtype.length;
        for (int j = 0; j < i; j++)
        {
            if (afieldtype[j].extractJavaFieldValue(obj) == null)
            {
                return false;
            }
        }

        return true;
    }

    private static boolean isFieldCreatable(DatabaseType databasetype, FieldType fieldtype)
    {
        if (!fieldtype.isForeignCollection() && !fieldtype.isReadOnly())
        {
            if (databasetype.isIdSequenceNeeded() && databasetype.isSelectSequenceBeforeInsert())
            {
                return true;
            }
            if (!fieldtype.isGeneratedId() || fieldtype.isSelfGeneratedId() || fieldtype.isAllowGeneratedIdInsert())
            {
                return true;
            }
        }
        return false;
    }

    public int insert(DatabaseType databasetype, DatabaseConnection databaseconnection, Object obj, ObjectCache objectcache)
    {
        int i = 0;
        if (idField == null) goto _L2; else goto _L1
_L1:
        KeyHolder keyholder;
        FieldType afieldtype[];
        int k;
        FieldType fieldtype1;
        boolean flag;
        boolean flag1;
        if (idField.isAllowGeneratedIdInsert() && !idField.isObjectsFieldValueDefault(obj))
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        if (!idField.isSelfGeneratedId() || !idField.isGeneratedId()) goto _L4; else goto _L3
_L3:
        if (!flag1) goto _L2; else goto _L5
_L5:
        idField.assignField(obj, idField.generateId(), false, objectcache);
        keyholder = null;
_L18:
        if (!tableInfo.isForeignAutoCreate()) goto _L7; else goto _L6
_L6:
        afieldtype = tableInfo.getFieldTypes();
        k = afieldtype.length;
_L11:
        if (i >= k) goto _L7; else goto _L8
_L8:
        Object obj3;
        try
        {
            fieldtype1 = afieldtype[i];
            flag = fieldtype1.isForeignAutoCreate();
        }
        catch (SQLException sqlexception)
        {
            throw SqlExceptionUtil.create((new StringBuilder()).append("Unable to run insert stmt on object ").append(obj).append(": ").append(statement).toString(), sqlexception);
        }
        if (flag) goto _L10; else goto _L9
_L9:
        i++;
          goto _L11
_L4:
        if (idField.isGeneratedIdSequence() && databasetype.isSelectSequenceBeforeInsert())
        {
            if (flag1)
            {
                assignSequenceId(databaseconnection, obj, objectcache);
                keyholder = null;
                continue; /* Loop/switch isn't completed */
            }
        } else
        if (idField.isGeneratedId() && flag1)
        {
            keyholder = new KeyHolder();
            continue; /* Loop/switch isn't completed */
        }
          goto _L2
_L10:
        obj3 = fieldtype1.extractRawJavaFieldValue(obj);
        if (obj3 == null) goto _L9; else goto _L12
_L12:
        if (!fieldtype1.getForeignIdField().isObjectsFieldValueDefault(obj3)) goto _L9; else goto _L13
_L13:
        fieldtype1.createWithForeignDao(obj3);
          goto _L9
_L7:
        Object aobj[] = getFieldObjects(obj);
        if (versionFieldTypeIndex < 0 || aobj[versionFieldTypeIndex] != null) goto _L15; else goto _L14
_L14:
        Object obj1;
        FieldType fieldtype = argFieldTypes[versionFieldTypeIndex];
        obj1 = fieldtype.moveToNextValue(null);
        aobj[versionFieldTypeIndex] = fieldtype.convertJavaFieldToSqlArgValue(obj1);
_L16:
        int j = databaseconnection.insert(statement, aobj, argFieldTypes, keyholder);
        logger.debug("insert data with statement '{}' and {} args, changed {} rows", statement, Integer.valueOf(aobj.length), Integer.valueOf(j));
        if (aobj.length > 0)
        {
            logger.trace("insert arguments: {}", ((Object) (aobj)));
        }
        if (j <= 0)
        {
            break MISSING_BLOCK_LABEL_577;
        }
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_429;
        }
        argFieldTypes[versionFieldTypeIndex].assignField(obj, obj1, false, null);
        if (keyholder == null)
        {
            break MISSING_BLOCK_LABEL_533;
        }
        Number number = keyholder.getKey();
        if (number != null)
        {
            break MISSING_BLOCK_LABEL_500;
        }
        throw new SQLException("generated-id key was not set by the update call");
        SQLException sqlexception1;
        sqlexception1;
        logger.debug("insert data with statement '{}' and {} args, threw exception: {}", statement, Integer.valueOf(aobj.length), sqlexception1);
        if (aobj.length > 0)
        {
            logger.trace("insert arguments: {}", ((Object) (aobj)));
        }
        throw sqlexception1;
        if (number.longValue() == 0L)
        {
            throw new SQLException("generated-id key must not be 0 value");
        }
        assignIdValue(obj, number, "keyholder", objectcache);
        if (objectcache == null)
        {
            break MISSING_BLOCK_LABEL_577;
        }
        if (foreignCollectionsAreAssigned(tableInfo.getForeignCollections(), obj))
        {
            Object obj2 = idField.extractJavaFieldValue(obj);
            objectcache.put(clazz, obj2, obj);
        }
        return j;
_L15:
        obj1 = null;
        if (true) goto _L16; else goto _L2
_L2:
        keyholder = null;
        if (true) goto _L18; else goto _L17
_L17:
    }

    private class KeyHolder
        implements GeneratedKeyHolder
    {

        Number key;

        public void addKey(Number number)
        {
            if (key == null)
            {
                key = number;
                return;
            } else
            {
                throw new SQLException((new StringBuilder()).append("generated key has already been set to ").append(key).append(", now set to ").append(number).toString());
            }
        }

        public Number getKey()
        {
            return key;
        }

        private KeyHolder()
        {
        }

    }

}
