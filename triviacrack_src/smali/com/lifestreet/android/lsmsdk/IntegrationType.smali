.class public final enum Lcom/lifestreet/android/lsmsdk/IntegrationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lifestreet/android/lsmsdk/IntegrationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lifestreet/android/lsmsdk/IntegrationType;

.field public static final enum ADMOB:Lcom/lifestreet/android/lsmsdk/IntegrationType;

.field public static final enum DIRECT:Lcom/lifestreet/android/lsmsdk/IntegrationType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/lifestreet/android/lsmsdk/IntegrationType;

    const-string v1, "ADMOB"

    const-string v2, "Admob_LSMSDK"

    invoke-direct {v0, v1, v3, v2}, Lcom/lifestreet/android/lsmsdk/IntegrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/IntegrationType;->ADMOB:Lcom/lifestreet/android/lsmsdk/IntegrationType;

    .line 14
    new-instance v0, Lcom/lifestreet/android/lsmsdk/IntegrationType;

    const-string v1, "DIRECT"

    const-string v2, "LSMSDK"

    invoke-direct {v0, v1, v4, v2}, Lcom/lifestreet/android/lsmsdk/IntegrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/IntegrationType;->DIRECT:Lcom/lifestreet/android/lsmsdk/IntegrationType;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lifestreet/android/lsmsdk/IntegrationType;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/IntegrationType;->ADMOB:Lcom/lifestreet/android/lsmsdk/IntegrationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lifestreet/android/lsmsdk/IntegrationType;->DIRECT:Lcom/lifestreet/android/lsmsdk/IntegrationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lifestreet/android/lsmsdk/IntegrationType;->$VALUES:[Lcom/lifestreet/android/lsmsdk/IntegrationType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/IntegrationType;->mName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/IntegrationType;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/lifestreet/android/lsmsdk/IntegrationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/IntegrationType;

    return-object v0
.end method

.method public static values()[Lcom/lifestreet/android/lsmsdk/IntegrationType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/lifestreet/android/lsmsdk/IntegrationType;->$VALUES:[Lcom/lifestreet/android/lsmsdk/IntegrationType;

    invoke-virtual {v0}, [Lcom/lifestreet/android/lsmsdk/IntegrationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lifestreet/android/lsmsdk/IntegrationType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/IntegrationType;->mName:Ljava/lang/String;

    return-object v0
.end method
