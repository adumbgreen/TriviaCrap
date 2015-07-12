.class public Lcom/etermax/gamescommon/menu/a/a/b;
.super Lcom/etermax/gamescommon/menu/a/a/a;
.source "SourceFile"


# instance fields
.field protected c:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

.field protected d:Lcom/etermax/gamescommon/dashboard/b;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/menu/a/o;Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    sget-object v0, Lcom/etermax/gamescommon/menu/a/a/g;->a:Lcom/etermax/gamescommon/menu/a/a/g;

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/menu/a/a/a;-><init>(Lcom/etermax/gamescommon/menu/a/a/g;Lcom/etermax/gamescommon/menu/a/o;)V

    .line 20
    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a/a/b;->c:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    .line 21
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/a/b;->d:Lcom/etermax/gamescommon/dashboard/b;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    invoke-static {p1}, Lcom/etermax/gamescommon/menu/a/b/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/b/a;

    move-result-object p2

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a/b;->c:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    invoke-virtual {p2, v0}, Lcom/etermax/gamescommon/menu/a/b/a;->a(Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;)V

    .line 41
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a/b;->d:Lcom/etermax/gamescommon/dashboard/b;

    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/a/b/a;->getUserIcon()Landroid/widget/ViewSwitcher;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/a/b;->c:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 42
    return-object p2

    .line 38
    :cond_0
    check-cast p2, Lcom/etermax/gamescommon/menu/a/b/a;

    goto :goto_0
.end method

.method public c()Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a/b;->c:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/menu/a/a/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_3
    check-cast p1, Lcom/etermax/gamescommon/menu/a/a/b;

    .line 57
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/a/b;->c:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    if-nez v2, :cond_4

    .line 58
    iget-object v2, p1, Lcom/etermax/gamescommon/menu/a/a/b;->c:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    if-eqz v2, :cond_0

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_4
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/a/b;->c:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p1, Lcom/etermax/gamescommon/menu/a/a/b;->c:Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 62
    goto :goto_0
.end method
