.class Lcom/admarvel/android/ads/j;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/admarvel/android/ads/AdMarvelAd;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Lcom/admarvel/android/ads/AdMarvelAd;
    .locals 20

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/util/Map;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v8, p1, v1

    check-cast v8, Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v9, p1, v1

    check-cast v9, Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v4, p1, v1

    check-cast v4, Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x5

    aget-object v6, p1, v1

    check-cast v6, Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v1, p1, v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    const/4 v1, 0x7

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v1, 0x8

    aget-object v11, p1, v1

    check-cast v11, Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v13, p1, v1

    check-cast v13, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    new-instance v1, Lcom/admarvel/android/ads/a;

    invoke-direct {v1}, Lcom/admarvel/android/ads/a;-><init>()V

    if-nez v3, :cond_1

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    :try_start_0
    const-string v2, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v2, v3}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;

    invoke-virtual {v2, v9, v7}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->getEnhancedTargetParams(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    :goto_2
    sget-boolean v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/admarvel/android/ads/a$a;->b:Lcom/admarvel/android/ads/a$a;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    invoke-virtual {v15}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->isAutoScalingEnabled()Z

    move-result v15

    invoke-virtual/range {v1 .. v15}, Lcom/admarvel/android/ads/a;->a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/os/Handler;ZZ)Ljava/lang/String;

    move-result-object v11

    :goto_3
    new-instance v10, Lcom/admarvel/android/ads/AdMarvelAd;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;

    const/16 v18, 0x0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object v13, v8

    move-object v14, v9

    move-object v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v10 .. v19}, Lcom/admarvel/android/ads/AdMarvelAd;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setRequestJson(Lorg/json/JSONObject;)V

    sget-boolean v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z

    if-eqz v1, :cond_3

    const-string v1, "admarvel_preferences"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "banner_folder"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "childDirectory"

    const-string v5, "NULL"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/admarvel/android/ads/AdMarvelAd;->setOfflineBaseUrl(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "childDirectory"

    const-string v5, "NULL"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setOfflinekeyUrl(Ljava/lang/String;)V

    :cond_3
    if-eqz v11, :cond_7

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->loadAd(Ljava/io/File;)Lcom/admarvel/android/ads/AdMarvelXMLReader;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-lez v2, :cond_0

    :try_start_2
    const-string v2, "ADMARVELGUID"

    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v2

    invoke-virtual {v2, v10, v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->loadAd(Lcom/admarvel/android/ads/AdMarvelAd;Lcom/admarvel/android/ads/AdMarvelXMLReader;)Lcom/admarvel/android/ads/AdMarvelAd;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;

    goto/16 :goto_2

    :cond_5
    sget-object v2, Lcom/admarvel/android/ads/a$a;->b:Lcom/admarvel/android/ads/a$a;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    invoke-virtual {v15}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->isAutoScalingEnabled()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v1 .. v16}, Lcom/admarvel/android/ads/a;->a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/os/Handler;ZZZ)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    const/16 v1, 0x12f

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :try_start_4
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    const/16 v1, 0x12f

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    const/16 v1, 0x12f

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V

    goto/16 :goto_0

    :cond_6
    :try_start_5
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    const/16 v1, 0x12f

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :cond_7
    :try_start_6
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    const/16 v1, 0x12f

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0
.end method

.method protected a(Lcom/admarvel/android/ads/AdMarvelAd;)V
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v5

    invoke-static {v5}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)I

    move-result v4

    iget-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->SDKCALL:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    iget-object v2, p0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->requestPendingAdapterAd(Ljava/util/Map;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const/16 v0, 0x12f

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v5

    invoke-static {v5}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)I

    move-result v4

    iget-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v9

    move-object v2, v10

    move-object v3, v10

    invoke-virtual/range {v0 .. v9}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->isDisableAdrequest()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getDisableAdDuration()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    invoke-virtual {v2, v1, p1, v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->disableAdRequest(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_1
    iget-object v1, p0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    invoke-virtual {v1, p1, v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->requestPendingAdMarvelAd(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    move-object v0, v10

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/j;->a([Ljava/lang/Object;)Lcom/admarvel/android/ads/AdMarvelAd;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/j;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V

    return-void
.end method
