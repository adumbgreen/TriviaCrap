.class public final enum Lcom/etermax/gamescommon/menu/navigation/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/menu/navigation/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum b:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum c:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum d:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum e:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum f:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum g:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum h:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum i:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum j:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum k:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum l:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum m:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum n:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum o:Lcom/etermax/gamescommon/menu/navigation/f;

.field public static final enum p:Lcom/etermax/gamescommon/menu/navigation/f;

.field private static final synthetic s:[Lcom/etermax/gamescommon/menu/navigation/f;


# instance fields
.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 6
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "PROFILE"

    sget v2, Lcom/etermax/o;->profile:I

    sget v3, Lcom/etermax/h;->dashboard_user:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->a:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 7
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "SETTINGS"

    sget v2, Lcom/etermax/o;->settings:I

    sget v3, Lcom/etermax/h;->dashboard_settings:I

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->b:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 8
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "HELP"

    sget v2, Lcom/etermax/o;->help:I

    sget v3, Lcom/etermax/h;->dashboard_help:I

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->c:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 9
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "SHOP"

    sget v2, Lcom/etermax/o;->shop:I

    sget v3, Lcom/etermax/h;->dashboard_shop:I

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->d:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 10
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "FACEBOOK"

    const/4 v2, 0x4

    sget v3, Lcom/etermax/o;->facebook:I

    sget v4, Lcom/etermax/h;->dashboard_facebook:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->e:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 11
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "TWITTER"

    const/4 v2, 0x5

    sget v3, Lcom/etermax/o;->twitter:I

    sget v4, Lcom/etermax/h;->dashboard_twitter:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->f:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 12
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "INBOX"

    const/4 v2, 0x6

    sget v3, Lcom/etermax/o;->inbox:I

    sget v4, Lcom/etermax/h;->dashboard_notifications:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->g:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 13
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "BUY_PRO"

    const/4 v2, 0x7

    sget v3, Lcom/etermax/o;->buy_version:I

    sget v4, Lcom/etermax/h;->dashboard_pro_version:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->h:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 14
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "ACHIEVEMENTS"

    const/16 v2, 0x8

    sget v3, Lcom/etermax/o;->player_achievements:I

    sget v4, Lcom/etermax/h;->dashboard_achievements:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->i:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 15
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "COUPON"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->j:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 16
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "HEADER"

    const/16 v2, 0xa

    sget v3, Lcom/etermax/o;->other_games:I

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->k:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 17
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "APP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->l:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 18
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "SUGGEST_QUESTION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->m:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 19
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "QUESTIONS_FACTORY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->n:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 20
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "MY_TEAM"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->o:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 21
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v1, "RANKINGS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/etermax/gamescommon/menu/navigation/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->p:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 5
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->a:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->b:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v1, v0, v7

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->c:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v1, v0, v8

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->d:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->e:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->f:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->g:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->h:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->i:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->j:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->k:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->l:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->m:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->n:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->o:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->p:Lcom/etermax/gamescommon/menu/navigation/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->s:[Lcom/etermax/gamescommon/menu/navigation/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/etermax/gamescommon/menu/navigation/f;->q:I

    .line 28
    iput p4, p0, Lcom/etermax/gamescommon/menu/navigation/f;->r:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/menu/navigation/f;
    .locals 1
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/etermax/gamescommon/menu/navigation/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/menu/navigation/f;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/menu/navigation/f;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/etermax/gamescommon/menu/navigation/f;->s:[Lcom/etermax/gamescommon/menu/navigation/f;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/menu/navigation/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/menu/navigation/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/etermax/gamescommon/menu/navigation/f;->q:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/etermax/gamescommon/menu/navigation/f;->r:I

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/etermax/gamescommon/menu/navigation/f;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/etermax/gamescommon/menu/navigation/f;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
