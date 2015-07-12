.class public Lcom/etermax/gamescommon/dashboard/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/etermax/gamescommon/dashboard/a/b/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/widget/a/f",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 11
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/dashboard/a/b/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/widget/a/h",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 22
    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/dashboard/a/b/b;

    .line 24
    invoke-interface {v0}, Lcom/etermax/gamescommon/dashboard/a/b/b;->getSectionType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 26
    :pswitch_0
    new-instance v7, Lcom/etermax/tools/widget/a/g;

    invoke-direct {v7, v0, v8}, Lcom/etermax/tools/widget/a/g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :pswitch_1
    new-instance v7, Lcom/etermax/tools/widget/a/g;

    invoke-direct {v7, v0, v10}, Lcom/etermax/tools/widget/a/g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :pswitch_2
    new-instance v7, Lcom/etermax/tools/widget/a/g;

    invoke-direct {v7, v0, v9}, Lcom/etermax/tools/widget/a/g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :pswitch_3
    new-instance v7, Lcom/etermax/tools/widget/a/g;

    invoke-direct {v7, v0, v11}, Lcom/etermax/tools/widget/a/g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 42
    new-instance v0, Lcom/etermax/tools/widget/a/h;

    invoke-direct {v0, v2, v8}, Lcom/etermax/tools/widget/a/h;-><init>(Ljava/util/List;I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 46
    new-instance v0, Lcom/etermax/tools/widget/a/h;

    invoke-direct {v0, v3, v9}, Lcom/etermax/tools/widget/a/h;-><init>(Ljava/util/List;I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 50
    new-instance v0, Lcom/etermax/tools/widget/a/h;

    invoke-direct {v0, v4, v10}, Lcom/etermax/tools/widget/a/h;-><init>(Ljava/util/List;I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 54
    new-instance v0, Lcom/etermax/tools/widget/a/h;

    invoke-direct {v0, v5, v11}, Lcom/etermax/tools/widget/a/h;-><init>(Ljava/util/List;I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_4
    return-object v1

    .line 24
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
