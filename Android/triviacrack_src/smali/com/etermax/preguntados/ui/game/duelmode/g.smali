.class public final enum Lcom/etermax/preguntados/ui/game/duelmode/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/ui/game/duelmode/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/preguntados/ui/game/duelmode/g;

.field private static final synthetic b:[Lcom/etermax/preguntados/ui/game/duelmode/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/g;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/duelmode/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/game/duelmode/g;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/etermax/preguntados/ui/game/duelmode/g;

    sget-object v1, Lcom/etermax/preguntados/ui/game/duelmode/g;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    aput-object v1, v0, v2

    sput-object v0, Lcom/etermax/preguntados/ui/game/duelmode/g;->b:[Lcom/etermax/preguntados/ui/game/duelmode/g;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/duelmode/g;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/preguntados/ui/game/duelmode/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/g;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/ui/game/duelmode/g;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/g;->b:[Lcom/etermax/preguntados/ui/game/duelmode/g;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/ui/game/duelmode/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/ui/game/duelmode/g;

    return-object v0
.end method
