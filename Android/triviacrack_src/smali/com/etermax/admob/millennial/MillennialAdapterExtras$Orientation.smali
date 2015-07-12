.class public final enum Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

.field public static final enum BISEXUAL:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

.field public static final enum GAY:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

.field public static final enum NOT_SURE:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

.field public static final enum STRAIGHT:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    new-instance v0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    const-string v1, "STRAIGHT"

    const-string v2, "straight"

    invoke-direct {v0, v1, v3, v2}, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;->STRAIGHT:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    new-instance v0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    const-string v1, "GAY"

    const-string v2, "gay"

    invoke-direct {v0, v1, v4, v2}, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;->GAY:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    new-instance v0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    const-string v1, "BISEXUAL"

    const-string v2, "bisexual"

    invoke-direct {v0, v1, v5, v2}, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;->BISEXUAL:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    new-instance v0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    const-string v1, "NOT_SURE"

    const-string v2, "notsure"

    invoke-direct {v0, v1, v6, v2}, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;->NOT_SURE:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    .line 188
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    sget-object v1, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;->STRAIGHT:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;->GAY:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;->BISEXUAL:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;->NOT_SURE:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;->$VALUES:[Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 194
    iput-object p3, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;->description:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;
    .locals 1
    .parameter

    .prologue
    .line 188
    const-class v0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;->$VALUES:[Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    invoke-virtual {v0}, [Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    return-object v0
.end method
