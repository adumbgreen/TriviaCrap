.class Lcom/etermax/tools/navigation/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/navigation/d;->e()Landroid/support/v4/widget/DrawerLayout$DrawerListener;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/navigation/d;


# direct methods
.method constructor <init>(Lcom/etermax/tools/navigation/d;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->f(Lcom/etermax/tools/navigation/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0, v1, v1}, Lcom/etermax/tools/navigation/d;->a(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->g(Lcom/etermax/tools/navigation/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0, v1, v1}, Lcom/etermax/tools/navigation/d;->b(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->a(Lcom/etermax/tools/navigation/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->b(Lcom/etermax/tools/navigation/d;)Lcom/etermax/tools/navigation/e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->b(Lcom/etermax/tools/navigation/d;)Lcom/etermax/tools/navigation/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/tools/navigation/e;->h()V

    .line 130
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->d(Lcom/etermax/tools/navigation/d;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 131
    if-eqz v0, :cond_3

    .line 132
    iget-object v1, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v1}, Lcom/etermax/tools/navigation/d;->d(Lcom/etermax/tools/navigation/d;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 134
    :cond_3
    return-void

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->c(Lcom/etermax/tools/navigation/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->e(Lcom/etermax/tools/navigation/d;)Lcom/etermax/tools/navigation/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->e(Lcom/etermax/tools/navigation/d;)Lcom/etermax/tools/navigation/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/tools/navigation/e;->h()V

    goto :goto_0
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 92
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->a(Lcom/etermax/tools/navigation/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->b(Lcom/etermax/tools/navigation/d;)Lcom/etermax/tools/navigation/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->b(Lcom/etermax/tools/navigation/d;)Lcom/etermax/tools/navigation/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/tools/navigation/e;->i()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->d(Lcom/etermax/tools/navigation/d;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v1}, Lcom/etermax/tools/navigation/d;->c(Lcom/etermax/tools/navigation/d;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(ILandroid/view/View;)V

    .line 108
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->d(Lcom/etermax/tools/navigation/d;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 109
    if-eqz v0, :cond_2

    .line 110
    iget-object v1, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v1}, Lcom/etermax/tools/navigation/d;->d(Lcom/etermax/tools/navigation/d;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 112
    :cond_2
    return-void

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->c(Lcom/etermax/tools/navigation/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->e(Lcom/etermax/tools/navigation/d;)Lcom/etermax/tools/navigation/e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->e(Lcom/etermax/tools/navigation/d;)Lcom/etermax/tools/navigation/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/tools/navigation/e;->i()V

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v0}, Lcom/etermax/tools/navigation/d;->d(Lcom/etermax/tools/navigation/d;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/navigation/d$1;->a:Lcom/etermax/tools/navigation/d;

    invoke-static {v1}, Lcom/etermax/tools/navigation/d;->a(Lcom/etermax/tools/navigation/d;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 83
    return-void
.end method
