.class Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;
.super Lcom/millennialmedia/android/MMBaseActivity;
.source "SourceFile"


# instance fields
.field a:Z

.field private b:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/millennialmedia/android/MMBaseActivity;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->a:Z

    return-void
.end method


# virtual methods
.method protected a(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 232
    invoke-super {p0, p1, p2, p3}, Lcom/millennialmedia/android/MMBaseActivity;->a(IILandroid/content/Intent;)V

    .line 233
    if-eqz p3, :cond_1

    .line 234
    const/4 v2, 0x0

    .line 238
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 240
    if-nez v1, :cond_6

    .line 243
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 247
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 250
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 254
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 255
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 257
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    .line 258
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 260
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    .line 261
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    :goto_1
    :try_start_3
    const-string v3, "BridgeMMMedia"

    const-string v4, "Problem getting bitmap from data"

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 267
    if-eqz v6, :cond_0

    .line 268
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 269
    :cond_0
    if-eqz v1, :cond_1

    .line 270
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 323
    :cond_1
    :goto_2
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMMedia;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 324
    :try_start_5
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMMedia;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 325
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 326
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->finish()V

    .line 327
    return-void

    .line 267
    :cond_2
    if-eqz v6, :cond_3

    .line 268
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 269
    :cond_3
    if-eqz v1, :cond_1

    .line 270
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 271
    :catch_1
    move-exception v0

    .line 272
    :try_start_7
    const-string v1, "BridgeMMMedia"

    const-string v2, "Error closing file"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 319
    :catch_2
    move-exception v0

    .line 320
    const-string v1, "BridgeMMMedia"

    const-string v2, "Error with picture: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 271
    :catch_3
    move-exception v0

    .line 272
    :try_start_8
    const-string v1, "BridgeMMMedia"

    const-string v2, "Error closing file"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 266
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 267
    :goto_3
    if-eqz v6, :cond_4

    .line 268
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 269
    :cond_4
    if-eqz v1, :cond_5

    .line 270
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 273
    :cond_5
    :goto_4
    :try_start_a
    throw v0

    .line 271
    :catch_4
    move-exception v1

    .line 272
    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 276
    :cond_6
    if-eqz v1, :cond_1

    .line 278
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 279
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_1

    .line 281
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_1

    .line 284
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 286
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 287
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 288
    new-instance v3, Ljava/io/File;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 294
    :try_start_b
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 297
    :try_start_c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 298
    const/16 v0, 0x400

    :try_start_d
    new-array v0, v0, [B

    .line 300
    :goto_5
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_8

    .line 301
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_5

    .line 302
    :catch_5
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    .line 303
    :goto_6
    :try_start_e
    const-string v2, "BridgeMMMedia"

    const-string v3, "Error copying image"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 306
    if-eqz v1, :cond_7

    .line 307
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 308
    :cond_7
    if-eqz v6, :cond_1

    .line 309
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_2

    .line 310
    :catch_6
    move-exception v0

    .line 311
    :try_start_10
    const-string v1, "BridgeMMMedia"

    const-string v2, "Error closing file"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_2

    .line 306
    :cond_8
    if-eqz v2, :cond_9

    .line 307
    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 308
    :cond_9
    if-eqz v1, :cond_1

    .line 309
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_2

    .line 310
    :catch_7
    move-exception v0

    .line 311
    :try_start_12
    const-string v1, "BridgeMMMedia"

    const-string v2, "Error closing file"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_2

    .line 305
    :catchall_1
    move-exception v0

    move-object v2, v6

    .line 306
    :goto_7
    if-eqz v2, :cond_a

    .line 307
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 308
    :cond_a
    if-eqz v6, :cond_b

    .line 309
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    .line 313
    :cond_b
    :goto_8
    :try_start_14
    throw v0

    .line 310
    :catch_8
    move-exception v1

    .line 311
    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    goto :goto_8

    .line 325
    :catchall_2
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    throw v0

    .line 305
    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v6, v1

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v2, v1

    goto :goto_7

    .line 302
    :catch_9
    move-exception v0

    move-object v1, v6

    goto :goto_6

    :catch_a
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 266
    :catchall_6
    move-exception v0

    goto/16 :goto_3

    .line 262
    :catch_b
    move-exception v0

    move-object v1, v6

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 193
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 197
    const-string v1, "hasRequestedPic"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->a:Z

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->a:Z

    if-nez v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->b:Landroid/net/Uri;

    .line 214
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    iput-boolean v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->a:Z

    .line 217
    invoke-virtual {p0, v0, v3}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 220
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iput-boolean v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->a:Z

    .line 223
    invoke-virtual {p0, v0, v3}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 182
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    const-string v1, "hasRequestedPic"

    iget-boolean v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    return-object v0
.end method
