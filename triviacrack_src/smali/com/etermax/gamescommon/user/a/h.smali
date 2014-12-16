.class public Lcom/etermax/gamescommon/user/a/h;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/user/a/g;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/user/a/g;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/etermax/gamescommon/user/a/h;->a:Lcom/etermax/gamescommon/user/a/g;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/h;->a:Lcom/etermax/gamescommon/user/a/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/user/a/g;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/h;->a:Lcom/etermax/gamescommon/user/a/g;

    iget-object v1, p0, Lcom/etermax/gamescommon/user/a/h;->a:Lcom/etermax/gamescommon/user/a/g;

    iget-object v1, v1, Lcom/etermax/gamescommon/user/a/g;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/etermax/gamescommon/user/a/g;->c:Ljava/util/List;

    .line 166
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/h;->a:Lcom/etermax/gamescommon/user/a/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/user/a/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/a/f;

    .line 168
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/user/a/f;->a(Ljava/lang/CharSequence;)Lcom/etermax/gamescommon/user/a/f;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_2
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 175
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 176
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 177
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v1, p0, Lcom/etermax/gamescommon/user/a/h;->a:Lcom/etermax/gamescommon/user/a/g;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/etermax/gamescommon/user/a/g;->a(Lcom/etermax/gamescommon/user/a/g;Ljava/util/List;)V

    .line 185
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/h;->a:Lcom/etermax/gamescommon/user/a/g;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/g;->notifyDataSetChanged()V

    .line 186
    return-void
.end method
