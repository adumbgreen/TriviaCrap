.class Lcom/etermax/gamescommon/i/b/a$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/b/a;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/a$9;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$9;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->k(Lcom/etermax/gamescommon/i/b/a;)Lcom/etermax/tools/widget/CustomFontTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$9;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->i(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$9;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->i(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$9;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->i(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 296
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$9;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-boolean v0, v0, Lcom/etermax/gamescommon/i/b/a;->j:Z

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$9;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->j(Lcom/etermax/gamescommon/i/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$9;->a:Lcom/etermax/gamescommon/i/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/i/b/a;Z)Z

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$9;->a:Lcom/etermax/gamescommon/i/b/a;

    iput-boolean v2, v0, Lcom/etermax/gamescommon/i/b/a;->j:Z

    .line 302
    :cond_1
    return-void
.end method
