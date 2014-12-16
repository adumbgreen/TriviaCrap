.class public final enum Lcom/etermax/gamescommon/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/a;

.field public static final enum b:Lcom/etermax/gamescommon/a;

.field private static final synthetic c:[Lcom/etermax/gamescommon/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/etermax/gamescommon/a;

    const-string v1, "GOOGLE"

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/a;->a:Lcom/etermax/gamescommon/a;

    .line 5
    new-instance v0, Lcom/etermax/gamescommon/a;

    const-string v1, "AMAZON"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/a;->b:Lcom/etermax/gamescommon/a;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/etermax/gamescommon/a;

    sget-object v1, Lcom/etermax/gamescommon/a;->a:Lcom/etermax/gamescommon/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/gamescommon/a;->b:Lcom/etermax/gamescommon/a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/etermax/gamescommon/a;->c:[Lcom/etermax/gamescommon/a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/a;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/gamescommon/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/a;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/a;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/gamescommon/a;->c:[Lcom/etermax/gamescommon/a;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/a;

    return-object v0
.end method
