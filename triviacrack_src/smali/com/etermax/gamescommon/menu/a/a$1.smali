.class Lcom/etermax/gamescommon/menu/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 135
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/a$1;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 139
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$1;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/a;->a(Lcom/etermax/gamescommon/menu/a/a;)Lcom/etermax/gamescommon/menu/a/l;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/etermax/gamescommon/menu/a/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/menu/a/a/a;

    .line 141
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a$1;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v1, v0}, Lcom/etermax/gamescommon/menu/a/a;->a(Lcom/etermax/gamescommon/menu/a/a;Lcom/etermax/gamescommon/menu/a/a/a;)V

    .line 143
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/a$1;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/a;->b(Lcom/etermax/gamescommon/menu/a/a;)Lcom/etermax/gamescommon/menu/a/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/menu/a/b;->a(Lcom/etermax/gamescommon/menu/a/a/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    sget-object v1, Lcom/etermax/gamescommon/menu/a/a$9;->b:[I

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a/a;->a()Lcom/etermax/gamescommon/menu/a/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/menu/a/a/g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    check-cast v0, Lcom/etermax/gamescommon/menu/a/a/e;

    .line 151
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a/e;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/a/e;->a(Z)V

    .line 153
    instance-of v1, p2, Lcom/etermax/gamescommon/menu/a/b/g;

    if-eqz v1, :cond_2

    .line 154
    check-cast p2, Lcom/etermax/gamescommon/menu/a/b/g;

    invoke-virtual {p2}, Lcom/etermax/gamescommon/menu/a/b/g;->c()V

    .line 156
    :cond_2
    sget-object v1, Lcom/etermax/gamescommon/menu/a/a$9;->a:[I

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a/e;->b()Lcom/etermax/gamescommon/menu/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/o;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$1;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/a;->c(Lcom/etermax/gamescommon/menu/a/a;)I

    .line 159
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$1;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/a;->d(Lcom/etermax/gamescommon/menu/a/a;)V

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$1;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/a;->e(Lcom/etermax/gamescommon/menu/a/a;)I

    .line 163
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$1;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/a;->f(Lcom/etermax/gamescommon/menu/a/a;)V

    goto :goto_0

    .line 166
    :pswitch_3
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$1;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/a;->g(Lcom/etermax/gamescommon/menu/a/a;)I

    .line 167
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$1;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/a;->h(Lcom/etermax/gamescommon/menu/a/a;)V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 156
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
