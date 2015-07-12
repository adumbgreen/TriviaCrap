.class final Lcom/millennialmedia/a/a/b/a/p$18;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/a/a/b/a/p;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/a/a/s",
        "<",
        "Lcom/millennialmedia/a/a/j;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/j;
    .locals 3
    .parameter

    .prologue
    .line 772
    sget-object v0, Lcom/millennialmedia/a/a/b/a/p$25;->a:[I

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/millennialmedia/a/a/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 804
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 774
    :pswitch_0
    new-instance v0, Lcom/millennialmedia/a/a/o;

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/o;-><init>(Ljava/lang/String;)V

    .line 798
    :goto_0
    return-object v0

    .line 776
    :pswitch_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 777
    new-instance v0, Lcom/millennialmedia/a/a/o;

    new-instance v2, Lcom/millennialmedia/a/a/b/i;

    invoke-direct {v2, v1}, Lcom/millennialmedia/a/a/b/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/millennialmedia/a/a/o;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 779
    :pswitch_2
    new-instance v0, Lcom/millennialmedia/a/a/o;

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/o;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 781
    :pswitch_3
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 782
    sget-object v0, Lcom/millennialmedia/a/a/l;->a:Lcom/millennialmedia/a/a/l;

    goto :goto_0

    .line 784
    :pswitch_4
    new-instance v0, Lcom/millennialmedia/a/a/h;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/h;-><init>()V

    .line 785
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V

    .line 786
    :goto_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$18;->a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/h;->a(Lcom/millennialmedia/a/a/j;)V

    goto :goto_1

    .line 789
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V

    goto :goto_0

    .line 792
    :pswitch_5
    new-instance v0, Lcom/millennialmedia/a/a/m;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/m;-><init>()V

    .line 793
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->c()V

    .line 794
    :goto_2
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$18;->a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/a/a/m;->a(Ljava/lang/String;Lcom/millennialmedia/a/a/j;)V

    goto :goto_2

    .line 797
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->d()V

    goto :goto_0

    .line 772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lcom/millennialmedia/a/a/d/c;Lcom/millennialmedia/a/a/j;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 811
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/millennialmedia/a/a/j;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;

    .line 843
    :goto_0
    return-void

    .line 813
    :cond_1
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/j;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 814
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/j;->m()Lcom/millennialmedia/a/a/o;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 816
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->a(Ljava/lang/Number;)Lcom/millennialmedia/a/a/d/c;

    goto :goto_0

    .line 817
    :cond_2
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 818
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->a(Z)Lcom/millennialmedia/a/a/d/c;

    goto :goto_0

    .line 820
    :cond_3
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    goto :goto_0

    .line 823
    :cond_4
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/j;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 824
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->b()Lcom/millennialmedia/a/a/d/c;

    .line 825
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/j;->l()Lcom/millennialmedia/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/h;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/j;

    .line 826
    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/b/a/p$18;->a(Lcom/millennialmedia/a/a/d/c;Lcom/millennialmedia/a/a/j;)V

    goto :goto_1

    .line 828
    :cond_5
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->c()Lcom/millennialmedia/a/a/d/c;

    goto :goto_0

    .line 830
    :cond_6
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/j;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 831
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->d()Lcom/millennialmedia/a/a/d/c;

    .line 832
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/j;->k()Lcom/millennialmedia/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->o()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 834
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/millennialmedia/a/a/d/c;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    .line 835
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/j;

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/b/a/p$18;->a(Lcom/millennialmedia/a/a/d/c;Lcom/millennialmedia/a/a/j;)V

    goto :goto_2

    .line 837
    :cond_7
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->e()Lcom/millennialmedia/a/a/d/c;

    goto/16 :goto_0

    .line 840
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 768
    check-cast p2, Lcom/millennialmedia/a/a/j;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$18;->a(Lcom/millennialmedia/a/a/d/c;Lcom/millennialmedia/a/a/j;)V

    return-void
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 768
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$18;->a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/j;

    move-result-object v0

    return-object v0
.end method
