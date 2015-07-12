// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.etermax.o;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

// Referenced classes of package com.etermax.preguntados.sharing:
//            ShareView

public class m
{

    protected Context a;

    public m()
    {
    }

    public void a(ShareView shareview)
    {
        b(shareview);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("image/*");
        Uri uri = Uri.fromFile(new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append(File.separator).append(a.getString(o.app_name)).append(".jpeg").toString()));
        if (!TextUtils.isEmpty(shareview.getShareText()))
        {
            intent.putExtra("android.intent.extra.TEXT", shareview.getShareText());
        }
        intent.putExtra("android.intent.extra.STREAM", uri);
        a.startActivity(Intent.createChooser(intent, a.getString(o.share)).addFlags(0x10000000));
    }

    public void b(ShareView shareview)
    {
        Bitmap bitmap;
        ByteArrayOutputStream bytearrayoutputstream;
        File file;
        bitmap = shareview.e();
        bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, bytearrayoutputstream);
        file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append(File.separator).append(a.getString(o.app_name)).append(".jpeg").toString());
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        file.createNewFile();
        fileoutputstream.write(bytearrayoutputstream.toByteArray());
        try
        {
            fileoutputstream.close();
        }
        catch (IOException ioexception3)
        {
            ioexception3.printStackTrace();
        }
_L1:
        bitmap.recycle();
        return;
        IOException ioexception;
        ioexception;
        fileoutputstream = null;
_L4:
        ioexception.printStackTrace();
        try
        {
            fileoutputstream.close();
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
          goto _L1
        Exception exception;
        exception;
        fileoutputstream = null;
_L3:
        try
        {
            fileoutputstream.close();
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
        }
        throw exception;
        exception;
        if (true) goto _L3; else goto _L2
_L2:
        ioexception;
          goto _L4
    }
}
