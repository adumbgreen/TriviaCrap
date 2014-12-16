.class Lcom/millennialmedia/android/Utils$IntentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)Landroid/content/Intent;
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 181
    if-nez p0, :cond_0

    .line 323
    :goto_0
    return-object v1

    .line 186
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->c:Landroid/net/Uri;

    .line 187
    iget-object v0, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 188
    if-eqz v0, :cond_12

    .line 189
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 191
    const-string v1, "market"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    const-string v1, "Utils"

    const-string v2, "Creating Android Market intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    const-string v2, "market"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->e:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    .line 315
    :goto_1
    if-eqz v0, :cond_10

    .line 316
    const-string v1, "Utils"

    const-string v2, "%s resolved to Intent: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v9

    aput-object v0, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v1, v0

    .line 323
    goto :goto_0

    .line 197
    :cond_1
    const-string v1, "rtsp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    const-string v1, "Utils"

    const-string v2, "Creating streaming video player intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    const-string v0, "class"

    const-string v2, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_1

    .line 203
    :cond_2
    const-string v1, "tel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    const-string v1, "Utils"

    const-string v2, "Creating telephone intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 207
    const-string v2, "tel"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->e:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto :goto_1

    .line 210
    :cond_3
    const-string v1, "sms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 213
    const-string v1, "Utils"

    const-string v2, "Creating txt message intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 216
    const-string v1, ""

    .line 217
    const-string v2, "?body="

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 218
    if-eq v5, v11, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_4

    .line 221
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 222
    const/16 v2, 0x2c

    const/16 v6, 0x3b

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 225
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sms:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    if-ne v5, v11, :cond_5

    .line 229
    add-int/lit8 v1, v5, 0x6

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    const-string v4, "sms_body"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :cond_5
    const-string v1, "sms"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->e:J

    invoke-static {v0, v1, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v2

    .line 237
    goto/16 :goto_1

    :cond_6
    const-string v1, "mailto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 238
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 239
    const-string v2, "email"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->e:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto/16 :goto_1

    .line 242
    :cond_7
    const-string v1, "geo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 243
    const-string v1, "Utils"

    const-string v2, "Creating Google Maps intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 245
    const-string v2, "geo"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->e:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto/16 :goto_1

    .line 248
    :cond_8
    const-string v1, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 250
    const-string v1, "Utils"

    const-string v2, "Creating launch browser intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    const-string v2, "browser"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->e:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto/16 :goto_1

    .line 255
    :cond_9
    const-string v1, "mmbrowser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 256
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_a

    .line 263
    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 264
    const-string v2, "//"

    const-string v4, "://"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    :cond_a
    const-string v2, "Utils"

    const-string v4, "MMBrowser - Creating launch browser intent."

    invoke-static {v2, v4}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 272
    const-string v1, "browser"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->e:J

    invoke-static {v0, v1, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v2

    .line 275
    goto/16 :goto_1

    :cond_b
    const-string v1, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 276
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 280
    :cond_c
    const-string v1, "Utils"

    const-string v2, "Creating video player intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 283
    const-string v2, "class"

    const-string v4, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v2, "streamingVideo"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->e:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto/16 :goto_1

    .line 291
    :cond_d
    invoke-virtual {p0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->canOpenOverlay()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 292
    const-string v1, "Utils"

    const-string v2, "Creating launch overlay intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    const-string v0, "class"

    const-class v2, Lcom/millennialmedia/android/AdViewOverlayActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 299
    :cond_e
    const-string v1, "Utils"

    const-string v2, "Creating launch browser intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v1, "browser"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->e:J

    invoke-static {v0, v1, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 304
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto/16 :goto_1

    .line 308
    :cond_f
    const-string v0, "Utils"

    const-string v1, "Creating intent for unrecognized URI. %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto/16 :goto_1

    .line 319
    :cond_10
    const-string v1, "Utils"

    const-string v2, "%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v9

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    move-object v0, v1

    goto/16 :goto_1

    :cond_12
    move-object v0, v1

    goto/16 :goto_2
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    const-class v0, Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 116
    const-string v0, "class"

    const-string v1, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 79
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.BridgeMMMedia$PickerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 74
    return-void
.end method

.method static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    const-class v0, Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    const-string v0, "class"

    const-string v1, "com.millennialmedia.android.CachedVideoPlayerActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method static c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 152
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 153
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    :cond_0
    invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->d(Landroid/content/Context;Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method private static d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "class"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".mkv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "content.once"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video/*"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    :cond_1
    return-void
.end method
