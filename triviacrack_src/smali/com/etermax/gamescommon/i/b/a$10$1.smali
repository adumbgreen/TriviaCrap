.class Lcom/etermax/gamescommon/i/b/a$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/widget/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/b/a$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/widget/c",
        "<",
        "Lcom/etermax/gamescommon/i/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/a$10;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/a$10;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/a$10$1;->a:Lcom/etermax/gamescommon/i/b/a$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/i/b/c;)V
    .locals 2
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$10$1;->a:Lcom/etermax/gamescommon/i/b/a$10;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a$10;->b:Lcom/etermax/gamescommon/i/b/a;

    iget-object v1, p1, Lcom/etermax/gamescommon/i/b/c;->a:Lcom/etermax/tools/nationality/Nationality;

    iput-object v1, v0, Lcom/etermax/gamescommon/i/b/a;->i:Lcom/etermax/tools/nationality/Nationality;

    .line 326
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$10$1;->a:Lcom/etermax/gamescommon/i/b/a$10;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a$10;->b:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->l(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/etermax/gamescommon/i/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$10$1;->a:Lcom/etermax/gamescommon/i/b/a$10;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a$10;->b:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->j(Lcom/etermax/gamescommon/i/b/a;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$10$1;->a:Lcom/etermax/gamescommon/i/b/a$10;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a$10;->b:Lcom/etermax/gamescommon/i/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/i/b/a;Z)Z

    .line 329
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    check-cast p1, Lcom/etermax/gamescommon/i/b/c;

    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/i/b/a$10$1;->a(Lcom/etermax/gamescommon/i/b/c;)V

    return-void
.end method
