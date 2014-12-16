.class public final enum Lcom/etermax/gamescommon/b/ao;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/b/ao;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/b/ao;

.field public static final enum b:Lcom/etermax/gamescommon/b/ao;

.field public static final enum c:Lcom/etermax/gamescommon/b/ao;

.field private static final synthetic e:[Lcom/etermax/gamescommon/b/ao;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/etermax/gamescommon/b/ao;

    const-string v1, "PROFILE_EVENT_TYPE_OWN"

    const-string v2, "own"

    invoke-direct {v0, v1, v3, v2}, Lcom/etermax/gamescommon/b/ao;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/ao;->a:Lcom/etermax/gamescommon/b/ao;

    .line 34
    new-instance v0, Lcom/etermax/gamescommon/b/ao;

    const-string v1, "PROFILE_EVENT_TYPE_FRIEND"

    const-string v2, "friend"

    invoke-direct {v0, v1, v4, v2}, Lcom/etermax/gamescommon/b/ao;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/ao;->b:Lcom/etermax/gamescommon/b/ao;

    .line 35
    new-instance v0, Lcom/etermax/gamescommon/b/ao;

    const-string v1, "PROFILE_EVENT_TYPE_OTHER"

    const-string v2, "other"

    invoke-direct {v0, v1, v5, v2}, Lcom/etermax/gamescommon/b/ao;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/ao;->c:Lcom/etermax/gamescommon/b/ao;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/gamescommon/b/ao;

    sget-object v1, Lcom/etermax/gamescommon/b/ao;->a:Lcom/etermax/gamescommon/b/ao;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/b/ao;->b:Lcom/etermax/gamescommon/b/ao;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/b/ao;->c:Lcom/etermax/gamescommon/b/ao;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/gamescommon/b/ao;->e:[Lcom/etermax/gamescommon/b/ao;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/etermax/gamescommon/b/ao;->d:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/b/ao;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/etermax/gamescommon/b/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/b/ao;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/b/ao;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/etermax/gamescommon/b/ao;->e:[Lcom/etermax/gamescommon/b/ao;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/b/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/b/ao;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/gamescommon/b/ao;->d:Ljava/lang/String;

    return-object v0
.end method
