.class public Lcom/etermax/tools/widget/a/c;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/tools/widget/a/b;


# direct methods
.method public constructor <init>(Lcom/etermax/tools/widget/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/etermax/tools/widget/a/c;->a:Lcom/etermax/tools/widget/a/b;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .parameter

    .prologue
    .line 58
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 60
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/a/c;->a:Lcom/etermax/tools/widget/a/b;

    iget-object v0, v0, Lcom/etermax/tools/widget/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 62
    iget-object v0, p0, Lcom/etermax/tools/widget/a/c;->a:Lcom/etermax/tools/widget/a/b;

    iget-object v0, v0, Lcom/etermax/tools/widget/a/b;->c:Ljava/util/List;

    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 86
    :goto_0
    return-object v2

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/widget/a/c;->a:Lcom/etermax/tools/widget/a/b;

    invoke-static {v0}, Lcom/etermax/tools/widget/a/b;->a(Lcom/etermax/tools/widget/a/b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/etermax/tools/widget/a/c;->a:Lcom/etermax/tools/widget/a/b;

    iget-object v1, p0, Lcom/etermax/tools/widget/a/c;->a:Lcom/etermax/tools/widget/a/b;

    iget-object v1, v1, Lcom/etermax/tools/widget/a/b;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/etermax/tools/widget/a/b;->a(Lcom/etermax/tools/widget/a/b;Ljava/util/List;)Ljava/util/List;

    .line 68
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v0, p0, Lcom/etermax/tools/widget/a/c;->a:Lcom/etermax/tools/widget/a/b;

    invoke-static {v0}, Lcom/etermax/tools/widget/a/b;->a(Lcom/etermax/tools/widget/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 70
    instance-of v0, v1, Lcom/etermax/tools/widget/a/d;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 72
    check-cast v0, Lcom/etermax/tools/widget/a/d;

    invoke-interface {v0}, Lcom/etermax/tools/widget/a/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 75
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 84
    iput-object v3, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v1, p0, Lcom/etermax/tools/widget/a/c;->a:Lcom/etermax/tools/widget/a/b;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/etermax/tools/widget/a/b;->c:Ljava/util/List;

    .line 94
    iget-object v0, p0, Lcom/etermax/tools/widget/a/c;->a:Lcom/etermax/tools/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/a/b;->notifyDataSetChanged()V

    .line 95
    return-void
.end method
