.class Lcom/etermax/gamescommon/login/ui/LoginActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/LoginActivity;->f()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity$1;->a:Lcom/etermax/gamescommon/login/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity$1;->a:Lcom/etermax/gamescommon/login/ui/LoginActivity;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/ui/LoginActivity;->e:Lcom/etermax/gamescommon/social/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity$1;->a:Lcom/etermax/gamescommon/login/ui/LoginActivity;

    const-string v2, "login"

    new-instance v3, Lcom/etermax/gamescommon/login/ui/LoginActivity$1$1;

    invoke-direct {v3, p0}, Lcom/etermax/gamescommon/login/ui/LoginActivity$1$1;-><init>(Lcom/etermax/gamescommon/login/ui/LoginActivity$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/etermax/gamescommon/social/d;)V

    .line 119
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity$1;->a:Lcom/etermax/gamescommon/login/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->finish()V

    .line 123
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity$1;->a:Lcom/etermax/gamescommon/login/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->finish()V

    .line 127
    return-void
.end method
