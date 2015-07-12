.class final enum Lcom/etermax/preguntados/ui/withoutcoins/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/ui/withoutcoins/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/preguntados/ui/withoutcoins/c;

.field public static final enum b:Lcom/etermax/preguntados/ui/withoutcoins/c;

.field public static final enum c:Lcom/etermax/preguntados/ui/withoutcoins/c;

.field private static final synthetic d:[Lcom/etermax/preguntados/ui/withoutcoins/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/etermax/preguntados/ui/withoutcoins/c;

    const-string v1, "ASCENDING"

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/ui/withoutcoins/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/withoutcoins/c;->a:Lcom/etermax/preguntados/ui/withoutcoins/c;

    .line 51
    new-instance v0, Lcom/etermax/preguntados/ui/withoutcoins/c;

    const-string v1, "DESCENDING"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/ui/withoutcoins/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/withoutcoins/c;->b:Lcom/etermax/preguntados/ui/withoutcoins/c;

    .line 52
    new-instance v0, Lcom/etermax/preguntados/ui/withoutcoins/c;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/etermax/preguntados/ui/withoutcoins/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/withoutcoins/c;->c:Lcom/etermax/preguntados/ui/withoutcoins/c;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/preguntados/ui/withoutcoins/c;

    sget-object v1, Lcom/etermax/preguntados/ui/withoutcoins/c;->a:Lcom/etermax/preguntados/ui/withoutcoins/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/ui/withoutcoins/c;->b:Lcom/etermax/preguntados/ui/withoutcoins/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/preguntados/ui/withoutcoins/c;->c:Lcom/etermax/preguntados/ui/withoutcoins/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/preguntados/ui/withoutcoins/c;->d:[Lcom/etermax/preguntados/ui/withoutcoins/c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/ui/withoutcoins/c;
    .locals 1
    .parameter

    .prologue
    .line 49
    const-class v0, Lcom/etermax/preguntados/ui/withoutcoins/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/withoutcoins/c;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/ui/withoutcoins/c;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/etermax/preguntados/ui/withoutcoins/c;->d:[Lcom/etermax/preguntados/ui/withoutcoins/c;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/ui/withoutcoins/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/ui/withoutcoins/c;

    return-object v0
.end method
