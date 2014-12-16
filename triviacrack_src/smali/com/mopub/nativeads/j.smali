.class Lcom/mopub/nativeads/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/ai;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/nativeads/ai",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mopub/nativeads/l;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/l;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/nativeads/l;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/mopub/nativeads/j;->a:Lcom/mopub/nativeads/l;

    .line 123
    iput-object p2, p0, Lcom/mopub/nativeads/j;->b:Ljava/util/Map;

    .line 124
    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mopub/nativeads/j;->a:Lcom/mopub/nativeads/l;

    invoke-interface {v0}, Lcom/mopub/nativeads/l;->onFail()V

    .line 162
    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/mopub/nativeads/i;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v1, p0, Lcom/mopub/nativeads/j;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/mopub/nativeads/j;->a:Lcom/mopub/nativeads/l;

    iget-object v1, p0, Lcom/mopub/nativeads/j;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/l;->onSuccess(Ljava/util/Map;)V

    .line 157
    :goto_1
    return-void

    .line 144
    :cond_2
    :try_start_0
    new-instance v0, Lcom/mopub/nativeads/g;

    new-instance v1, Lcom/mopub/nativeads/k;

    iget-object v2, p0, Lcom/mopub/nativeads/j;->a:Lcom/mopub/nativeads/l;

    iget-object v4, p0, Lcom/mopub/nativeads/j;->b:Ljava/util/Map;

    invoke-direct {v1, v2, v4}, Lcom/mopub/nativeads/k;-><init>(Lcom/mopub/nativeads/l;Ljava/util/Map;)V

    invoke-static {}, Lcom/mopub/nativeads/i;->a()I

    move-result v2

    invoke-direct {v0, v3, v1, v2}, Lcom/mopub/nativeads/g;-><init>(Ljava/util/List;Lcom/mopub/nativeads/ai;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    invoke-virtual {v0}, Lcom/mopub/nativeads/g;->a()V

    goto :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v1, "Unable to initialize ImageDownloadTaskManager"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    iget-object v0, p0, Lcom/mopub/nativeads/j;->a:Lcom/mopub/nativeads/l;

    invoke-interface {v0}, Lcom/mopub/nativeads/l;->onFail()V

    goto :goto_1
.end method
