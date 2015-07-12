.class public final enum Lcom/etermax/preguntados/ui/profile/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/ui/profile/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/preguntados/ui/profile/l;

.field public static final enum b:Lcom/etermax/preguntados/ui/profile/l;

.field public static final enum c:Lcom/etermax/preguntados/ui/profile/l;

.field private static final synthetic f:[Lcom/etermax/preguntados/ui/profile/l;


# instance fields
.field d:I

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/etermax/preguntados/ui/profile/l;

    const-string v1, "FIRST"

    sget v2, Lcom/etermax/o;->ranking_first_place:I

    sget v3, Lcom/etermax/h;->trofeo_puesto_01:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/etermax/preguntados/ui/profile/l;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/preguntados/ui/profile/l;->a:Lcom/etermax/preguntados/ui/profile/l;

    .line 28
    new-instance v0, Lcom/etermax/preguntados/ui/profile/l;

    const-string v1, "SECOND"

    sget v2, Lcom/etermax/o;->ranking_second_place:I

    sget v3, Lcom/etermax/h;->trofeo_puesto_02:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/etermax/preguntados/ui/profile/l;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/preguntados/ui/profile/l;->b:Lcom/etermax/preguntados/ui/profile/l;

    .line 29
    new-instance v0, Lcom/etermax/preguntados/ui/profile/l;

    const-string v1, "THIRD"

    sget v2, Lcom/etermax/o;->ranking_third_place:I

    sget v3, Lcom/etermax/h;->trofeo_puesto_03:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/etermax/preguntados/ui/profile/l;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/etermax/preguntados/ui/profile/l;->c:Lcom/etermax/preguntados/ui/profile/l;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/preguntados/ui/profile/l;

    sget-object v1, Lcom/etermax/preguntados/ui/profile/l;->a:Lcom/etermax/preguntados/ui/profile/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/preguntados/ui/profile/l;->b:Lcom/etermax/preguntados/ui/profile/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/preguntados/ui/profile/l;->c:Lcom/etermax/preguntados/ui/profile/l;

    aput-object v1, v0, v6

    sput-object v0, Lcom/etermax/preguntados/ui/profile/l;->f:[Lcom/etermax/preguntados/ui/profile/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/etermax/preguntados/ui/profile/l;->d:I

    .line 36
    iput p4, p0, Lcom/etermax/preguntados/ui/profile/l;->e:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/ui/profile/l;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/etermax/preguntados/ui/profile/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/profile/l;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/ui/profile/l;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/etermax/preguntados/ui/profile/l;->f:[Lcom/etermax/preguntados/ui/profile/l;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/ui/profile/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/ui/profile/l;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/etermax/preguntados/ui/profile/l;->d:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/etermax/preguntados/ui/profile/l;->e:I

    return v0
.end method
