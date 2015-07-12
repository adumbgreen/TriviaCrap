.class public Lcom/etermax/gamescommon/menu/a/a/e;
.super Lcom/etermax/gamescommon/menu/a/a/a;
.source "SourceFile"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/menu/a/o;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    sget-object v0, Lcom/etermax/gamescommon/menu/a/a/g;->e:Lcom/etermax/gamescommon/menu/a/a/g;

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/menu/a/a/a;-><init>(Lcom/etermax/gamescommon/menu/a/a/g;Lcom/etermax/gamescommon/menu/a/o;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    invoke-static {p1}, Lcom/etermax/gamescommon/menu/a/b/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/b/g;

    move-result-object p2

    .line 27
    :goto_0
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/a/e;->c:Z

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/a/b/g;->c()V

    .line 32
    :goto_1
    return-object p2

    .line 25
    :cond_0
    check-cast p2, Lcom/etermax/gamescommon/menu/a/b/g;

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/a/b/g;->b()V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/etermax/gamescommon/menu/a/a/e;->c:Z

    .line 41
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/a/e;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/menu/a/a/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 60
    goto :goto_0

    .line 62
    :cond_3
    check-cast p1, Lcom/etermax/gamescommon/menu/a/a/e;

    .line 63
    iget-boolean v2, p0, Lcom/etermax/gamescommon/menu/a/a/e;->c:Z

    iget-boolean v3, p1, Lcom/etermax/gamescommon/menu/a/a/e;->c:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 45
    .line 46
    invoke-super {p0}, Lcom/etermax/gamescommon/menu/a/a/a;->hashCode()I

    move-result v0

    .line 47
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/a/e;->c:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    .line 48
    return v0

    .line 47
    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method
