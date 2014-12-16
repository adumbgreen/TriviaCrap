.class public final enum Lcom/etermax/gamescommon/h/a/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/h/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/h/a/e;

.field public static final enum b:Lcom/etermax/gamescommon/h/a/e;

.field public static final enum c:Lcom/etermax/gamescommon/h/a/e;

.field public static final enum d:Lcom/etermax/gamescommon/h/a/e;

.field public static final enum e:Lcom/etermax/gamescommon/h/a/e;

.field public static final enum f:Lcom/etermax/gamescommon/h/a/e;

.field public static final enum g:Lcom/etermax/gamescommon/h/a/e;

.field private static final synthetic h:[Lcom/etermax/gamescommon/h/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/etermax/gamescommon/h/a/e;

    const-string v1, "SUGGESTED_FRIENDS"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/h/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/h/a/e;->a:Lcom/etermax/gamescommon/h/a/e;

    new-instance v0, Lcom/etermax/gamescommon/h/a/e;

    const-string v1, "RECENT_FRIENDS"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/h/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/h/a/e;->b:Lcom/etermax/gamescommon/h/a/e;

    new-instance v0, Lcom/etermax/gamescommon/h/a/e;

    const-string v1, "FAVORITES_FRIENDS"

    invoke-direct {v0, v1, v5}, Lcom/etermax/gamescommon/h/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/h/a/e;->c:Lcom/etermax/gamescommon/h/a/e;

    new-instance v0, Lcom/etermax/gamescommon/h/a/e;

    const-string v1, "SEARCH_FRIENDS"

    invoke-direct {v0, v1, v6}, Lcom/etermax/gamescommon/h/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/h/a/e;->d:Lcom/etermax/gamescommon/h/a/e;

    new-instance v0, Lcom/etermax/gamescommon/h/a/e;

    const-string v1, "INVITE_TO_PLAY"

    invoke-direct {v0, v1, v7}, Lcom/etermax/gamescommon/h/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/h/a/e;->e:Lcom/etermax/gamescommon/h/a/e;

    new-instance v0, Lcom/etermax/gamescommon/h/a/e;

    const-string v1, "FACEBOOK_FRIENDS_PLAYING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/h/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/h/a/e;->f:Lcom/etermax/gamescommon/h/a/e;

    new-instance v0, Lcom/etermax/gamescommon/h/a/e;

    const-string v1, "FACEBOOK_INVITE_TO_PLAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/h/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/h/a/e;->g:Lcom/etermax/gamescommon/h/a/e;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/etermax/gamescommon/h/a/e;

    sget-object v1, Lcom/etermax/gamescommon/h/a/e;->a:Lcom/etermax/gamescommon/h/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/h/a/e;->b:Lcom/etermax/gamescommon/h/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/h/a/e;->c:Lcom/etermax/gamescommon/h/a/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/gamescommon/h/a/e;->d:Lcom/etermax/gamescommon/h/a/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/etermax/gamescommon/h/a/e;->e:Lcom/etermax/gamescommon/h/a/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/gamescommon/h/a/e;->f:Lcom/etermax/gamescommon/h/a/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/etermax/gamescommon/h/a/e;->g:Lcom/etermax/gamescommon/h/a/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/gamescommon/h/a/e;->h:[Lcom/etermax/gamescommon/h/a/e;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/h/a/e;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/gamescommon/h/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/h/a/e;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/h/a/e;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/gamescommon/h/a/e;->h:[Lcom/etermax/gamescommon/h/a/e;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/h/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/h/a/e;

    return-object v0
.end method
