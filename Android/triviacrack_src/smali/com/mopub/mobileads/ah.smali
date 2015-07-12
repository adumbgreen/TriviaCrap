.class Lcom/mopub/mobileads/ah;
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
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/af;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    .line 276
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mopub/mobileads/ah;->b:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/ah;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/aw;->a(Ljava/util/Map;)V

    .line 281
    return-void
.end method

.method protected a(Lcom/mopub/mobileads/MraidView$PlacementType;)Z
    .locals 1
    .parameter

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method
