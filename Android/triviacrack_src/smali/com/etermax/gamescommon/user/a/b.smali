.class public Lcom/etermax/gamescommon/user/a/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field private a:Lcom/etermax/gamescommon/user/a/c;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/etermax/gamescommon/user/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/etermax/gamescommon/user/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/etermax/gamescommon/dashboard/b;

.field private f:Lcom/etermax/gamescommon/profile/ui/d;

.field private g:Lcom/etermax/gamescommon/user/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->b:Ljava/util/Map;

    .line 78
    iput-object p1, p0, Lcom/etermax/gamescommon/user/a/b;->d:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->e:Lcom/etermax/gamescommon/dashboard/b;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/user/a/b;)Lcom/etermax/gamescommon/profile/ui/d;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->f:Lcom/etermax/gamescommon/profile/ui/d;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/user/a/b;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/etermax/gamescommon/user/a/b;->b:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/etermax/gamescommon/user/a/b;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/gamescommon/user/a/b;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/etermax/gamescommon/user/a/b;->c:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic c(Lcom/etermax/gamescommon/user/a/b;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/profile/ui/d;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/etermax/gamescommon/user/a/b;->f:Lcom/etermax/gamescommon/profile/ui/d;

    .line 153
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/etermax/gamescommon/j;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 160
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->c:Ljava/util/Map;

    .line 166
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/j;

    .line 167
    iget-object v2, p0, Lcom/etermax/gamescommon/user/a/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Lcom/etermax/gamescommon/j;->getId()Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/etermax/gamescommon/user/a/e;

    invoke-direct {v4, v0, v5, v5}, Lcom/etermax/gamescommon/user/a/e;-><init>(Lcom/etermax/gamescommon/j;IZ)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/a/b;->notifyDataSetChanged()V

    .line 170
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->a:Lcom/etermax/gamescommon/user/a/c;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/etermax/gamescommon/user/a/c;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/user/a/c;-><init>(Lcom/etermax/gamescommon/user/a/b;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->a:Lcom/etermax/gamescommon/user/a/c;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->a:Lcom/etermax/gamescommon/user/a/c;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/etermax/gamescommon/user/a/b;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 102
    const-wide/16 v0, 0x0

    .line 104
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/user/a/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/a/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/e;->b()Lcom/etermax/gamescommon/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/j;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return v1

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/user/a/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/a/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/e;->b()Lcom/etermax/gamescommon/j;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Lcom/etermax/gamescommon/j;->getId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/etermax/gamescommon/j;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 123
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/user/a/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/a/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/e;->b()Lcom/etermax/gamescommon/j;

    move-result-object v1

    .line 124
    if-nez p2, :cond_3

    .line 125
    invoke-interface {v1}, Lcom/etermax/gamescommon/j;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lcom/etermax/gamescommon/j;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/etermax/gamescommon/user/a/b;->e:Lcom/etermax/gamescommon/dashboard/b;

    invoke-static {v0, v2, p0, v1}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Landroid/content/Context;Lcom/etermax/gamescommon/dashboard/b;Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)Lcom/etermax/gamescommon/user/UserInfoAvatarView;

    move-result-object p2

    move-object v1, p2

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->f:Lcom/etermax/gamescommon/profile/ui/d;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 136
    check-cast v0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;

    new-instance v2, Lcom/etermax/gamescommon/user/a/b$1;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/user/a/b$1;-><init>(Lcom/etermax/gamescommon/user/a/b;)V

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->setInviteCallback(Lcom/etermax/gamescommon/user/b;)V

    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/user/a/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/a/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->g:Lcom/etermax/gamescommon/user/a/d;

    if-eqz v0, :cond_1

    .line 146
    iget-object v2, p0, Lcom/etermax/gamescommon/user/a/b;->g:Lcom/etermax/gamescommon/user/a/d;

    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/user/a/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/a/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/e;->c()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/etermax/gamescommon/user/a/d;->a(I)V

    .line 148
    :cond_1
    return-object v1

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/view/InviteFacebookButton;

    move-result-object p2

    move-object v1, p2

    goto :goto_0

    .line 131
    :cond_3
    invoke-interface {v1}, Lcom/etermax/gamescommon/j;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Lcom/etermax/gamescommon/j;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    move-object v0, p2

    .line 132
    check-cast v0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;

    invoke-virtual {v0, p0, v1}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V

    :cond_4
    move-object v1, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x2

    return v0
.end method
