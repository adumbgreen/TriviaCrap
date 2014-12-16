.class Lcom/etermax/gamescommon/social/a$1;
.super Lcom/etermax/gamescommon/j/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/social/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/j/c",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/FragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/social/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/social/a;Ljava/lang/String;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/etermax/gamescommon/social/a$1;->a:Lcom/etermax/gamescommon/social/a;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/etermax/gamescommon/j/c;-><init>(Ljava/lang/String;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/j/c;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 109
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/c;->a()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/social/a$1;->a:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/a;->c()V

    .line 113
    return-void
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/tools/social/a/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/c;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/tools/social/a/b;)V

    .line 118
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/c;->b()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/social/a$1;->a:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/a;->c()V

    .line 122
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/j/c;->a(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/c;->b()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/social/a$1;->a:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/a;->c()V

    .line 140
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/etermax/gamescommon/j/c;->b()V

    .line 127
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/c;->a()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/social/a$1;->a:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/a;->c()V

    .line 131
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/etermax/gamescommon/j/c;->e()V

    .line 145
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/c;->c()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/social/a$1;->a:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/a;->c()V

    .line 149
    return-void
.end method
