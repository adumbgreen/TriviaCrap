.class public final Lcom/inmobi/androidsdk/impl/UserInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/util/Random;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:J

.field private E:Landroid/app/Activity;

.field a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/location/LocationManager;

.field private n:D

.field private o:D

.field private p:D

.field private q:Z

.field private r:Landroid/content/Context;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lcom/inmobi/androidsdk/AdRequest;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->t:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->u:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->v:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->w:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->x:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->E:Landroid/app/Activity;

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Landroid/content/Context;

    .line 83
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/util/Random;

    .line 84
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method private a(D)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->n:D

    .line 469
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->g:Ljava/lang/String;

    .line 188
    return-void
.end method

.method private a(J)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->D:J

    .line 639
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 206
    const-string v1, "A_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Ljava/lang/String;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 210
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Ljava/lang/String;

    .line 211
    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 216
    const-string v1, "A_ID"

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 627
    if-eqz p1, :cond_0

    .line 628
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Z)V

    .line 629
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(D)V

    .line 630
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(D)V

    .line 631
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->c(D)V

    .line 632
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(J)V

    .line 635
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Landroid/location/LocationManager;)V
    .locals 1
    .parameter

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->m:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    .line 129
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->b:Ljava/lang/String;

    .line 106
    return-void
.end method

.method private a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->a:Z

    .line 454
    return-void
.end method

.method private declared-synchronized b()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->m:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(D)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->o:D

    .line 484
    return-void
.end method

.method private b(I)V
    .locals 0
    .parameter

    .prologue
    .line 865
    iput p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->C:I

    .line 866
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->c:Ljava/lang/String;

    .line 121
    return-void
.end method

.method private b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Z

    .line 514
    return-void
.end method

.method private c(D)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->p:D

    .line 499
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->d:Ljava/lang/String;

    .line 144
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->isLocationInquiryAllowed()Z

    move-result v0

    .line 438
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->e:Ljava/lang/String;

    .line 159
    return-void
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->a:Z

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 551
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/LocationManager;)V

    .line 556
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 557
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    .line 558
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 561
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 563
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 571
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 572
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 576
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 578
    const-string v1, "[InMobi]-[Network]-4.3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastBestKnownLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    if-nez v0, :cond_2

    .line 583
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->f()Landroid/location/Location;

    move-result-object v0

    .line 584
    const-string v1, "[InMobi]-[Network]-4.3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastKnownLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_2
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/Location;)V

    .line 594
    :cond_3
    :goto_1
    return-void

    .line 564
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 568
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Error getting the Location Info "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->f:Ljava/lang/String;

    .line 184
    return-void
.end method

.method private f()Landroid/location/Location;
    .locals 5

    .prologue
    .line 597
    .line 598
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/LocationManager;)V

    .line 603
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 604
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v2

    .line 605
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 612
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 613
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 614
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 615
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_1

    .line 622
    :goto_1
    return-object v0

    .line 612
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 622
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->i:Ljava/lang/String;

    .line 197
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 645
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 648
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 650
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Z)V

    .line 654
    :goto_0
    return-void

    .line 652
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Z)V

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->j:Ljava/lang/String;

    .line 242
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 657
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 659
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->h(Ljava/lang/String;)V

    .line 692
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 693
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 694
    if-eqz v3, :cond_8

    .line 695
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 697
    if-eqz v1, :cond_0

    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->g(Ljava/lang/String;)V

    .line 716
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 718
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 721
    if-eqz v3, :cond_1

    .line 722
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Ljava/lang/String;)V

    .line 725
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 728
    if-eqz v1, :cond_c

    .line 729
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 730
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 731
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 735
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 744
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->e(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(I)V

    .line 748
    const/4 v0, 0x0

    .line 749
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v1, :cond_5

    .line 750
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getDeviceIDMask()I

    move-result v0

    .line 752
    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 755
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getLTVId()Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 759
    :goto_3
    if-eqz v1, :cond_6

    .line 760
    const-string v2, "LTVID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :cond_6
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getUID()Lcom/inmobi/commons/uid/UID;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRandomKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/inmobi/commons/uid/UID;->getUidMapWitoutXOR(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->f(Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 772
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/content/Context;)V

    .line 775
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getConnectivityType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->d(Ljava/lang/String;)V

    .line 779
    :try_start_2
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getCurrentOrientationInFixedValues(Landroid/app/Activity;)I

    move-result v0

    .line 781
    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 782
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 795
    :goto_4
    return-void

    .line 702
    :cond_8
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "user.language"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 704
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v4, "user.region"

    invoke-virtual {v1, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 706
    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 707
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 709
    :goto_5
    if-nez v0, :cond_0

    .line 710
    const-string v0, "en"

    goto/16 :goto_0

    .line 756
    :catch_0
    move-exception v1

    .line 757
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v4, "LTVID not available yet in configs"

    invoke-static {v1, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_3

    .line 783
    :cond_9
    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 784
    const/4 v0, 0x4

    :try_start_3
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 790
    :catch_1
    move-exception v0

    .line 791
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Error getting the orientation info "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 785
    :cond_a
    if-nez v0, :cond_b

    .line 786
    const/4 v0, 0x3

    :try_start_4
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(I)V

    goto :goto_4

    .line 788
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 737
    :catch_2
    move-exception v0

    goto/16 :goto_2

    :cond_c
    move-object v0, v2

    goto/16 :goto_1

    :cond_d
    move-object v0, v3

    goto :goto_5
.end method

.method private h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->k:Ljava/lang/String;

    .line 257
    return-void
.end method

.method private i()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->E:Landroid/app/Activity;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->l:Ljava/lang/String;

    .line 285
    return-void
.end method


# virtual methods
.method public getAdUnitSlot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getAge()I

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getAppBId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Landroid/content/Context;

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 312
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/AdRequest;->getDateOfBirth()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getDateOfBirth()Ljava/util/Calendar;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_0
    return-object v0
.end method

.method public getEducation()Lcom/inmobi/commons/EducationType;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getEducation()Lcom/inmobi/commons/EducationType;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEthnicity()Lcom/inmobi/commons/EthnicityType;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getEthnicity()Lcom/inmobi/commons/EthnicityType;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGender()Lcom/inmobi/commons/GenderType;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getGender()Lcom/inmobi/commons/GenderType;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGeoTS()J
    .locals 2

    .prologue
    .line 869
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->D:J

    return-wide v0
.end method

.method public getHasChildren()Lcom/inmobi/commons/HasChildren;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getHasChildren()Lcom/inmobi/commons/HasChildren;

    move-result-object v0

    .line 899
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncome()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getIncome()I

    move-result v0

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getInterests()Ljava/lang/String;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getKeywords()Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 884
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 460
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->n:D

    return-wide v0
.end method

.method public getLocAccuracy()D
    .locals 2

    .prologue
    .line 490
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->p:D

    return-wide v0
.end method

.method public getLocalization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationWithCityStateCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 475
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->o:D

    return-wide v0
.end method

.method public getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;

    move-result-object v0

    .line 877
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getODINId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->C:I

    return v0
.end method

.method public getPhoneDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 518
    const-string v0, ""

    .line 520
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->s:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlainUidMap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRandomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRsakeyVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getRSAKeyVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenDensity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getSearchString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;

    move-result-object v0

    .line 891
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getUIDMapEncrypted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public isValidGeoInfo()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Z

    return v0
.end method

.method public setAdUnitSlot(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->v:Ljava/lang/String;

    .line 827
    return-void
.end method

.method public setPhoneDefaultUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->s:Ljava/lang/String;

    .line 819
    return-void
.end method

.method public setRefTagKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->t:Ljava/lang/String;

    .line 807
    return-void
.end method

.method public setRefTagValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->u:Ljava/lang/String;

    .line 815
    return-void
.end method

.method public setScreenDensity(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 850
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Ljava/lang/String;

    .line 851
    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->x:Ljava/lang/String;

    .line 843
    return-void
.end method

.method public setSlotId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->w:Ljava/lang/String;

    .line 835
    return-void
.end method

.method public declared-synchronized updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Lcom/inmobi/androidsdk/AdRequest;)V

    .line 526
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->h()V

    .line 527
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->i(Ljava/lang/String;)V

    .line 529
    if-eqz p2, :cond_0

    .line 530
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Z)V

    .line 531
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    invoke-virtual {p2}, Lcom/inmobi/androidsdk/AdRequest;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {p2}, Lcom/inmobi/androidsdk/AdRequest;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/Location;)V

    .line 534
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 536
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->g()V

    .line 537
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 543
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
