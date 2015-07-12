.class final enum Lcom/mopub/mobileads/ad;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOM_EVENT_AD_READY:Lcom/mopub/mobileads/ad;

.field public static final enum NOT_READY:Lcom/mopub/mobileads/ad;

.field private static final synthetic a:[Lcom/mopub/mobileads/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/mopub/mobileads/ad;

    const-string v1, "CUSTOM_EVENT_AD_READY"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/ad;->CUSTOM_EVENT_AD_READY:Lcom/mopub/mobileads/ad;

    .line 22
    new-instance v0, Lcom/mopub/mobileads/ad;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/ad;->NOT_READY:Lcom/mopub/mobileads/ad;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/mobileads/ad;

    sget-object v1, Lcom/mopub/mobileads/ad;->CUSTOM_EVENT_AD_READY:Lcom/mopub/mobileads/ad;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/ad;->NOT_READY:Lcom/mopub/mobileads/ad;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mopub/mobileads/ad;->a:[Lcom/mopub/mobileads/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/ad;
    .locals 1
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/mopub/mobileads/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/ad;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/ad;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/mopub/mobileads/ad;->a:[Lcom/mopub/mobileads/ad;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/ad;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/mopub/mobileads/ad;->NOT_READY:Lcom/mopub/mobileads/ad;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
