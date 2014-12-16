.class public Lcom/etermax/gamescommon/menu/navigation/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/gamescommon/menu/navigation/f;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/menu/navigation/f;IILjava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;IILjava/lang/String;Z)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/etermax/gamescommon/menu/navigation/f;ILjava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;IILjava/lang/String;Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/etermax/gamescommon/menu/navigation/e;->b:I

    .line 9
    iput v0, p0, Lcom/etermax/gamescommon/menu/navigation/e;->c:I

    .line 31
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/navigation/e;->a:Lcom/etermax/gamescommon/menu/navigation/f;

    .line 32
    iput-boolean p6, p0, Lcom/etermax/gamescommon/menu/navigation/e;->d:Z

    .line 33
    iput p3, p0, Lcom/etermax/gamescommon/menu/navigation/e;->b:I

    .line 34
    iput p4, p0, Lcom/etermax/gamescommon/menu/navigation/e;->c:I

    .line 35
    iput-object p2, p0, Lcom/etermax/gamescommon/menu/navigation/e;->e:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/etermax/gamescommon/menu/navigation/e;->f:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;ILjava/lang/String;Z)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/etermax/gamescommon/menu/navigation/f;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;ILjava/lang/String;Z)V

    .line 16
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/etermax/gamescommon/menu/navigation/f;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/e;->a:Lcom/etermax/gamescommon/menu/navigation/f;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/etermax/gamescommon/menu/navigation/e;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/etermax/gamescommon/menu/navigation/e;->c:I

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/etermax/gamescommon/menu/navigation/e;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/etermax/gamescommon/menu/navigation/e;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/e;->f:Ljava/lang/String;

    return-object v0
.end method
