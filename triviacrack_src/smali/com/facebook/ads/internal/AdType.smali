.class public final enum Lcom/facebook/ads/internal/AdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/internal/AdType;

.field public static final enum HTML:Lcom/facebook/ads/internal/AdType;

.field public static final enum NATIVE:Lcom/facebook/ads/internal/AdType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/facebook/ads/internal/AdType;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/internal/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/AdType;->HTML:Lcom/facebook/ads/internal/AdType;

    .line 26
    new-instance v0, Lcom/facebook/ads/internal/AdType;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/ads/internal/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/AdType;->NATIVE:Lcom/facebook/ads/internal/AdType;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/internal/AdType;

    sget-object v1, Lcom/facebook/ads/internal/AdType;->HTML:Lcom/facebook/ads/internal/AdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/AdType;->NATIVE:Lcom/facebook/ads/internal/AdType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/ads/internal/AdType;->$VALUES:[Lcom/facebook/ads/internal/AdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/facebook/ads/internal/AdType;->value:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/AdType;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/facebook/ads/internal/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/AdType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/AdType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/facebook/ads/internal/AdType;->$VALUES:[Lcom/facebook/ads/internal/AdType;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/AdType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/facebook/ads/internal/AdType;->value:I

    return v0
.end method
