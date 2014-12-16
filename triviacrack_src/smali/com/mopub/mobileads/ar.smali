.class Lcom/mopub/mobileads/ar;
.super Lcom/mopub/mobileads/af;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V
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
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/af;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    .line 67
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 71
    const-string v0, "uri"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/ar;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/mopub/mobileads/ar;->b:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/aw;->b(Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/ar;->b:Lcom/mopub/mobileads/MraidView;

    sget-object v1, Lcom/mopub/mobileads/ak;->PLAY_VIDEO:Lcom/mopub/mobileads/ak;

    const-string v2, "Video can\'t be played with null or empty URL"

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/mopub/mobileads/MraidView$PlacementType;)Z
    .locals 2
    .parameter

    .prologue
    .line 81
    sget-object v0, Lcom/mopub/mobileads/ar$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MraidView$PlacementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    invoke-super {p0, p1}, Lcom/mopub/mobileads/af;->a(Lcom/mopub/mobileads/MraidView$PlacementType;)Z

    move-result v0

    :goto_0
    return v0

    .line 83
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
