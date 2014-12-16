.class public abstract Lcom/etermax/tools/navigation/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/navigation/c;
.implements Lcom/etermax/tools/navigation/f;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field y:Lcom/etermax/tools/navigation/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/d;->d()V

    .line 268
    return-void
.end method

.method protected abstract a()Landroid/support/v4/app/Fragment;
.end method

.method protected a(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 160
    return-void
.end method

.method protected a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 183
    iget v1, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 184
    if-eqz p4, :cond_0

    .line 185
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 187
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 188
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 192
    iget v1, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 193
    if-eqz p3, :cond_0

    .line 194
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 197
    return-void
.end method

.method protected a(Landroid/support/v4/app/Fragment;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 164
    iget v1, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 165
    if-eqz p2, :cond_0

    .line 166
    const-string v1, "stack"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 168
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 169
    return-void
.end method

.method protected a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 173
    iget v1, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a:I

    invoke-virtual {v0, v1, p1, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 174
    if-eqz p2, :cond_0

    .line 175
    const-string v1, "stack"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 177
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 178
    return-void
.end method

.method public a(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0, p1, p2}, Lcom/etermax/tools/navigation/d;->a(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V

    .line 228
    return-void
.end method

.method protected b(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 202
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 203
    return-void
.end method

.method public b(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0, p1, p2}, Lcom/etermax/tools/navigation/d;->b(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V

    .line 233
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/d;->b()V

    .line 218
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/d;->a()V

    .line 71
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onAttachedToWindow()V

    .line 72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->setVolumeControlStream(I)V

    .line 42
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->s()V

    .line 44
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->t()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->u()V

    .line 49
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 95
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 97
    sget v1, Lcom/etermax/l;->debug_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 136
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const/16 v1, 0x19

    if-ne p1, v1, :cond_0

    .line 138
    iput-boolean v0, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->b:Z

    .line 139
    iget-boolean v1, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->c:Z

    if-eqz v1, :cond_1

    .line 140
    invoke-static {p0}, Lcom/etermax/tools/bugcatcher/a;->a(Landroid/app/Activity;)V

    .line 151
    :goto_0
    return v0

    .line 143
    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 144
    iput-boolean v0, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->c:Z

    .line 145
    iget-boolean v1, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->b:Z

    if-eqz v1, :cond_1

    .line 146
    invoke-static {p0}, Lcom/etermax/tools/bugcatcher/a;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 123
    iput-boolean v1, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->b:Z

    .line 129
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0, p1, p2}, Lcom/etermax/tools/navigation/d;->a(ILandroid/view/KeyEvent;)V

    .line 131
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 124
    :cond_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 125
    iput-boolean v1, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->c:Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 106
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/etermax/i;->debug:I

    if-ne v0, v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    instance-of v1, v0, Lcom/etermax/tools/navigation/a;

    if-eqz v1, :cond_0

    .line 111
    check-cast v0, Lcom/etermax/tools/navigation/a;

    invoke-interface {v0, p0}, Lcom/etermax/tools/navigation/a;->a(Lcom/etermax/tools/navigation/BaseFragmentActivity;)V

    .line 113
    :cond_0
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/d;->b()V

    .line 91
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    instance-of v1, v0, Lcom/etermax/tools/social/a/d;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Lcom/etermax/tools/social/a/d;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/d;->o()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {p0, v0}, Lcom/facebook/Settings;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    const-string v1, "BaseFragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trackeo de Facebook Install: APPID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected s()V
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/etermax/k;->base_activity_layout:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->setContentView(I)V

    .line 53
    return-void
.end method

.method protected t()V
    .locals 4

    .prologue
    .line 56
    sget v0, Lcom/etermax/i;->mainContent:I

    iput v0, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a:I

    .line 58
    new-instance v3, Lcom/etermax/tools/navigation/d;

    sget v0, Lcom/etermax/i;->drawerLayout:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    sget v1, Lcom/etermax/i;->leftPanel:I

    invoke-virtual {p0, v1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    sget v2, Lcom/etermax/i;->rightPanel:I

    invoke-virtual {p0, v2}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0, v1, v2}, Lcom/etermax/tools/navigation/d;-><init>(Landroid/support/v4/widget/DrawerLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    iput-object v3, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y:Lcom/etermax/tools/navigation/d;

    .line 60
    return-void
.end method

.method protected u()V
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "main_tag"

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 64
    return-void
.end method

.method protected v()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected w()V
    .locals 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "stack"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 209
    return-void
.end method

.method public x()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/d;->f()V

    .line 223
    return-void
.end method

.method public y()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/d;->g()V

    .line 238
    return-void
.end method

.method public z()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/d;->c()V

    .line 263
    return-void
.end method
