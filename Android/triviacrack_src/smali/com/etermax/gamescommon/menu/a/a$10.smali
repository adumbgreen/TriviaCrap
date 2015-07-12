.class Lcom/etermax/gamescommon/menu/a/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/menu/a/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/a$10;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 182
    instance-of v0, p2, Lcom/etermax/gamescommon/menu/a/b/i;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 183
    check-cast v0, Lcom/etermax/gamescommon/menu/a/b/i;

    .line 184
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/b/i;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a$10;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/a;->a(Lcom/etermax/gamescommon/menu/a/a;)Lcom/etermax/gamescommon/menu/a/l;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/etermax/gamescommon/menu/a/l;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/menu/a/a/a;

    .line 186
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/a$10;->a:Lcom/etermax/gamescommon/menu/a/a;

    iget-object v2, v2, Lcom/etermax/gamescommon/menu/a/a;->i:Lcom/etermax/gamescommon/menu/a/m;

    invoke-virtual {v2, v1, p2}, Lcom/etermax/gamescommon/menu/a/m;->a(Lcom/etermax/gamescommon/menu/a/a/a;Landroid/view/View;)V

    .line 187
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a$10;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/a;->i(Lcom/etermax/gamescommon/menu/a/a;)Lcom/etermax/gamescommon/menu/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/b/i;->a(Lcom/etermax/gamescommon/menu/a/c;)V

    .line 191
    :goto_0
    const/4 v0, 0x1

    .line 193
    :goto_1
    return v0

    .line 189
    :cond_0
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/b/i;->c()V

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
