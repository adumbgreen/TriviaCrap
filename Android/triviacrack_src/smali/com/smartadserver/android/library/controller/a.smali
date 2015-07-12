.class public Lcom/smartadserver/android/library/controller/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Lcom/smartadserver/android/library/controller/mraid/a;

.field public b:Lcom/smartadserver/android/library/controller/mraid/e;

.field public c:Lcom/smartadserver/android/library/controller/mraid/f;

.field private e:Lcom/smartadserver/android/library/ui/SASAdView;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 53
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/a;->f()V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    const-string v1, "create MRAID controller"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    .line 60
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/e;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/e;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    .line 61
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/f;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/f;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    .line 63
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/a$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/controller/a$1;-><init>(Lcom/smartadserver/android/library/controller/a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 390
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    const-string v1, "enableListeners"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/e;->e()V

    .line 394
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput p1, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    .line 413
    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/a;ILorg/json/JSONObject;Z)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    const-string v3, "loading"

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 154
    if-eqz p9, :cond_3

    .line 156
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 158
    new-instance v12, Lcom/smartadserver/android/library/controller/b;

    move-object/from16 v0, p6

    move/from16 v1, p9

    invoke-direct {v12, p0, v0, v1}, Lcom/smartadserver/android/library/controller/b;-><init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/ui/a;Z)V

    .line 161
    :try_start_0
    invoke-static {v2}, Lcom/smartadserver/android/library/e/a;->a(Landroid/content/Context;)Lcom/smartadserver/android/library/e/a;

    move-result-object v4

    .line 162
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/smartadserver/android/library/e/a;->b(ILjava/lang/String;ILjava/lang/String;)Lcom/smartadserver/android/library/d/a;

    move-result-object v2

    .line 164
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/smartadserver/android/library/h/c;->d(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/smartadserver/android/library/d/a;->l()Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    :cond_0
    new-instance v3, Lcom/smartadserver/android/library/controller/a$2;

    invoke-direct {v3, p0, v12, v2}, Lcom/smartadserver/android/library/controller/a$2;-><init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/controller/b;Lcom/smartadserver/android/library/d/a;)V

    .line 172
    invoke-static {}, Lcom/smartadserver/android/library/h/c;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 188
    :goto_0
    new-instance v2, Lcom/smartadserver/android/library/controller/a$3;

    move-object v3, p0

    move v5, p1

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/smartadserver/android/library/controller/a$3;-><init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/e/a;ILjava/lang/String;ILjava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/SASAdView;->f:Lcom/smartadserver/android/library/f/a/b;

    move v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v9, v2

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/smartadserver/android/library/f/a/b;->a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/a;ILorg/json/JSONObject;)V

    .line 246
    :goto_1
    return-void

    .line 176
    :cond_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lcom/smartadserver/android/library/a/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v2

    .line 234
    invoke-virtual {v12, v2}, Lcom/smartadserver/android/library/controller/b;->adLoadingFailed(Ljava/lang/Exception;)V

    .line 236
    invoke-virtual {v2}, Lcom/smartadserver/android/library/a/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_2
    :try_start_1
    new-instance v2, Lcom/smartadserver/android/library/a/g;

    const-string v3, "No ad to deliver from cache with requested parameters"

    invoke-direct {v2, v3}, Lcom/smartadserver/android/library/a/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Lcom/smartadserver/android/library/controller/b;->adLoadingFailed(Ljava/lang/Exception;)V
    :try_end_1
    .catch Lcom/smartadserver/android/library/a/a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 242
    :cond_3
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->f:Lcom/smartadserver/android/library/f/a/b;

    new-instance v8, Lcom/smartadserver/android/library/controller/b;

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-direct {v8, p0, v0, v3}, Lcom/smartadserver/android/library/controller/b;-><init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/ui/a;Z)V

    move v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/smartadserver/android/library/f/a/b;->a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/a;ILorg/json/JSONObject;)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 255
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 256
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 257
    invoke-virtual {v1, p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 258
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 259
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 261
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 262
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/smartadserver/android/library/d/a;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 283
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayAd: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    const-string v0, "<!DOCTYPE html><html><head><meta name=\"viewport\" content=\"initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\"/></head><body style=\"text-align:center;margin:0\">"

    .line 289
    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mraid.js"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<script src=\"mraid.js\"></script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {p1, v0}, Lcom/smartadserver/android/library/d/a;->a(Ljava/lang/String;)V

    .line 296
    :cond_1
    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\"mraid.js\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 300
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->a:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->k()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 303
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_2
    :goto_0
    const-string v3, "\"mraid.js\""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 313
    sget-object v1, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayAd: MRAID script, set mraid bridge inside script "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_1
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a()V

    .line 324
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->g()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 327
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/e;->a()V

    .line 328
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->g()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/smartadserver/android/library/controller/mraid/f;->b(I)V

    .line 334
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/d;

    .line 335
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    .line 337
    iget-object v4, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v4, v4, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    .line 339
    monitor-enter v1

    .line 341
    :try_start_0
    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/d;->a()V

    .line 342
    invoke-virtual {v3}, Lcom/smartadserver/android/library/controller/c;->a()V

    .line 344
    iget-object v5, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v6, Lcom/smartadserver/android/library/controller/a$4;

    invoke-direct {v6, p0, p1, v4, v0}, Lcom/smartadserver/android/library/controller/a$4;-><init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/d/a;Lcom/smartadserver/android/library/ui/g;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    const-wide/16 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 370
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    const-string v4, "Wait finished"

    invoke-static {v0, v4}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/d;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Lcom/smartadserver/android/library/controller/c;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    :cond_3
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    return v2

    .line 305
    :cond_4
    sget-boolean v3, Lcom/smartadserver/android/library/h/c;->a:Z

    if-eqz v3, :cond_2

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/smartadserver/android/library/h/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 315
    :cond_5
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayAd not mraid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    const-string v3, "default"

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    .line 324
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 379
    :catch_0
    move-exception v0

    .line 382
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 400
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    const-string v1, "disableListeners"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/e;->d()V

    .line 404
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 416
    iget v0, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    .line 417
    iget v0, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    if-gez v0, :cond_0

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    .line 421
    :cond_0
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pendingLoadAdCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method
