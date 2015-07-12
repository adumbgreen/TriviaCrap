.class public Lcom/etermax/gamescommon/user/a/c;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/user/a/b;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/user/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/etermax/gamescommon/user/a/c;->a:Lcom/etermax/gamescommon/user/a/b;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/c;->a:Lcom/etermax/gamescommon/user/a/b;

    invoke-static {v0}, Lcom/etermax/gamescommon/user/a/b;->b(Lcom/etermax/gamescommon/user/a/b;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/c;->a:Lcom/etermax/gamescommon/user/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/user/a/c;->a:Lcom/etermax/gamescommon/user/a/b;

    invoke-static {v1}, Lcom/etermax/gamescommon/user/a/b;->c(Lcom/etermax/gamescommon/user/a/b;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/user/a/b;->a(Lcom/etermax/gamescommon/user/a/b;Ljava/util/Map;)Ljava/util/Map;

    .line 206
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 207
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/c;->a:Lcom/etermax/gamescommon/user/a/b;

    invoke-static {v0}, Lcom/etermax/gamescommon/user/a/b;->b(Lcom/etermax/gamescommon/user/a/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/a/e;

    .line 209
    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/e;->b()Lcom/etermax/gamescommon/j;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/gamescommon/j;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/etermax/a/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 212
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/e;->b()Lcom/etermax/gamescommon/j;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/gamescommon/j;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    :cond_2
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 219
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 220
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 221
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 228
    iget-object v1, p0, Lcom/etermax/gamescommon/user/a/c;->a:Lcom/etermax/gamescommon/user/a/b;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/etermax/gamescommon/user/a/b;->b(Lcom/etermax/gamescommon/user/a/b;Ljava/util/Map;)Ljava/util/Map;

    .line 229
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/c;->a:Lcom/etermax/gamescommon/user/a/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/b;->notifyDataSetChanged()V

    .line 230
    return-void
.end method
