.class Lcom/admarvel/android/ads/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/admarvel/android/ads/AdMarvelAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/admarvel/android/ads/AdMarvelAdapter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/b;->b()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/admarvel/android/ads/b;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/admarvel/android/ads/b;->b:Ljava/util/Map;

    sget-object v0, Lcom/admarvel/android/ads/b;->b:Ljava/util/Map;

    const-string v1, "ADMARVELGUID"

    sget-object v2, Lcom/admarvel/android/ads/b;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/b;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/admarvel/android/ads/AdMarvelAdapter;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/admarvel/android/ads/b;->b:Ljava/util/Map;

    return-object v0
.end method

.method protected static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/admarvel/android/ads/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/admarvel/android/ads/b;->b:Ljava/util/Map;

    invoke-static {}, Lcom/admarvel/android/ads/b;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/admarvel/android/ads/AdMarvelAdapter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    const-string v1, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method protected static declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/admarvel/android/ads/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/admarvel/android/ads/b;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/b;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelAdapter;

    return-object v0
.end method
