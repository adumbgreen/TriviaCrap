.class public Lcom/etermax/gamescommon/menu/a/a/d;
.super Lcom/etermax/gamescommon/menu/a/a/a;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/menu/a/o;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    sget-object v0, Lcom/etermax/gamescommon/menu/a/a/g;->f:Lcom/etermax/gamescommon/menu/a/a/g;

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/menu/a/a/a;-><init>(Lcom/etermax/gamescommon/menu/a/a/g;Lcom/etermax/gamescommon/menu/a/o;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    invoke-static {p1}, Lcom/etermax/gamescommon/menu/a/b/f;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/b/e;

    move-result-object p2

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/etermax/gamescommon/menu/a/b/e;->setMessage(Ljava/lang/String;)V

    .line 44
    :cond_0
    :goto_1
    return-object p2

    .line 37
    :cond_1
    check-cast p2, Lcom/etermax/gamescommon/menu/a/b/e;

    goto :goto_0

    .line 41
    :cond_2
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a/d;->d:I

    if-lez v0, :cond_0

    .line 42
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/a/d;->d:I

    invoke-virtual {p2, v0}, Lcom/etermax/gamescommon/menu/a/b/e;->setMessage(I)V

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    if-ne p0, p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/menu/a/a/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 56
    goto :goto_0

    .line 58
    :cond_3
    check-cast p1, Lcom/etermax/gamescommon/menu/a/a/d;

    .line 59
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/a/d;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 60
    iget-object v2, p1, Lcom/etermax/gamescommon/menu/a/a/d;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 61
    goto :goto_0

    .line 63
    :cond_4
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/a/d;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/etermax/gamescommon/menu/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 64
    goto :goto_0

    .line 66
    :cond_5
    iget v2, p0, Lcom/etermax/gamescommon/menu/a/a/d;->d:I

    iget v3, p1, Lcom/etermax/gamescommon/menu/a/a/d;->d:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 67
    goto :goto_0
.end method
