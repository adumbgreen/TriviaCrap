.class public final enum Lcom/facebook/ads/internal/AdInvalidationBehavior;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/AdInvalidationBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/internal/AdInvalidationBehavior;

.field public static final enum INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

.field public static final enum NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

.field public static final enum NOT_INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/AdInvalidationBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    .line 28
    new-instance v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/AdInvalidationBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    .line 29
    new-instance v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;

    const-string v1, "NOT_INSTALLED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/internal/AdInvalidationBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NOT_INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/ads/internal/AdInvalidationBehavior;

    sget-object v1, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/AdInvalidationBehavior;->INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NOT_INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->$VALUES:[Lcom/facebook/ads/internal/AdInvalidationBehavior;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/facebook/ads/internal/AdInvalidationBehavior;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-static {p0}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    .line 38
    :goto_0
    return-object v0

    .line 36
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/AdInvalidationBehavior;->valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/AdInvalidationBehavior;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    sget-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/AdInvalidationBehavior;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/AdInvalidationBehavior;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->$VALUES:[Lcom/facebook/ads/internal/AdInvalidationBehavior;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/AdInvalidationBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/AdInvalidationBehavior;

    return-object v0
.end method
