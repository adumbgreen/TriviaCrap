.class public final enum Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTALLED:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

.field public static final enum NOT_INSTALLED:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

.field public static final enum UNKNOWN:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

.field private static final synthetic a:[Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->UNKNOWN:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    .line 20
    new-instance v0, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    const-string v1, "NOT_INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->NOT_INSTALLED:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    .line 21
    new-instance v0, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v4}, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->INSTALLED:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    sget-object v1, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->UNKNOWN:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->NOT_INSTALLED:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->INSTALLED:Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->a:[Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;
    .locals 1
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    return-object v0
.end method

.method public static values()[Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->a:[Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    invoke-virtual {v0}, [Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus;

    return-object v0
.end method
