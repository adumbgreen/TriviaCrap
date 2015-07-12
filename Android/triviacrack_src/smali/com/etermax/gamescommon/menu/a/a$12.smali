.class Lcom/etermax/gamescommon/menu/a/a$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a/a;->l()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/a$12;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$12;->a:Lcom/etermax/gamescommon/menu/a/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a/a;->e:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$12;->a:Lcom/etermax/gamescommon/menu/a/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a/a;->g:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/d;->k()V

    .line 266
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$12;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a;->b()V

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$12;->a:Lcom/etermax/gamescommon/menu/a/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a/a;->e:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$12;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a;->g()V

    goto :goto_0
.end method
