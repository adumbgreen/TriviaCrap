.class Lcom/mopub/mobileads/util/vast/VastManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/util/vast/VastManager;->onAggregationComplete(Ljava/util/List;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

.field final synthetic b:Lcom/mopub/mobileads/util/vast/VastManager;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/util/vast/VastManager;Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->b:Lcom/mopub/mobileads/util/vast/VastManager;

    iput-object p2, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->a:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 2
    .parameter

    .prologue
    .line 86
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->b:Lcom/mopub/mobileads/util/vast/VastManager;

    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->a:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/VastManager;->a(Lcom/mopub/mobileads/util/vast/VastManager;Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->b:Lcom/mopub/mobileads/util/vast/VastManager;

    invoke-static {v0}, Lcom/mopub/mobileads/util/vast/VastManager;->a(Lcom/mopub/mobileads/util/vast/VastManager;)Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->b:Lcom/mopub/mobileads/util/vast/VastManager;

    invoke-static {v0}, Lcom/mopub/mobileads/util/vast/VastManager;->a(Lcom/mopub/mobileads/util/vast/VastManager;)Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->a:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->b:Lcom/mopub/mobileads/util/vast/VastManager;

    invoke-static {v0}, Lcom/mopub/mobileads/util/vast/VastManager;->a(Lcom/mopub/mobileads/util/vast/VastManager;)Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->b:Lcom/mopub/mobileads/util/vast/VastManager;

    invoke-static {v0}, Lcom/mopub/mobileads/util/vast/VastManager;->a(Lcom/mopub/mobileads/util/vast/VastManager;)Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    goto :goto_0
.end method
