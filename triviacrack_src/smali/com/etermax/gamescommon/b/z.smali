.class public final enum Lcom/etermax/gamescommon/b/z;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/b/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/b/z;

.field public static final enum b:Lcom/etermax/gamescommon/b/z;

.field public static final enum c:Lcom/etermax/gamescommon/b/z;

.field private static final synthetic d:[Lcom/etermax/gamescommon/b/z;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/etermax/gamescommon/b/z;

    const-string v1, "ACCOUNT_NOT_CREATED"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/b/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/b/z;->a:Lcom/etermax/gamescommon/b/z;

    new-instance v0, Lcom/etermax/gamescommon/b/z;

    const-string v1, "LINK_CANCELLED"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/b/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/b/z;->b:Lcom/etermax/gamescommon/b/z;

    new-instance v0, Lcom/etermax/gamescommon/b/z;

    const-string v1, "JUST_LINKED"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/b/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/b/z;->c:Lcom/etermax/gamescommon/b/z;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/gamescommon/b/z;

    sget-object v1, Lcom/etermax/gamescommon/b/z;->a:Lcom/etermax/gamescommon/b/z;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/b/z;->b:Lcom/etermax/gamescommon/b/z;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/b/z;->c:Lcom/etermax/gamescommon/b/z;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/gamescommon/b/z;->d:[Lcom/etermax/gamescommon/b/z;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/b/z;
    .locals 1
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/etermax/gamescommon/b/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/b/z;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/b/z;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/etermax/gamescommon/b/z;->d:[Lcom/etermax/gamescommon/b/z;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/b/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/b/z;

    return-object v0
.end method
