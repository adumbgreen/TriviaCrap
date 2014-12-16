.class public final enum Lcom/etermax/gamescommon/b/at;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/b/at;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/b/at;

.field public static final enum b:Lcom/etermax/gamescommon/b/at;

.field private static final synthetic c:[Lcom/etermax/gamescommon/b/at;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/etermax/gamescommon/b/at;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/b/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/b/at;->a:Lcom/etermax/gamescommon/b/at;

    new-instance v0, Lcom/etermax/gamescommon/b/at;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/b/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/b/at;->b:Lcom/etermax/gamescommon/b/at;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/etermax/gamescommon/b/at;

    sget-object v1, Lcom/etermax/gamescommon/b/at;->a:Lcom/etermax/gamescommon/b/at;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/b/at;->b:Lcom/etermax/gamescommon/b/at;

    aput-object v1, v0, v3

    sput-object v0, Lcom/etermax/gamescommon/b/at;->c:[Lcom/etermax/gamescommon/b/at;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/b/at;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/etermax/gamescommon/b/at;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/b/at;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/b/at;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/etermax/gamescommon/b/at;->c:[Lcom/etermax/gamescommon/b/at;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/b/at;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/b/at;

    return-object v0
.end method
