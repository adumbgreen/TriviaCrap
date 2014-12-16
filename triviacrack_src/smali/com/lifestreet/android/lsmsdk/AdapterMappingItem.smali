.class public final Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAdapterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mAdapterType:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

.field private final mNetworkName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->mNetworkName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->mAdapterType:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    .line 22
    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->mAdapterClass:Ljava/lang/Class;

    .line 23
    return-void
.end method


# virtual methods
.method public getAdapterClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->mAdapterClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getAdapterType()Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->mAdapterType:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->mNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public putToAppropriateMapping(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$1;->$SwitchMap$com$lifestreet$android$lsmsdk$AdapterMappingItem$Type:[I

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->mAdapterType:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->mNetworkName:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->mNetworkName:Ljava/lang/String;

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :pswitch_2
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->mNetworkName:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->mNetworkName:Ljava/lang/String;

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->mAdapterClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
