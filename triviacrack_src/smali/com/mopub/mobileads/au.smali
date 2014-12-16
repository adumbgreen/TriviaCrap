.class Lcom/mopub/mobileads/au;
.super Lcom/mopub/mobileads/af;
.source "SourceFile"


# static fields
.field public static final MIME_TYPE_HEADER:Ljava/lang/String; = "Content-Type"


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
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/af;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    .line 97
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 101
    const-string v0, "uri"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/mopub/mobileads/au;->b:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/aw;->a(Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/au;->b:Lcom/mopub/mobileads/MraidView;

    sget-object v1, Lcom/mopub/mobileads/ak;->STORE_PICTURE:Lcom/mopub/mobileads/ak;

    const-string v2, "Image can\'t be stored with null or empty URL"

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    .line 107
    const-string v0, "Invalid URI for Mraid Store Picture."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/mopub/mobileads/MraidView$PlacementType;)Z
    .locals 1
    .parameter

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method
