.class public Lcom/etermax/tools/navigation/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/widget/DrawerLayout;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/FrameLayout;

.field private d:Z

.field private e:Z

.field private f:Lcom/etermax/tools/navigation/e;

.field private g:Lcom/etermax/tools/navigation/e;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/etermax/tools/navigation/d;->d:Z

    .line 19
    iput-boolean v0, p0, Lcom/etermax/tools/navigation/d;->e:Z

    .line 25
    iput-object p1, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    .line 26
    iput-object p2, p0, Lcom/etermax/tools/navigation/d;->b:Landroid/widget/FrameLayout;

    .line 27
    iput-object p3, p0, Lcom/etermax/tools/navigation/d;->c:Landroid/widget/FrameLayout;

    .line 29
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p0}, Lcom/etermax/tools/navigation/d;->e()Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/navigation/d;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/tools/navigation/d;)Lcom/etermax/tools/navigation/e;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->g:Lcom/etermax/tools/navigation/e;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/tools/navigation/d;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/tools/navigation/d;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/tools/navigation/d;)Lcom/etermax/tools/navigation/e;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->f:Lcom/etermax/tools/navigation/e;

    return-object v0
.end method

.method static synthetic f(Lcom/etermax/tools/navigation/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/etermax/tools/navigation/d;->d:Z

    return v0
.end method

.method static synthetic g(Lcom/etermax/tools/navigation/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/etermax/tools/navigation/d;->e:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/etermax/tools/navigation/d;->d:Z

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/d;->h()V

    .line 43
    :cond_0
    iget-boolean v0, p0, Lcom/etermax/tools/navigation/d;->e:Z

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/d;->i()V

    .line 46
    :cond_1
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/etermax/tools/navigation/d;->d:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/d;->c()V

    .line 76
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 142
    :cond_0
    if-eqz p2, :cond_1

    .line 143
    iput-object p2, p0, Lcom/etermax/tools/navigation/d;->g:Lcom/etermax/tools/navigation/e;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/etermax/tools/navigation/d;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(ILandroid/view/View;)V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/navigation/d;->d:Z

    .line 147
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 50
    return-void
.end method

.method public b(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 153
    :cond_0
    if-eqz p2, :cond_1

    .line 154
    iput-object p2, p0, Lcom/etermax/tools/navigation/d;->f:Lcom/etermax/tools/navigation/e;

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/etermax/tools/navigation/d;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(ILandroid/view/View;)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/navigation/d;->e:Z

    .line 158
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x3

    .line 53
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x5

    .line 63
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method

.method public e()Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/etermax/tools/navigation/d$1;

    invoke-direct {v0, p0}, Lcom/etermax/tools/navigation/d$1;-><init>(Lcom/etermax/tools/navigation/d;)V

    return-object v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 162
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 166
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 170
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/etermax/tools/navigation/d;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 174
    return-void
.end method
