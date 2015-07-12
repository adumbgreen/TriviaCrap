.class public final enum Lcom/etermax/gamescommon/b/an;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/b/an;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/b/an;

.field public static final enum b:Lcom/etermax/gamescommon/b/an;

.field public static final enum c:Lcom/etermax/gamescommon/b/an;

.field public static final enum d:Lcom/etermax/gamescommon/b/an;

.field public static final enum e:Lcom/etermax/gamescommon/b/an;

.field public static final enum f:Lcom/etermax/gamescommon/b/an;

.field public static final enum g:Lcom/etermax/gamescommon/b/an;

.field public static final enum h:Lcom/etermax/gamescommon/b/an;

.field public static final enum i:Lcom/etermax/gamescommon/b/an;

.field public static final enum j:Lcom/etermax/gamescommon/b/an;

.field public static final enum k:Lcom/etermax/gamescommon/b/an;

.field public static final enum l:Lcom/etermax/gamescommon/b/an;

.field public static final enum m:Lcom/etermax/gamescommon/b/an;

.field private static final synthetic o:[Lcom/etermax/gamescommon/b/an;


# instance fields
.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/etermax/gamescommon/b/an;

    const-string v1, "MENU"

    const-string v2, "menu"

    invoke-direct {v0, v1, v4, v2}, Lcom/etermax/gamescommon/b/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/an;->a:Lcom/etermax/gamescommon/b/an;

    .line 7
    new-instance v0, Lcom/etermax/gamescommon/b/an;

    const-string v1, "DASHBOARD"

    const-string v2, "dashboard"

    invoke-direct {v0, v1, v5, v2}, Lcom/etermax/gamescommon/b/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/an;->b:Lcom/etermax/gamescommon/b/an;

    .line 8
    new-instance v0, Lcom/etermax/gamescommon/b/an;

    const-string v1, "MESSAGING_PANEL"

    const-string v2, "messaging_panel"

    invoke-direct {v0, v1, v6, v2}, Lcom/etermax/gamescommon/b/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/an;->c:Lcom/etermax/gamescommon/b/an;

    .line 9
    new-instance v0, Lcom/etermax/gamescommon/b/an;

    const-string v1, "FRIENDS_LIST"

    const-string v2, "friendlist"

    invoke-direct {v0, v1, v7, v2}, Lcom/etermax/gamescommon/b/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/an;->d:Lcom/etermax/gamescommon/b/an;

    .line 10
    new-instance v0, Lcom/etermax/gamescommon/b/an;

    const-string v1, "GAME_BOARD"

    const-string v2, "board"

    invoke-direct {v0, v1, v8, v2}, Lcom/etermax/gamescommon/b/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/an;->e:Lcom/etermax/gamescommon/b/an;

    .line 11
    new-instance v0, Lcom/etermax/gamescommon/b/an;

    const-string v1, "BLOCKED_LIST"

    const/4 v2, 0x5

    const-string v3, "blocklist"

    invoke-direct {v0, v1, v2, v3}, Lcom/etermax/gamescommon/b/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/an;->f:Lcom/etermax/gamescommon/b/an;

    .line 12
    new-instance v0, Lcom/etermax/gamescommon/b/an;

    const-string v1, "SEARCH"

    const/4 v2, 0x6

    const-string v3, "search"

    invoke-direct {v0, v1, v2, v3}, Lcom/etermax/gamescommon/b/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/an;->g:Lcom/etermax/gamescommon/b/an;

    .line 13
    new-instance v0, Lcom/etermax/gamescommon/b/an;

    const-string v1, "GAME_SCORE"

    const/4 v2, 0x7

    const-string v3, "game_score"

    invoke-direct {v0, v1, v2, v3}, Lcom/etermax/gamescommon/b/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/an;->h:Lcom/etermax/gamescommon/b/an;

    .line 14
    new-instance v0, Lcom/etermax/gamescommon/b/an;

    const-string v1, "ROUND_SCORE"

    const/16 v2, 0x8

    const-string v3, "round_score"

    invoke-direct {v0, v1, v2, v3}, Lcom/etermax/gamescommon/b/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/an;->i:Lcom/etermax/gamescommon/b/an;

    .line 15
    new-instance v0, Lcom/etermax/gamescommon/b/an;

    const-string v1, "FRIENDS_PANEL"

    const/16 v2, 0x9

    const-string v3, "mp_swipe"

    invoke-direct {v0, v1, v2, v3}, Lcom/etermax/gamescommon/b/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/an;->j:Lcom/etermax/gamescommon/b/an;

    .line 16
    new-instance v0, Lcom/etermax/gamescommon/b/an;

    const-string v1, "DUEL_RESULT"

    const/16 v2, 0xa

    const-string v3, "duel_result"

    invoke-direct {v0, v1, v2, v3}, Lcom/etermax/gamescommon/b/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/an;->k:Lcom/etermax/gamescommon/b/an;

    .line 17
    new-instance v0, Lcom/etermax/gamescommon/b/an;

    const-string v1, "RANKINGS"

    const/16 v2, 0xb

    const-string v3, "rankings"

    invoke-direct {v0, v1, v2, v3}, Lcom/etermax/gamescommon/b/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/an;->l:Lcom/etermax/gamescommon/b/an;

    .line 18
    new-instance v0, Lcom/etermax/gamescommon/b/an;

    const-string v1, "NOTIFICATION"

    const/16 v2, 0xc

    const-string v3, "notification"

    invoke-direct {v0, v1, v2, v3}, Lcom/etermax/gamescommon/b/an;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/etermax/gamescommon/b/an;->m:Lcom/etermax/gamescommon/b/an;

    .line 5
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/etermax/gamescommon/b/an;

    sget-object v1, Lcom/etermax/gamescommon/b/an;->a:Lcom/etermax/gamescommon/b/an;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/b/an;->b:Lcom/etermax/gamescommon/b/an;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/gamescommon/b/an;->c:Lcom/etermax/gamescommon/b/an;

    aput-object v1, v0, v6

    sget-object v1, Lcom/etermax/gamescommon/b/an;->d:Lcom/etermax/gamescommon/b/an;

    aput-object v1, v0, v7

    sget-object v1, Lcom/etermax/gamescommon/b/an;->e:Lcom/etermax/gamescommon/b/an;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/gamescommon/b/an;->f:Lcom/etermax/gamescommon/b/an;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/etermax/gamescommon/b/an;->g:Lcom/etermax/gamescommon/b/an;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/etermax/gamescommon/b/an;->h:Lcom/etermax/gamescommon/b/an;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/etermax/gamescommon/b/an;->i:Lcom/etermax/gamescommon/b/an;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/etermax/gamescommon/b/an;->j:Lcom/etermax/gamescommon/b/an;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/etermax/gamescommon/b/an;->k:Lcom/etermax/gamescommon/b/an;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/etermax/gamescommon/b/an;->l:Lcom/etermax/gamescommon/b/an;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/etermax/gamescommon/b/an;->m:Lcom/etermax/gamescommon/b/an;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/gamescommon/b/an;->o:[Lcom/etermax/gamescommon/b/an;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/etermax/gamescommon/b/an;->n:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/b/an;
    .locals 1
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/etermax/gamescommon/b/an;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/b/an;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/b/an;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/etermax/gamescommon/b/an;->o:[Lcom/etermax/gamescommon/b/an;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/b/an;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/b/an;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/gamescommon/b/an;->n:Ljava/lang/String;

    return-object v0
.end method
