// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.j256.ormlite.android.apptools;

import android.content.Context;
import android.content.res.Resources;
import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;

// Referenced classes of package com.j256.ormlite.android.apptools:
//            OrmLiteSqliteOpenHelper

public class OpenHelperManager
{

    private static final String HELPER_CLASS_RESOURCE_NAME = "open_helper_classname";
    private static volatile OrmLiteSqliteOpenHelper helper = null;
    private static Class helperClass = null;
    private static int instanceCount = 0;
    private static Logger logger = LoggerFactory.getLogger(com/j256/ormlite/android/apptools/OpenHelperManager);
    private static boolean wasClosed = false;

    public OpenHelperManager()
    {
    }

    private static OrmLiteSqliteOpenHelper constructHelper(Context context, Class class1)
    {
        Constructor constructor;
        OrmLiteSqliteOpenHelper ormlitesqliteopenhelper;
        try
        {
            constructor = class1.getConstructor(new Class[] {
                android/content/Context
            });
        }
        catch (Exception exception)
        {
            throw new IllegalStateException((new StringBuilder()).append("Could not find public constructor that has a single (Context) argument for helper class ").append(class1).toString(), exception);
        }
        try
        {
            ormlitesqliteopenhelper = (OrmLiteSqliteOpenHelper)constructor.newInstance(new Object[] {
                context
            });
        }
        catch (Exception exception1)
        {
            throw new IllegalStateException((new StringBuilder()).append("Could not construct instance of helper class ").append(class1).toString(), exception1);
        }
        return ormlitesqliteopenhelper;
    }

    public static OrmLiteSqliteOpenHelper getHelper(Context context)
    {
        com/j256/ormlite/android/apptools/OpenHelperManager;
        JVM INSTR monitorenter ;
        if (helperClass != null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        throw new IllegalArgumentException("context argument is null");
        Exception exception;
        exception;
        com/j256/ormlite/android/apptools/OpenHelperManager;
        JVM INSTR monitorexit ;
        throw exception;
        innerSetHelperClass(lookupHelperClass(context.getApplicationContext(), context.getClass()));
        OrmLiteSqliteOpenHelper ormlitesqliteopenhelper = loadHelper(context, helperClass);
        com/j256/ormlite/android/apptools/OpenHelperManager;
        JVM INSTR monitorexit ;
        return ormlitesqliteopenhelper;
    }

    public static OrmLiteSqliteOpenHelper getHelper(Context context, Class class1)
    {
        com/j256/ormlite/android/apptools/OpenHelperManager;
        JVM INSTR monitorenter ;
        if (class1 != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        throw new IllegalArgumentException("openHelperClass argument is null");
        Exception exception;
        exception;
        com/j256/ormlite/android/apptools/OpenHelperManager;
        JVM INSTR monitorexit ;
        throw exception;
        OrmLiteSqliteOpenHelper ormlitesqliteopenhelper;
        innerSetHelperClass(class1);
        ormlitesqliteopenhelper = loadHelper(context, class1);
        com/j256/ormlite/android/apptools/OpenHelperManager;
        JVM INSTR monitorexit ;
        return ormlitesqliteopenhelper;
    }

    private static void innerSetHelperClass(Class class1)
    {
        if (class1 == null)
        {
            throw new IllegalStateException("Helper class was trying to be reset to null");
        }
        if (helperClass == null)
        {
            helperClass = class1;
        } else
        if (helperClass != class1)
        {
            throw new IllegalStateException((new StringBuilder()).append("Helper class was ").append(helperClass).append(" but is trying to be reset to ").append(class1).toString());
        }
    }

    private static OrmLiteSqliteOpenHelper loadHelper(Context context, Class class1)
    {
        if (helper == null)
        {
            if (wasClosed)
            {
                logger.info("helper was already closed and is being re-opened");
            }
            if (context == null)
            {
                throw new IllegalArgumentException("context argument is null");
            }
            helper = constructHelper(context.getApplicationContext(), class1);
            logger.trace("zero instances, created helper {}", helper);
            BaseDaoImpl.clearAllInternalObjectCaches();
            DaoManager.clearDaoCache();
            instanceCount = 0;
        }
        instanceCount = 1 + instanceCount;
        logger.trace("returning helper {}, instance count = {} ", helper, Integer.valueOf(instanceCount));
        return helper;
    }

    private static Class lookupHelperClass(Context context, Class class1)
    {
        Class class2;
        Resources resources = context.getResources();
        int i = resources.getIdentifier("open_helper_classname", "string", context.getPackageName());
        if (i != 0)
        {
            String s = resources.getString(i);
            Class class4;
            try
            {
                class4 = Class.forName(s);
            }
            catch (Exception exception)
            {
                throw new IllegalStateException((new StringBuilder()).append("Could not create helper instance for class ").append(s).toString(), exception);
            }
            return class4;
        }
        class2 = class1;
_L2:
        java.lang.reflect.Type type;
        if (class2 == null)
        {
            break MISSING_BLOCK_LABEL_188;
        }
        type = class2.getGenericSuperclass();
        if (type != null && (type instanceof ParameterizedType))
        {
            break; /* Loop/switch isn't completed */
        }
_L4:
        class2 = class2.getSuperclass();
        java.lang.reflect.Type atype[];
        if (true) goto _L2; else goto _L1
_L1:
        if ((atype = ((ParameterizedType)type).getActualTypeArguments()) == null || atype.length == 0) goto _L4; else goto _L3
_L3:
        int j;
        int k;
        j = atype.length;
        k = 0;
_L8:
        if (k >= j) goto _L4; else goto _L5
_L5:
        java.lang.reflect.Type type1 = atype[k];
        if (type1 instanceof Class) goto _L7; else goto _L6
_L6:
        Class class3;
        k++;
          goto _L8
_L7:
        if (!com/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper.isAssignableFrom(class3 = (Class)type1)) goto _L6; else goto _L9
_L9:
        return class3;
        throw new IllegalStateException((new StringBuilder()).append("Could not find OpenHelperClass because none of the generic parameters of class ").append(class1).append(" extends OrmLiteSqliteOpenHelper.  You should use getHelper(Context, Class) instead.").toString());
    }

    public static void release()
    {
        releaseHelper();
    }

    public static void releaseHelper()
    {
        com/j256/ormlite/android/apptools/OpenHelperManager;
        JVM INSTR monitorenter ;
        instanceCount = -1 + instanceCount;
        logger.trace("releasing helper {}, instance count = {}", helper, Integer.valueOf(instanceCount));
        if (instanceCount <= 0)
        {
            if (helper != null)
            {
                logger.trace("zero instances, closing helper {}", helper);
                helper.close();
                helper = null;
                wasClosed = true;
            }
            if (instanceCount < 0)
            {
                logger.error("too many calls to release helper, instance count = {}", Integer.valueOf(instanceCount));
            }
        }
        com/j256/ormlite/android/apptools/OpenHelperManager;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void setHelper(OrmLiteSqliteOpenHelper ormlitesqliteopenhelper)
    {
        com/j256/ormlite/android/apptools/OpenHelperManager;
        JVM INSTR monitorenter ;
        helper = ormlitesqliteopenhelper;
        com/j256/ormlite/android/apptools/OpenHelperManager;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void setOpenHelperClass(Class class1)
    {
        com/j256/ormlite/android/apptools/OpenHelperManager;
        JVM INSTR monitorenter ;
        if (class1 != null) goto _L2; else goto _L1
_L1:
        helperClass = null;
_L4:
        com/j256/ormlite/android/apptools/OpenHelperManager;
        JVM INSTR monitorexit ;
        return;
_L2:
        innerSetHelperClass(class1);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

}
