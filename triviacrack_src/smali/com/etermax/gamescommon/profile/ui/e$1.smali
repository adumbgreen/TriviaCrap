.class Lcom/etermax/gamescommon/profile/ui/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/e;->a()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/gamescommon/profile/ui/e;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/e;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/e$1;->b:Lcom/etermax/gamescommon/profile/ui/e;

    iput-object p2, p0, Lcom/etermax/gamescommon/profile/ui/e$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/e$1;->b:Lcom/etermax/gamescommon/profile/ui/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/e$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/aa;->a(Ljava/lang/String;)Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ak;->b()Lcom/b/a/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/e$1;->b:Lcom/etermax/gamescommon/profile/ui/e;

    iget-object v1, v1, Lcom/etermax/gamescommon/profile/ui/e;->c:Landroid/widget/ImageView;

    new-instance v2, Lcom/etermax/gamescommon/profile/ui/e$1$1;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/profile/ui/e$1$1;-><init>(Lcom/etermax/gamescommon/profile/ui/e$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/b/a/ak;->a(Landroid/widget/ImageView;Lcom/b/a/f;)V

    .line 101
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/e$1;->b:Lcom/etermax/gamescommon/profile/ui/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/ui/e;->dismiss()V

    .line 106
    return-void
.end method
