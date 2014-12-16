.class Lcom/mopub/mobileads/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/mopub/mobileads/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/mopub/mobileads/aj;

    invoke-direct {v0}, Lcom/mopub/mobileads/aj;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/aj;->a:Lcom/mopub/mobileads/aj;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)Lcom/mopub/mobileads/af;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/mobileads/MraidView;",
            ")",
            "Lcom/mopub/mobileads/af;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/mopub/mobileads/aj;->a:Lcom/mopub/mobileads/aj;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mopub/mobileads/aj;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)Lcom/mopub/mobileads/af;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/mopub/mobileads/aj;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    sput-object p0, Lcom/mopub/mobileads/aj;->a:Lcom/mopub/mobileads/aj;

    .line 49
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)Lcom/mopub/mobileads/af;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/mobileads/MraidView;",
            ")",
            "Lcom/mopub/mobileads/af;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p1}, Lcom/mopub/mobileads/ak;->a(Ljava/lang/String;)Lcom/mopub/mobileads/ak;

    move-result-object v1

    .line 58
    sget-object v2, Lcom/mopub/mobileads/aj$1;->a:[I

    invoke-virtual {v1}, Lcom/mopub/mobileads/ak;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 90
    :goto_0
    :pswitch_0
    return-object v0

    .line 60
    :pswitch_1
    new-instance v0, Lcom/mopub/mobileads/ag;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/ag;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 62
    :pswitch_2
    new-instance v0, Lcom/mopub/mobileads/ai;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/ai;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 64
    :pswitch_3
    new-instance v0, Lcom/mopub/mobileads/av;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/av;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 66
    :pswitch_4
    new-instance v0, Lcom/mopub/mobileads/aq;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/aq;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 68
    :pswitch_5
    new-instance v0, Lcom/mopub/mobileads/as;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/as;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 70
    :pswitch_6
    new-instance v0, Lcom/mopub/mobileads/ao;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/ao;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 72
    :pswitch_7
    new-instance v0, Lcom/mopub/mobileads/at;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/at;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 74
    :pswitch_8
    new-instance v0, Lcom/mopub/mobileads/ar;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/ar;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 76
    :pswitch_9
    new-instance v0, Lcom/mopub/mobileads/au;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/au;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 78
    :pswitch_a
    new-instance v0, Lcom/mopub/mobileads/al;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/al;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 80
    :pswitch_b
    new-instance v0, Lcom/mopub/mobileads/am;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/am;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 82
    :pswitch_c
    new-instance v0, Lcom/mopub/mobileads/an;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/an;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 84
    :pswitch_d
    new-instance v0, Lcom/mopub/mobileads/ap;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/ap;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 86
    :pswitch_e
    new-instance v0, Lcom/mopub/mobileads/ah;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/ah;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
    .end packed-switch
.end method
