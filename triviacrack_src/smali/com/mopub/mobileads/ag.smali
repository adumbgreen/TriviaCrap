.class Lcom/mopub/mobileads/ag;
.super Lcom/mopub/mobileads/af;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/mobileads/MraidView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/af;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    .line 120
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/ag;->b:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/aw;->b()V

    .line 125
    return-void
.end method
