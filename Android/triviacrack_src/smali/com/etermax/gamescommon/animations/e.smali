.class public final enum Lcom/etermax/gamescommon/animations/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/animations/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/animations/e;

.field public static final enum b:Lcom/etermax/gamescommon/animations/e;

.field public static final enum c:Lcom/etermax/gamescommon/animations/e;

.field public static final enum d:Lcom/etermax/gamescommon/animations/e;

.field private static final synthetic e:[Lcom/etermax/gamescommon/animations/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/etermax/gamescommon/animations/e;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/animations/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/animations/e;->a:Lcom/etermax/gamescommon/animations/e;

    .line 13
    new-instance v0, Lcom/etermax/gamescommon/animations/e;

    const-string v1, "PRE_LOADED"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/animations/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/animations/e;->b:Lcom/etermax/gamescommon/animations/e;

    .line 14
    new-instance v0, Lcom/etermax/gamescommon/animations/e;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/animations/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/animations/e;->c:Lcom/etermax/gamescommon/animations/e;

    .line 15
    new-instance v0, Lcom/etermax/gamescommon/animations/e;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v5}, Lcom/etermax/gamescommon/animations/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/animations/e;->d:Lcom/etermax/gamescommon/animations/e;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/gamescommon/animations/e;

    sget-object v1, Lcom/etermax/gamescommon/animations/e;->a:Lcom/etermax/gamescommon/animations/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/animations/e;->b:Lcom/etermax/gamescommon/animations/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/animations/e;->c:Lcom/etermax/gamescommon/animations/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/animations/e;->d:Lcom/etermax/gamescommon/animations/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/gamescommon/animations/e;->e:[Lcom/etermax/gamescommon/animations/e;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/animations/e;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/etermax/gamescommon/animations/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/animations/e;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/animations/e;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/etermax/gamescommon/animations/e;->e:[Lcom/etermax/gamescommon/animations/e;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/animations/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/animations/e;

    return-object v0
.end method
