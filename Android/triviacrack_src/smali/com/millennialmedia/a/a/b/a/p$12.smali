.class final Lcom/millennialmedia/a/a/b/a/p$12;
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
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/BitSet;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 101
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 104
    :cond_0
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 105
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V

    .line 107
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    move v1, v2

    .line 108
    :goto_1
    sget-object v5, Lcom/millennialmedia/a/a/d/b;->b:Lcom/millennialmedia/a/a/d/b;

    if-eq v0, v5, :cond_4

    .line 110
    sget-object v5, Lcom/millennialmedia/a/a/b/a/p$25;->a:[I

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/d/b;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 128
    new-instance v1, Lcom/millennialmedia/a/a/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid bitset value type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :pswitch_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->m()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 131
    :goto_2
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 134
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 135
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 112
    goto :goto_2

    .line 115
    :pswitch_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->i()Z

    move-result v0

    goto :goto_2

    .line 118
    :pswitch_2
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 120
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    .line 121
    :catch_0
    move-exception v1

    .line 122
    new-instance v1, Lcom/millennialmedia/a/a/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_4
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V

    move-object v0, v4

    .line 138
    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$12;->a(Lcom/millennialmedia/a/a/d/c;Ljava/util/BitSet;)V

    return-void
.end method

.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/util/BitSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 143
    if-nez p2, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->b()Lcom/millennialmedia/a/a/d/c;

    move v0, v1

    .line 149
    :goto_1
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 150
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 151
    :goto_2
    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/millennialmedia/a/a/d/c;->a(J)Lcom/millennialmedia/a/a/d/c;

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 150
    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->c()Lcom/millennialmedia/a/a/d/c;

    goto :goto_0
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$12;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method
