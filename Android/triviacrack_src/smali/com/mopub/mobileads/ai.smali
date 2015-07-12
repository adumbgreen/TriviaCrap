.class Lcom/mopub/mobileads/ai;
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
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/af;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    .line 131
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 135
    const-string v0, "w"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/ai;->a(Ljava/lang/String;)I

    move-result v2

    .line 136
    const-string v0, "h"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/ai;->a(Ljava/lang/String;)I

    move-result v3

    .line 137
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/ai;->c(Ljava/lang/String;)Z

    move-result v4

    .line 139
    const-string v0, "lockOrientation"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/ai;->c(Ljava/lang/String;)Z

    move-result v5

    .line 141
    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/ai;->b:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/aw;

    move-result-object v0

    iget v2, v0, Lcom/mopub/mobileads/aw;->b:I

    .line 142
    :cond_0
    if-gtz v3, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/ai;->b:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/aw;

    move-result-object v0

    iget v3, v0, Lcom/mopub/mobileads/aw;->c:I

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/ai;->b:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/aw;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/aw;->a(Ljava/lang/String;IIZZ)V

    .line 146
    return-void
.end method

.method protected a(Lcom/mopub/mobileads/MraidView$PlacementType;)Z
    .locals 2
    .parameter

    .prologue
    .line 150
    sget-object v0, Lcom/mopub/mobileads/ai$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MraidView$PlacementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-super {p0, p1}, Lcom/mopub/mobileads/af;->a(Lcom/mopub/mobileads/MraidView$PlacementType;)Z

    move-result v0

    :goto_0
    return v0

    .line 152
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 154
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
