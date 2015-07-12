.class public final enum Lcom/etermax/preguntados/notification/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/notification/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/preguntados/notification/b;

.field public static final enum b:Lcom/etermax/preguntados/notification/b;

.field public static final enum c:Lcom/etermax/preguntados/notification/b;

.field private static final synthetic e:[Lcom/etermax/preguntados/notification/b;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/etermax/preguntados/notification/b;

    const-string v1, "GAME"

    const/16 v2, 0x3f2

    invoke-direct {v0, v1, v3, v2}, Lcom/etermax/preguntados/notification/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/etermax/preguntados/notification/b;->a:Lcom/etermax/preguntados/notification/b;

    .line 7
    new-instance v0, Lcom/etermax/preguntados/notification/b;

    const-string v1, "CHAT"

    const/16 v2, 0x3fc

    invoke-direct {v0, v1, v4, v2}, Lcom/etermax/preguntados/notification/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/etermax/preguntados/notification/b;->b:Lcom/etermax/preguntados/notification/b;

    .line 8
    new-instance v0, Lcom/etermax/preguntados/notification/b;

    const-string v1, "USER"

    const/16 v2, 0x406

    invoke-direct {v0, v1, v5, v2}, Lcom/etermax/preguntados/notification/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/etermax/preguntados/notification/b;->c:Lcom/etermax/preguntados/notification/b;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/preguntados/notification/b;

    sget-object v1, Lcom/etermax/preguntados/notification/b;->a:Lcom/etermax/preguntados/notification/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/preguntados/notification/b;->b:Lcom/etermax/preguntados/notification/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/preguntados/notification/b;->c:Lcom/etermax/preguntados/notification/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/preguntados/notification/b;->e:[Lcom/etermax/preguntados/notification/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/etermax/preguntados/notification/b;->d:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/notification/b;
    .locals 1
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/etermax/preguntados/notification/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/notification/b;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/notification/b;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/etermax/preguntados/notification/b;->e:[Lcom/etermax/preguntados/notification/b;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/notification/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/notification/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/etermax/preguntados/notification/b;->d:I

    return v0
.end method
