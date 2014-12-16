.class Lcom/etermax/gamescommon/profile/image/a$3;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/image/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/Fragment;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/image/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/image/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/image/a$3;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$3;->a:Lcom/etermax/gamescommon/profile/image/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/image/a;->a:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/e;->k()V

    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 209
    return-void
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$3;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/image/a;->b(Lcom/etermax/gamescommon/profile/image/a;)Lcom/etermax/gamescommon/profile/image/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$3;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/image/a;->b(Lcom/etermax/gamescommon/profile/image/a;)Lcom/etermax/gamescommon/profile/image/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/image/c;->a()V

    .line 217
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/profile/image/a$3;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    check-cast p1, Landroid/support/v4/app/Fragment;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/profile/image/a$3;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V

    return-void
.end method
