.class public abstract Lcom/etermax/gamescommon/menu/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/gamescommon/menu/a/a/g;

.field protected b:Lcom/etermax/gamescommon/menu/a/o;


# direct methods
.method protected constructor <init>(Lcom/etermax/gamescommon/menu/a/a/g;Lcom/etermax/gamescommon/menu/a/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/a/a;->a:Lcom/etermax/gamescommon/menu/a/a/g;

    .line 16
    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a/a/a;->b:Lcom/etermax/gamescommon/menu/a/o;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;
.end method

.method public a()Lcom/etermax/gamescommon/menu/a/a/g;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a/a;->a:Lcom/etermax/gamescommon/menu/a/a/g;

    return-object v0
.end method

.method public b()Lcom/etermax/gamescommon/menu/a/o;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a/a;->b:Lcom/etermax/gamescommon/menu/a/o;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    check-cast p1, Lcom/etermax/gamescommon/menu/a/a/a;

    .line 58
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/a/a;->b:Lcom/etermax/gamescommon/menu/a/o;

    iget-object v3, p1, Lcom/etermax/gamescommon/menu/a/a/a;->b:Lcom/etermax/gamescommon/menu/a/o;

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_4
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/a/a;->a:Lcom/etermax/gamescommon/menu/a/a/g;

    iget-object v3, p1, Lcom/etermax/gamescommon/menu/a/a/a;->a:Lcom/etermax/gamescommon/menu/a/a/g;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 39
    .line 41
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a/a;->b:Lcom/etermax/gamescommon/menu/a/o;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 42
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/a/a;->a:Lcom/etermax/gamescommon/menu/a/a/g;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 43
    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a/a;->b:Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/o;->hashCode()I

    move-result v0

    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a/a;->a:Lcom/etermax/gamescommon/menu/a/a/g;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/menu/a/a/g;->hashCode()I

    move-result v1

    goto :goto_1
.end method
