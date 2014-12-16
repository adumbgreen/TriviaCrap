// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package com.millennialmedia.android:
//            MMBaseActivity, MMLog, BridgeMMMedia

class a extends MMBaseActivity
{

    boolean a;
    private Uri b;

    protected void a(int i, int j, Intent intent)
    {
        FileOutputStream fileoutputstream;
        fileoutputstream = null;
        super.a(i, j, intent);
        if (intent == null) goto _L2; else goto _L1
_L1:
        Uri uri = intent.getData();
        if (uri != null) goto _L4; else goto _L3
_L3:
        if (intent.getExtras() == null) goto _L2; else goto _L5
_L5:
        Bitmap bitmap = (Bitmap)intent.getExtras().get("data");
        FileOutputStream fileoutputstream1;
        ByteArrayInputStream bytearrayinputstream;
        File file = new File(getIntent().getData().getPath());
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.erActivity.getIntent, 0, bytearrayoutputstream);
        bytearrayinputstream = new ByteArrayInputStream(bytearrayoutputstream.toByteArray());
        fileoutputstream1 = new FileOutputStream(file);
        byte abyte0[] = new byte[1024];
_L8:
        int k = bytearrayinputstream.read(abyte0);
        if (k <= 0) goto _L7; else goto _L6
_L6:
        fileoutputstream1.write(abyte0, 0, k);
          goto _L8
        Exception exception2;
        exception2;
_L31:
        MMLog.a("BridgeMMMedia", "Problem getting bitmap from data", exception2);
        if (true)
        {
            break MISSING_BLOCK_LABEL_164;
        }
        null.close();
        if (fileoutputstream1 == null) goto _L2; else goto _L9
_L9:
        fileoutputstream1.close();
_L2:
        synchronized (BridgeMMMedia.a())
        {
            BridgeMMMedia.a().notify();
        }
        finish();
        return;
_L7:
        if (true)
        {
            break MISSING_BLOCK_LABEL_204;
        }
        null.close();
        if (fileoutputstream1 != null)
        {
            try
            {
                fileoutputstream1.close();
            }
            catch (Exception exception6)
            {
                try
                {
                    MMLog.a("BridgeMMMedia", "Error closing file", exception6);
                }
                catch (Exception exception1)
                {
                    MMLog.a("BridgeMMMedia", "Error with picture: ", exception1);
                }
            }
        }
          goto _L2
        Exception exception5;
        exception5;
        MMLog.a("BridgeMMMedia", "Error closing file", exception5);
          goto _L2
        Exception exception3;
        exception3;
        fileoutputstream1 = null;
_L29:
        if (true)
        {
            break MISSING_BLOCK_LABEL_272;
        }
        null.close();
        if (fileoutputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_282;
        }
        fileoutputstream1.close();
_L10:
        throw exception3;
        Exception exception4;
        exception4;
        MMLog.a("BridgeMMMedia", "Error closing file", exception4);
        if (true) goto _L10; else goto _L4
_L4:
        if (uri == null) goto _L2; else goto _L11
_L11:
        String as[];
        ContentResolver contentresolver;
        as = (new String[] {
            "_data"
        });
        contentresolver = getContentResolver();
        if (contentresolver == null) goto _L2; else goto _L12
_L12:
        Cursor cursor = contentresolver.query(uri, as, null, null, null);
        if (cursor == null) goto _L2; else goto _L13
_L13:
        int l = cursor.getColumnIndex("_data");
        if (l == -1) goto _L2; else goto _L14
_L14:
        File file1;
        cursor.moveToFirst();
        file1 = new File(cursor.getString(l));
        cursor.close();
        File file2;
        FileInputStream fileinputstream;
        file2 = new File(getIntent().getData().getPath());
        fileinputstream = new FileInputStream(file1);
        FileOutputStream fileoutputstream2 = new FileOutputStream(file2);
        byte abyte1[] = new byte[1024];
_L17:
        int i1 = fileinputstream.read(abyte1);
        if (i1 <= 0) goto _L16; else goto _L15
_L15:
        fileoutputstream2.write(abyte1, 0, i1);
          goto _L17
        Exception exception9;
        exception9;
        FileInputStream fileinputstream1;
        fileoutputstream = fileoutputstream2;
        fileinputstream1 = fileinputstream;
_L28:
        MMLog.a("BridgeMMMedia", "Error copying image", exception9);
        if (fileinputstream1 == null) goto _L19; else goto _L18
_L18:
        fileinputstream1.close();
_L19:
        if (fileoutputstream == null) goto _L2; else goto _L20
_L20:
        fileoutputstream.close();
          goto _L2
        Exception exception10;
        exception10;
        MMLog.a("BridgeMMMedia", "Error closing file", exception10);
          goto _L2
_L16:
        if (fileinputstream == null) goto _L22; else goto _L21
_L21:
        fileinputstream.close();
_L22:
        if (fileoutputstream2 == null) goto _L2; else goto _L23
_L23:
        fileoutputstream2.close();
          goto _L2
        Exception exception11;
        exception11;
        MMLog.a("BridgeMMMedia", "Error closing file", exception11);
          goto _L2
        Exception exception7;
        exception7;
        fileinputstream = null;
_L27:
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_578;
        }
        fileinputstream.close();
        if (fileoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_588;
        }
        fileoutputstream.close();
_L25:
        throw exception7;
        Exception exception8;
        exception8;
        MMLog.a("BridgeMMMedia", "Error closing file", exception8);
        if (true) goto _L25; else goto _L24
_L24:
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        exception7;
        fileoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception7;
        fileoutputstream = fileoutputstream2;
        continue; /* Loop/switch isn't completed */
        exception7;
        fileinputstream = fileinputstream1;
        if (true) goto _L27; else goto _L26
_L26:
        exception9;
        fileinputstream1 = null;
        fileoutputstream = null;
          goto _L28
        exception9;
        fileinputstream1 = fileinputstream;
        fileoutputstream = null;
          goto _L28
        exception3;
          goto _L29
        exception2;
        fileoutputstream1 = null;
        if (true) goto _L31; else goto _L30
_L30:
    }

    public void onCreate(Bundle bundle)
    {
label0:
        {
            super.onCreate(bundle);
            if (getLastNonConfigurationInstance() != null)
            {
                a = ((Bundle)getLastNonConfigurationInstance()).getBoolean("hasRequestedPic");
            }
            if (!a)
            {
                if (!getIntent().getStringExtra("type").equalsIgnoreCase("Camera"))
                {
                    break label0;
                }
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                b = getIntent().getData();
                intent.putExtra("return-data", true);
                a = true;
                startActivityForResult(intent, 0);
            }
            return;
        }
        Intent intent1 = new Intent();
        intent1.setType("image/*");
        intent1.setAction("android.intent.action.GET_CONTENT");
        a = true;
        startActivityForResult(intent1, 0);
    }

    public Object onRetainNonConfigurationInstance()
    {
        super.onRetainNonConfigurationInstance();
        Bundle bundle = new Bundle();
        bundle.putBoolean("hasRequestedPic", a);
        return bundle;
    }

    ()
    {
        a = false;
    }
}
