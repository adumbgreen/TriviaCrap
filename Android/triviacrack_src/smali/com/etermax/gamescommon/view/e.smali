.class public final enum Lcom/etermax/gamescommon/view/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/view/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/view/e;

.field public static final enum b:Lcom/etermax/gamescommon/view/e;

.field public static final enum c:Lcom/etermax/gamescommon/view/e;

.field public static final enum d:Lcom/etermax/gamescommon/view/e;

.field public static final enum e:Lcom/etermax/gamescommon/view/e;

.field public static final enum f:Lcom/etermax/gamescommon/view/e;

.field public static final enum g:Lcom/etermax/gamescommon/view/e;

.field public static final enum h:Lcom/etermax/gamescommon/view/e;

.field private static final synthetic i:[Lcom/etermax/gamescommon/view/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/etermax/gamescommon/view/e;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/view/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/view/e;->a:Lcom/etermax/gamescommon/view/e;

    .line 29
    new-instance v0, Lcom/etermax/gamescommon/view/e;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/view/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/view/e;->b:Lcom/etermax/gamescommon/view/e;

    .line 30
    new-instance v0, Lcom/etermax/gamescommon/view/e;

    const-string v1, "POKE"

    invoke-direct {v0, v1, v5}, Lcom/etermax/gamescommon/view/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/view/e;->c:Lcom/etermax/gamescommon/view/e;

    .line 31
    new-instance v0, Lcom/etermax/gamescommon/view/e;

    const-string v1, "REJECT"

    invoke-direct {v0, v1, v6}, Lcom/etermax/gamescommon/view/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/view/e;->d:Lcom/etermax/gamescommon/view/e;

    .line 32
    new-instance v0, Lcom/etermax/gamescommon/view/e;

    const-string v1, "RESIGN"

    invoke-direct {v0, v1, v7}, Lcom/etermax/gamescommon/view/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/view/e;->e:Lcom/etermax/gamescommon/view/e;

    .line 33
    new-instance v0, Lcom/etermax/gamescommon/view/e;

    const-string v1, "DELETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/view/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/view/e;->f:Lcom/etermax/gamescommon/view/e;

    .line 34
    new-instance v0, Lcom/etermax/gamescommon/view/e;

    const-string v1, "REMATCH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/view/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/view/e;->g:Lcom/etermax/gamescommon/view/e;

    .line 35
    new-instance v0, Lcom/etermax/gamescommon/view/e;

    const-string v1, "PUBLISH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/view/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/view/e;->h:Lcom/etermax/gamescommon/view/e;

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/etermax/gamescommon/view/e;

    sget-object v1, Lcom/etermax/gamescommon/view/e;->a:Lcom/etermax/gamescommon/view/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/view/e;->b:Lcom/etermax/gamescommon/view/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/view/e;->c:Lcom/etermax/gamescommon/view/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/gamescommon/view/e;->d:Lcom/etermax/gamescommon/view/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/etermax/gamescommon/view/e;->e:Lcom/etermax/gamescommon/view/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/gamescommon/view/e;->f:Lcom/etermax/gamescommon/view/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/etermax/gamescommon/view/e;->g:Lcom/etermax/gamescommon/view/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/etermax/gamescommon/view/e;->h:Lcom/etermax/gamescommon/view/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/gamescommon/view/e;->i:[Lcom/etermax/gamescommon/view/e;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/view/e;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/etermax/gamescommon/view/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/e;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/view/e;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/etermax/gamescommon/view/e;->i:[Lcom/etermax/gamescommon/view/e;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/view/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/view/e;

    return-object v0
.end method
