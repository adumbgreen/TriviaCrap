.class public Lcom/etermax/gamescommon/menu/navigation/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/etermax/gamescommon/menu/navigation/e;

.field private d:Lcom/etermax/gamescommon/menu/navigation/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/gamescommon/menu/navigation/e;Lcom/etermax/gamescommon/menu/navigation/d;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/etermax/gamescommon/menu/navigation/c;->c:Lcom/etermax/gamescommon/menu/navigation/e;

    .line 19
    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/navigation/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/navigation/e;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/c;->a:Ljava/lang/String;

    .line 27
    :goto_0
    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/navigation/e;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/navigation/e;->d()I

    move-result v0

    iput v0, p0, Lcom/etermax/gamescommon/menu/navigation/c;->b:I

    .line 35
    :cond_0
    :goto_1
    iput-object p3, p0, Lcom/etermax/gamescommon/menu/navigation/c;->d:Lcom/etermax/gamescommon/menu/navigation/d;

    .line 36
    return-void

    .line 21
    :cond_1
    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/navigation/e;->b()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/f;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/navigation/e;->b()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/f;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/c;->a:Ljava/lang/String;

    goto :goto_0

    .line 24
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Falta configurar el t\u00edtulo para el item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/navigation/e;->b()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/menu/navigation/f;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_3
    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/navigation/e;->b()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/f;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30
    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/navigation/e;->b()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/f;->b()I

    move-result v0

    iput v0, p0, Lcom/etermax/gamescommon/menu/navigation/c;->b:I

    goto :goto_1

    .line 31
    :cond_4
    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/navigation/e;->b()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->k:Lcom/etermax/gamescommon/menu/navigation/f;

    if-eq v0, v1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Falta configurar el \u00edcono para el item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/navigation/e;->b()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/menu/navigation/f;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/etermax/gamescommon/menu/navigation/c;->b:I

    return v0
.end method

.method public c()Lcom/etermax/gamescommon/menu/navigation/f;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/c;->c:Lcom/etermax/gamescommon/menu/navigation/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/e;->b()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/c;->d:Lcom/etermax/gamescommon/menu/navigation/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/c;->d:Lcom/etermax/gamescommon/menu/navigation/d;

    invoke-interface {v0, p0}, Lcom/etermax/gamescommon/menu/navigation/d;->b(Lcom/etermax/gamescommon/menu/navigation/c;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/c;->d:Lcom/etermax/gamescommon/menu/navigation/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/c;->d:Lcom/etermax/gamescommon/menu/navigation/d;

    invoke-interface {v0, p0}, Lcom/etermax/gamescommon/menu/navigation/d;->a(Lcom/etermax/gamescommon/menu/navigation/c;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/c;->c:Lcom/etermax/gamescommon/menu/navigation/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/etermax/gamescommon/menu/navigation/e;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/c;->c:Lcom/etermax/gamescommon/menu/navigation/e;

    return-object v0
.end method
