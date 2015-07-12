.class public final enum Lcom/etermax/gamescommon/profile/image/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/profile/image/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/profile/image/e;

.field public static final enum b:Lcom/etermax/gamescommon/profile/image/e;

.field public static final enum c:Lcom/etermax/gamescommon/profile/image/e;

.field public static final enum d:Lcom/etermax/gamescommon/profile/image/e;

.field private static final synthetic e:[Lcom/etermax/gamescommon/profile/image/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/etermax/gamescommon/profile/image/e;

    const-string v1, "APP"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/profile/image/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/profile/image/e;->a:Lcom/etermax/gamescommon/profile/image/e;

    new-instance v0, Lcom/etermax/gamescommon/profile/image/e;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/profile/image/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/profile/image/e;->b:Lcom/etermax/gamescommon/profile/image/e;

    new-instance v0, Lcom/etermax/gamescommon/profile/image/e;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/profile/image/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/profile/image/e;->c:Lcom/etermax/gamescommon/profile/image/e;

    new-instance v0, Lcom/etermax/gamescommon/profile/image/e;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/etermax/gamescommon/profile/image/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/profile/image/e;->d:Lcom/etermax/gamescommon/profile/image/e;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/gamescommon/profile/image/e;

    sget-object v1, Lcom/etermax/gamescommon/profile/image/e;->a:Lcom/etermax/gamescommon/profile/image/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/profile/image/e;->b:Lcom/etermax/gamescommon/profile/image/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/profile/image/e;->c:Lcom/etermax/gamescommon/profile/image/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/profile/image/e;->d:Lcom/etermax/gamescommon/profile/image/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/gamescommon/profile/image/e;->e:[Lcom/etermax/gamescommon/profile/image/e;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/profile/image/e;
    .locals 1
    .parameter

    .prologue
    .line 81
    const-class v0, Lcom/etermax/gamescommon/profile/image/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/profile/image/e;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/profile/image/e;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/etermax/gamescommon/profile/image/e;->e:[Lcom/etermax/gamescommon/profile/image/e;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/profile/image/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/profile/image/e;

    return-object v0
.end method
