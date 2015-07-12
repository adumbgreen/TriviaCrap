.class public final enum Lcom/etermax/gamescommon/notification/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/notification/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/notification/h;

.field public static final enum b:Lcom/etermax/gamescommon/notification/h;

.field public static final enum c:Lcom/etermax/gamescommon/notification/h;

.field private static final synthetic d:[Lcom/etermax/gamescommon/notification/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/etermax/gamescommon/notification/h;

    const-string v1, "NOT_STACKED"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/notification/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/notification/h;->a:Lcom/etermax/gamescommon/notification/h;

    .line 58
    new-instance v0, Lcom/etermax/gamescommon/notification/h;

    const-string v1, "STACKED_SAME_INFO"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/notification/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/notification/h;->b:Lcom/etermax/gamescommon/notification/h;

    .line 63
    new-instance v0, Lcom/etermax/gamescommon/notification/h;

    const-string v1, "STACKED_MULTI_INFO"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/notification/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/notification/h;->c:Lcom/etermax/gamescommon/notification/h;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/gamescommon/notification/h;

    sget-object v1, Lcom/etermax/gamescommon/notification/h;->a:Lcom/etermax/gamescommon/notification/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/notification/h;->b:Lcom/etermax/gamescommon/notification/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/notification/h;->c:Lcom/etermax/gamescommon/notification/h;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/gamescommon/notification/h;->d:[Lcom/etermax/gamescommon/notification/h;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/notification/h;
    .locals 1
    .parameter

    .prologue
    .line 49
    const-class v0, Lcom/etermax/gamescommon/notification/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/notification/h;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/notification/h;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->d:[Lcom/etermax/gamescommon/notification/h;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/notification/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/notification/h;

    return-object v0
.end method
