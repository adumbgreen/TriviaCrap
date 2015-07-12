.class public final enum Lcom/etermax/gamescommon/b/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/b/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/b/i;

.field public static final enum b:Lcom/etermax/gamescommon/b/i;

.field private static final synthetic d:[Lcom/etermax/gamescommon/b/i;


# instance fields
.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/etermax/gamescommon/b/i;

    const-string v1, "FRIEND"

    const-string v2, "friend"

    invoke-direct {v0, v1, v3, v2}, Lcom/etermax/gamescommon/b/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/i;->a:Lcom/etermax/gamescommon/b/i;

    .line 27
    new-instance v0, Lcom/etermax/gamescommon/b/i;

    const-string v1, "NO_FRIEND"

    const-string v2, "no_friend"

    invoke-direct {v0, v1, v4, v2}, Lcom/etermax/gamescommon/b/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/i;->b:Lcom/etermax/gamescommon/b/i;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/etermax/gamescommon/b/i;

    sget-object v1, Lcom/etermax/gamescommon/b/i;->a:Lcom/etermax/gamescommon/b/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/b/i;->b:Lcom/etermax/gamescommon/b/i;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/gamescommon/b/i;->d:[Lcom/etermax/gamescommon/b/i;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/etermax/gamescommon/b/i;->c:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/b/i;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/etermax/gamescommon/b/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/b/i;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/b/i;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/etermax/gamescommon/b/i;->d:[Lcom/etermax/gamescommon/b/i;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/b/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/b/i;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/gamescommon/b/i;->c:Ljava/lang/String;

    return-object v0
.end method
