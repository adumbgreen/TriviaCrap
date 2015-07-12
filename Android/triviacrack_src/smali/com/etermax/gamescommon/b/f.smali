.class public final enum Lcom/etermax/gamescommon/b/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/b/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/b/f;

.field public static final enum b:Lcom/etermax/gamescommon/b/f;

.field public static final enum c:Lcom/etermax/gamescommon/b/f;

.field public static final enum d:Lcom/etermax/gamescommon/b/f;

.field private static final synthetic f:[Lcom/etermax/gamescommon/b/f;


# instance fields
.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/etermax/gamescommon/b/f;

    const-string v1, "ADD_FRIEND"

    const-string v2, "add_friend"

    invoke-direct {v0, v1, v3, v2}, Lcom/etermax/gamescommon/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/f;->a:Lcom/etermax/gamescommon/b/f;

    .line 64
    new-instance v0, Lcom/etermax/gamescommon/b/f;

    const-string v1, "BLOCK_USER"

    const-string v2, "block_user"

    invoke-direct {v0, v1, v4, v2}, Lcom/etermax/gamescommon/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/f;->b:Lcom/etermax/gamescommon/b/f;

    .line 65
    new-instance v0, Lcom/etermax/gamescommon/b/f;

    const-string v1, "DELETE_CHAT"

    const-string v2, "delete_chat"

    invoke-direct {v0, v1, v5, v2}, Lcom/etermax/gamescommon/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/f;->c:Lcom/etermax/gamescommon/b/f;

    .line 66
    new-instance v0, Lcom/etermax/gamescommon/b/f;

    const-string v1, "CANCEL"

    const-string v2, "cancel"

    invoke-direct {v0, v1, v6, v2}, Lcom/etermax/gamescommon/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/f;->d:Lcom/etermax/gamescommon/b/f;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/gamescommon/b/f;

    sget-object v1, Lcom/etermax/gamescommon/b/f;->a:Lcom/etermax/gamescommon/b/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/b/f;->b:Lcom/etermax/gamescommon/b/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/b/f;->c:Lcom/etermax/gamescommon/b/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/gamescommon/b/f;->d:Lcom/etermax/gamescommon/b/f;

    aput-object v1, v0, v6

    sput-object v0, Lcom/etermax/gamescommon/b/f;->f:[Lcom/etermax/gamescommon/b/f;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lcom/etermax/gamescommon/b/f;->e:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/b/f;
    .locals 1
    .parameter

    .prologue
    .line 62
    const-class v0, Lcom/etermax/gamescommon/b/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/b/f;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/b/f;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/etermax/gamescommon/b/f;->f:[Lcom/etermax/gamescommon/b/f;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/b/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/b/f;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/etermax/gamescommon/b/f;->e:Ljava/lang/String;

    return-object v0
.end method
