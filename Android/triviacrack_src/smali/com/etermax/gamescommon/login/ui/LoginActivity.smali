.class public Lcom/etermax/gamescommon/login/ui/LoginActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/login/ui/e;
.implements Lcom/etermax/gamescommon/login/ui/h;
.implements Lcom/etermax/gamescommon/login/ui/m;
.implements Lcom/etermax/gamescommon/login/ui/o;


# static fields
.field private static f:Ljava/lang/String;


# instance fields
.field protected a:Lcom/etermax/tools/social/a/b;

.field protected b:Lcom/etermax/gamescommon/b;

.field protected c:Lcom/etermax/tools/f/a;

.field protected d:Lcom/etermax/gamescommon/login/datasource/a;

.field protected e:Lcom/etermax/gamescommon/social/a;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/gamescommon/login/ui/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/b/l;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity;->c:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 167
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity;->g:Z

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity;->g:Z

    .line 110
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity;->e:Lcom/etermax/gamescommon/social/a;

    new-instance v1, Lcom/etermax/gamescommon/login/ui/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/LoginActivity$1;-><init>(Lcom/etermax/gamescommon/login/ui/LoginActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/etermax/gamescommon/login/ui/a;->a()Lcom/etermax/gamescommon/login/ui/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;
    .locals 3
    .parameter

    .prologue
    .line 160
    sget v0, Lcom/etermax/o;->dialog_create_account:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/q;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 89
    return-void
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->setResult(I)V

    .line 100
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->f()V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->finish()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/etermax/gamescommon/login/ui/g;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 55
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 95
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/etermax/gamescommon/login/ui/d;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 76
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    sput-object p1, Lcom/etermax/gamescommon/login/ui/LoginActivity;->f:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity;->b:Lcom/etermax/gamescommon/b;

    sget-object v1, Lcom/etermax/gamescommon/login/ui/LoginActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    new-instance v0, Lcom/etermax/gamescommon/b/m;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/m;-><init>()V

    .line 68
    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->a(Lcom/etermax/gamescommon/b/l;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/etermax/gamescommon/login/ui/n;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 61
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 156
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity;->a:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 157
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->a_()V

    .line 146
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStart()V

    .line 137
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->a(Landroid/content/Context;)V

    .line 138
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStop()V

    .line 150
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->b(Landroid/content/Context;)V

    .line 151
    return-void
.end method
