.class Lcom/etermax/gamescommon/i/b/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 273
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/a$8;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a$8;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$8;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->i(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/i/b/d;->a()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    move-result-object v0

    iput-object v0, v1, Lcom/etermax/gamescommon/i/b/a;->h:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    .line 277
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$8;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-boolean v0, v0, Lcom/etermax/gamescommon/i/b/a;->j:Z

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$8;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->j(Lcom/etermax/gamescommon/i/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$8;->a:Lcom/etermax/gamescommon/i/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/i/b/a;Z)Z

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$8;->a:Lcom/etermax/gamescommon/i/b/a;

    iput-boolean v2, v0, Lcom/etermax/gamescommon/i/b/a;->j:Z

    .line 282
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 285
    return-void
.end method
