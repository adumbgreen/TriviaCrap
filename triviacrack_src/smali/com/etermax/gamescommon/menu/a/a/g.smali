.class public final enum Lcom/etermax/gamescommon/menu/a/a/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/menu/a/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/menu/a/a/g;

.field public static final enum b:Lcom/etermax/gamescommon/menu/a/a/g;

.field public static final enum c:Lcom/etermax/gamescommon/menu/a/a/g;

.field public static final enum d:Lcom/etermax/gamescommon/menu/a/a/g;

.field public static final enum e:Lcom/etermax/gamescommon/menu/a/a/g;

.field public static final enum f:Lcom/etermax/gamescommon/menu/a/a/g;

.field private static final synthetic h:[Lcom/etermax/gamescommon/menu/a/a/g;


# instance fields
.field private g:Z


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
    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/g;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v3, v4}, Lcom/etermax/gamescommon/menu/a/a/g;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/etermax/gamescommon/menu/a/a/g;->a:Lcom/etermax/gamescommon/menu/a/a/g;

    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/g;

    const-string v1, "USER"

    invoke-direct {v0, v1, v4, v4}, Lcom/etermax/gamescommon/menu/a/a/g;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/etermax/gamescommon/menu/a/a/g;->b:Lcom/etermax/gamescommon/menu/a/a/g;

    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/g;

    const-string v1, "SECTION"

    invoke-direct {v0, v1, v5, v3}, Lcom/etermax/gamescommon/menu/a/a/g;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/etermax/gamescommon/menu/a/a/g;->c:Lcom/etermax/gamescommon/menu/a/a/g;

    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/g;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v6, v3}, Lcom/etermax/gamescommon/menu/a/a/g;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/etermax/gamescommon/menu/a/a/g;->d:Lcom/etermax/gamescommon/menu/a/a/g;

    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/g;

    const-string v1, "VIEW_MORE"

    invoke-direct {v0, v1, v7, v4}, Lcom/etermax/gamescommon/menu/a/a/g;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/etermax/gamescommon/menu/a/a/g;->e:Lcom/etermax/gamescommon/menu/a/a/g;

    new-instance v0, Lcom/etermax/gamescommon/menu/a/a/g;

    const-string v1, "MESSAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/etermax/gamescommon/menu/a/a/g;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/etermax/gamescommon/menu/a/a/g;->f:Lcom/etermax/gamescommon/menu/a/a/g;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/etermax/gamescommon/menu/a/a/g;

    sget-object v1, Lcom/etermax/gamescommon/menu/a/a/g;->a:Lcom/etermax/gamescommon/menu/a/a/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/menu/a/a/g;->b:Lcom/etermax/gamescommon/menu/a/a/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/menu/a/a/g;->c:Lcom/etermax/gamescommon/menu/a/a/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/gamescommon/menu/a/a/g;->d:Lcom/etermax/gamescommon/menu/a/a/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/etermax/gamescommon/menu/a/a/g;->e:Lcom/etermax/gamescommon/menu/a/a/g;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/gamescommon/menu/a/a/g;->f:Lcom/etermax/gamescommon/menu/a/a/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/gamescommon/menu/a/a/g;->h:[Lcom/etermax/gamescommon/menu/a/a/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-boolean p3, p0, Lcom/etermax/gamescommon/menu/a/a/g;->g:Z

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/menu/a/a/g;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/gamescommon/menu/a/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/menu/a/a/g;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/menu/a/a/g;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/gamescommon/menu/a/a/g;->h:[Lcom/etermax/gamescommon/menu/a/a/g;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/menu/a/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/menu/a/a/g;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/a/g;->g:Z

    return v0
.end method
