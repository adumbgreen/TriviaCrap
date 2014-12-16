.class Lcom/etermax/gamescommon/profile/ui/e$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/e$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/e$1;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/e$1;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/e$1$1;->a:Lcom/etermax/gamescommon/profile/ui/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 92
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/e$1$1;->a:Lcom/etermax/gamescommon/profile/ui/e$1;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/e$1;->b:Lcom/etermax/gamescommon/profile/ui/e;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/e$1$1;->a:Lcom/etermax/gamescommon/profile/ui/e$1;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/e$1;->b:Lcom/etermax/gamescommon/profile/ui/e;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/e;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/e$1$1;->a:Lcom/etermax/gamescommon/profile/ui/e$1;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/e$1;->b:Lcom/etermax/gamescommon/profile/ui/e;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/e;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    return-void
.end method
