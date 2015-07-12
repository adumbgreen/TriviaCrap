.class public final enum Lcom/etermax/gamescommon/resources/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/resources/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/resources/b;

.field public static final enum b:Lcom/etermax/gamescommon/resources/b;

.field public static final enum c:Lcom/etermax/gamescommon/resources/b;

.field public static final enum d:Lcom/etermax/gamescommon/resources/b;

.field public static final enum e:Lcom/etermax/gamescommon/resources/b;

.field private static final synthetic h:[Lcom/etermax/gamescommon/resources/b;


# instance fields
.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/etermax/gamescommon/resources/b;

    const-string v1, "LDPI"

    const-string v2, "ldpi"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/etermax/gamescommon/resources/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/resources/b;->a:Lcom/etermax/gamescommon/resources/b;

    .line 37
    new-instance v0, Lcom/etermax/gamescommon/resources/b;

    const-string v1, "MDPI"

    const-string v2, "mdpi"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/etermax/gamescommon/resources/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/resources/b;->b:Lcom/etermax/gamescommon/resources/b;

    .line 38
    new-instance v0, Lcom/etermax/gamescommon/resources/b;

    const-string v1, "HDPI"

    const-string v2, "hdpi"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/etermax/gamescommon/resources/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/resources/b;->c:Lcom/etermax/gamescommon/resources/b;

    .line 39
    new-instance v0, Lcom/etermax/gamescommon/resources/b;

    const-string v1, "XHDIP"

    const-string v2, "xhdpi"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/etermax/gamescommon/resources/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/resources/b;->d:Lcom/etermax/gamescommon/resources/b;

    .line 40
    new-instance v0, Lcom/etermax/gamescommon/resources/b;

    const-string v1, "XXHDPI"

    const-string v2, "xxhdpi"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/etermax/gamescommon/resources/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/resources/b;->e:Lcom/etermax/gamescommon/resources/b;

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/etermax/gamescommon/resources/b;

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->a:Lcom/etermax/gamescommon/resources/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->b:Lcom/etermax/gamescommon/resources/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->c:Lcom/etermax/gamescommon/resources/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->d:Lcom/etermax/gamescommon/resources/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->e:Lcom/etermax/gamescommon/resources/b;

    aput-object v1, v0, v7

    sput-object v0, Lcom/etermax/gamescommon/resources/b;->h:[Lcom/etermax/gamescommon/resources/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/etermax/gamescommon/resources/b;->f:Ljava/lang/String;

    .line 46
    iput p4, p0, Lcom/etermax/gamescommon/resources/b;->g:I

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/resources/b;
    .locals 1
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/etermax/gamescommon/resources/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/resources/b;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/resources/b;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/etermax/gamescommon/resources/b;->h:[Lcom/etermax/gamescommon/resources/b;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/resources/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/resources/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/resources/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/etermax/gamescommon/resources/b;->g:I

    return v0
.end method
