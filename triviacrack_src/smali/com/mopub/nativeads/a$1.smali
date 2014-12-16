.class final Lcom/mopub/nativeads/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/a;->a(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/CustomEventNative$ImageListener;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/CustomEventNative$ImageListener;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/CustomEventNative$ImageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/mopub/nativeads/a$1;->a:Lcom/mopub/nativeads/CustomEventNative$ImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/mopub/nativeads/a$1;->a:Lcom/mopub/nativeads/CustomEventNative$ImageListener;

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->IMAGE_DOWNLOAD_FAILURE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/CustomEventNative$ImageListener;->onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 341
    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 1
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
    .line 335
    iget-object v0, p0, Lcom/mopub/nativeads/a$1;->a:Lcom/mopub/nativeads/CustomEventNative$ImageListener;

    invoke-interface {v0}, Lcom/mopub/nativeads/CustomEventNative$ImageListener;->onImagesCached()V

    .line 336
    return-void
.end method
