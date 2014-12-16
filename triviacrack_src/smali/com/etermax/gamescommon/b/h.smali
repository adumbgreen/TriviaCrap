.class public final enum Lcom/etermax/gamescommon/b/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/b/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/b/h;

.field public static final enum b:Lcom/etermax/gamescommon/b/h;

.field public static final enum c:Lcom/etermax/gamescommon/b/h;

.field public static final enum d:Lcom/etermax/gamescommon/b/h;

.field private static final synthetic f:[Lcom/etermax/gamescommon/b/h;


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

    .line 9
    new-instance v0, Lcom/etermax/gamescommon/b/h;

    const-string v1, "CHAT_MESSAGE"

    const-string v2, "chat_message"

    invoke-direct {v0, v1, v3, v2}, Lcom/etermax/gamescommon/b/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/h;->a:Lcom/etermax/gamescommon/b/h;

    .line 10
    new-instance v0, Lcom/etermax/gamescommon/b/h;

    const-string v1, "CHAT_OPEN"

    const-string v2, "chat_open"

    invoke-direct {v0, v1, v4, v2}, Lcom/etermax/gamescommon/b/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/h;->b:Lcom/etermax/gamescommon/b/h;

    .line 11
    new-instance v0, Lcom/etermax/gamescommon/b/h;

    const-string v1, "CHAT_MORE_ACTIONS"

    const-string v2, "chat_more_actions"

    invoke-direct {v0, v1, v5, v2}, Lcom/etermax/gamescommon/b/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/h;->c:Lcom/etermax/gamescommon/b/h;

    .line 12
    new-instance v0, Lcom/etermax/gamescommon/b/h;

    const-string v1, "CHAT_LOAD_EARLIER"

    const-string v2, "chat_load_earlier"

    invoke-direct {v0, v1, v6, v2}, Lcom/etermax/gamescommon/b/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/h;->d:Lcom/etermax/gamescommon/b/h;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/gamescommon/b/h;

    sget-object v1, Lcom/etermax/gamescommon/b/h;->a:Lcom/etermax/gamescommon/b/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/b/h;->b:Lcom/etermax/gamescommon/b/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/b/h;->c:Lcom/etermax/gamescommon/b/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/gamescommon/b/h;->d:Lcom/etermax/gamescommon/b/h;

    aput-object v1, v0, v6

    sput-object v0, Lcom/etermax/gamescommon/b/h;->f:[Lcom/etermax/gamescommon/b/h;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/etermax/gamescommon/b/h;->e:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/b/h;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/etermax/gamescommon/b/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/b/h;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/b/h;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/etermax/gamescommon/b/h;->f:[Lcom/etermax/gamescommon/b/h;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/b/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/b/h;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/gamescommon/b/h;->e:Ljava/lang/String;

    return-object v0
.end method
