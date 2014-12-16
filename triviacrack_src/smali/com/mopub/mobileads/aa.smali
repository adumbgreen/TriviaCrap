.class Lcom/mopub/mobileads/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/GpsHelper$GpsHelperListener;


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubConversionTracker;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubConversionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mopub/mobileads/aa;->a:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchAdInfoCompleted()V
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mopub/mobileads/ac;

    iget-object v2, p0, Lcom/mopub/mobileads/aa;->a:Lcom/mopub/mobileads/MoPubConversionTracker;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mopub/mobileads/ac;-><init>(Lcom/mopub/mobileads/MoPubConversionTracker;Lcom/mopub/mobileads/MoPubConversionTracker$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method
