.class Lcom/mopub/nativeads/af;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/mopub/common/DownloadTask$DownloadTaskListener;)Lcom/mopub/common/DownloadTask;
    .locals 1
    .parameter

    .prologue
    .line 160
    new-instance v0, Lcom/mopub/common/DownloadTask;

    invoke-direct {v0, p1}, Lcom/mopub/common/DownloadTask;-><init>(Lcom/mopub/common/DownloadTask$DownloadTaskListener;)V

    return-object v0
.end method
