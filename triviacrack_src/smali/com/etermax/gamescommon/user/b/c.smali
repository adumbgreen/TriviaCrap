.class public final enum Lcom/etermax/gamescommon/user/b/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/user/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/user/b/c;

.field public static final enum b:Lcom/etermax/gamescommon/user/b/c;

.field private static final synthetic c:[Lcom/etermax/gamescommon/user/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/etermax/gamescommon/user/b/c;

    const-string v1, "SECTION"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/user/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/user/b/c;->a:Lcom/etermax/gamescommon/user/b/c;

    new-instance v0, Lcom/etermax/gamescommon/user/b/c;

    const-string v1, "ITEM"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/user/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/user/b/c;->b:Lcom/etermax/gamescommon/user/b/c;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/etermax/gamescommon/user/b/c;

    sget-object v1, Lcom/etermax/gamescommon/user/b/c;->a:Lcom/etermax/gamescommon/user/b/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/user/b/c;->b:Lcom/etermax/gamescommon/user/b/c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/etermax/gamescommon/user/b/c;->c:[Lcom/etermax/gamescommon/user/b/c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/user/b/c;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/gamescommon/user/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/b/c;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/user/b/c;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/gamescommon/user/b/c;->c:[Lcom/etermax/gamescommon/user/b/c;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/user/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/user/b/c;

    return-object v0
.end method
