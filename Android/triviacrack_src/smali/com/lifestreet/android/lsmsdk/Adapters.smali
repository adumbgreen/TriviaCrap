.class public final Lcom/lifestreet/android/lsmsdk/Adapters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TIMEOUT_IN_SECS:I = 0x12c


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static createAdapterInstance(Lcom/lifestreet/android/lsmsdk/AdNetwork;Lcom/lifestreet/android/lsmsdk/AdapterMapping;)Lcom/lifestreet/android/lsmsdk/Adapter;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/AdNetwork;",
            "Lcom/lifestreet/android/lsmsdk/AdapterMapping;",
            ")",
            "Lcom/lifestreet/android/lsmsdk/Adapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/AdNetwork;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    .line 29
    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/AdNetwork;->getAdType()Lcom/lifestreet/android/lsmsdk/AdType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->getAdapterMapping(Lcom/lifestreet/android/lsmsdk/AdType;)Ljava/util/Map;

    move-result-object v0

    .line 32
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;

    .line 33
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->getAdapterClass()Ljava/lang/Class;

    move-result-object v0

    .line 38
    :goto_0
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adapter class for network \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 46
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/Adapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
