.class Lcom/etermax/gamescommon/profile/image/a$4;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/image/a;->d()V
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
    .line 224
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/image/a$4;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$4;->a:Lcom/etermax/gamescommon/profile/image/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/image/a;->a:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/e;->k()V

    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 235
    return-void
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$4;->a:Lcom/etermax/gamescommon/profile/image/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/image/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->e(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$4;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/image/a;->a(Lcom/etermax/gamescommon/profile/image/a;)V

    .line 242
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/profile/image/a$4;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    check-cast p1, Landroid/support/v4/app/Fragment;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/profile/image/a$4;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V

    return-void
.end method
