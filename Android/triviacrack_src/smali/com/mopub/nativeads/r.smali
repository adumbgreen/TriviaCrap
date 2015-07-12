.class Lcom/mopub/nativeads/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/GpsHelper$GpsHelperListener;


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/MoPubNative;

.field private final b:Lcom/mopub/nativeads/RequestParameters;

.field private final c:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/mopub/nativeads/r;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p2, p0, Lcom/mopub/nativeads/r;->b:Lcom/mopub/nativeads/RequestParameters;

    .line 287
    iput-object p3, p0, Lcom/mopub/nativeads/r;->c:Ljava/lang/Integer;

    .line 288
    return-void
.end method


# virtual methods
.method public onFetchAdInfoCompleted()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/mopub/nativeads/r;->a:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/r;->b:Lcom/mopub/nativeads/RequestParameters;

    iget-object v2, p0, Lcom/mopub/nativeads/r;->c:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    .line 298
    return-void
.end method
