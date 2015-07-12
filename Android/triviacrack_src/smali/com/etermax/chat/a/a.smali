.class public Lcom/etermax/chat/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/gamescommon/login/datasource/a;

.field b:Lcom/etermax/chat/a/a/d;

.field c:Lcom/etermax/chat/ui/adapter/a;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/etermax/chat/a/c;

.field private f:Lcom/etermax/chat/a/b;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/etermax/chat/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/etermax/chat/a/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/chat/a/a;->d:Ljava/util/ArrayList;

    .line 258
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/a/g;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/a/g;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/a/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 245
    new-instance v0, Lcom/etermax/chat/a/d;

    invoke-direct {v0, p0}, Lcom/etermax/chat/a/d;-><init>(Lcom/etermax/chat/a/a;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    const-wide/16 v0, 0x0

    .line 248
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/a/g;

    .line 249
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/g;->f()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-eqz v5, :cond_1

    .line 250
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/g;->f()J

    move-result-wide v0

    :goto_1
    move-wide v1, v0

    goto :goto_0

    .line 255
    :cond_0
    return-object v3

    :cond_1
    move-wide v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/etermax/chat/a/l;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/etermax/chat/a/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/l;

    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;J)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/a/g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;

    .line 163
    new-instance v5, Lcom/etermax/chat/a/a/g;

    invoke-direct {v5}, Lcom/etermax/chat/a/a/g;-><init>()V

    .line 165
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/etermax/chat/a/a/g;->a(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getParsedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/etermax/chat/a/a/g;->d(J)V

    .line 167
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getType()Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/etermax/chat/a/a/g;->b(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getUserId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/etermax/chat/a/a/g;->b(J)V

    .line 169
    invoke-virtual {v5, p2, p3}, Lcom/etermax/chat/a/a/g;->c(J)V

    .line 172
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getReason()Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Lcom/etermax/chat/a/a/g;->c(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getSourceApplication()Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Lcom/etermax/chat/a/a/g;->d(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getUser_to_mention()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/etermax/chat/a/a/g;->a(Ljava/lang/Long;)V

    .line 176
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getReason()Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getSourceApplication()Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 180
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/etermax/chat/a/a;->c(J)Lcom/etermax/chat/a/a/a;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/etermax/chat/a/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/a/a;->b(Ljava/util/ArrayList;)V

    .line 185
    iget-object v1, p0, Lcom/etermax/chat/a/a;->b:Lcom/etermax/chat/a/a/d;

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/a/a;->a(Lcom/etermax/chat/a/a/d;)V

    .line 187
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/chat/a/a;->g:Ljava/util/HashMap;

    .line 52
    new-instance v0, Lcom/etermax/chat/a/l;

    invoke-direct {v0}, Lcom/etermax/chat/a/l;-><init>()V

    iput-object v0, p0, Lcom/etermax/chat/a/a;->h:Lcom/etermax/chat/a/l;

    .line 53
    iget-object v0, p0, Lcom/etermax/chat/a/a;->h:Lcom/etermax/chat/a/l;

    iget-object v1, p0, Lcom/etermax/chat/a/a;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/l;->b(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/etermax/chat/a/a;->h:Lcom/etermax/chat/a/l;

    iget-object v0, p0, Lcom/etermax/chat/a/a;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/chat/a/a;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/etermax/chat/a/l;->a(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/etermax/chat/a/a;->h:Lcom/etermax/chat/a/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/l;->a(Z)V

    .line 56
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/etermax/chat/a/a;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/etermax/chat/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/etermax/chat/a/a;->c(J)Lcom/etermax/chat/a/a/a;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/etermax/chat/a/a;->b:Lcom/etermax/chat/a/a/d;

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/a/a;->b(Lcom/etermax/chat/a/a/d;)V

    .line 198
    return-void
.end method

.method public a(Lcom/etermax/chat/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/etermax/chat/a/a;->f:Lcom/etermax/chat/a/b;

    .line 114
    return-void
.end method

.method public a(Lcom/etermax/chat/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/etermax/chat/a/a;->e:Lcom/etermax/chat/a/c;

    .line 64
    return-void
.end method

.method public a(Lcom/etermax/chat/a/f;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/chat/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/etermax/chat/a/a;->d:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/etermax/chat/a/j;->a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    .line 73
    iget-object v0, p0, Lcom/etermax/chat/a/a;->f:Lcom/etermax/chat/a/b;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/etermax/chat/a/a;->f:Lcom/etermax/chat/a/b;

    invoke-interface {v0}, Lcom/etermax/chat/a/b;->g_()V

    .line 76
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/etermax/chat/a/l;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/etermax/chat/a/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lcom/etermax/chat/a/a;->d:Ljava/util/ArrayList;

    .line 81
    iget-object v0, p0, Lcom/etermax/chat/a/a;->c:Lcom/etermax/chat/ui/adapter/a;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/adapter/a;->notifyDataSetChanged()V

    .line 83
    iget-object v0, p0, Lcom/etermax/chat/a/a;->f:Lcom/etermax/chat/a/b;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/etermax/chat/a/a;->f:Lcom/etermax/chat/a/b;

    invoke-interface {v0}, Lcom/etermax/chat/a/b;->g_()V

    .line 86
    :cond_0
    return-void
.end method

.method public b()Lcom/etermax/chat/ui/adapter/a;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/chat/a/a;->c:Lcom/etermax/chat/ui/adapter/a;

    return-object v0
.end method

.method public b(J)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/a/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/etermax/chat/a/a;->c(J)Lcom/etermax/chat/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/chat/a/a/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/etermax/chat/a/f;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/etermax/chat/a/a;->e:Lcom/etermax/chat/a/c;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/etermax/chat/a/a;->e:Lcom/etermax/chat/a/c;

    invoke-interface {v0, p1}, Lcom/etermax/chat/a/c;->a(Lcom/etermax/chat/a/f;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/etermax/chat/a/a;->a(Lcom/etermax/chat/a/f;)V

    goto :goto_0
.end method

.method public c(J)Lcom/etermax/chat/a/a/a;
    .locals 4
    .parameter

    .prologue
    .line 212
    new-instance v0, Lcom/etermax/chat/a/a/a;

    iget-object v1, p0, Lcom/etermax/chat/a/a;->b:Lcom/etermax/chat/a/a/d;

    invoke-direct {v0, v1, p1, p2}, Lcom/etermax/chat/a/a/a;-><init>(Lcom/etermax/chat/a/a/d;J)V

    .line 214
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v1, Lcom/etermax/chat/a/a/h;

    invoke-direct {v1}, Lcom/etermax/chat/a/a/h;-><init>()V

    .line 218
    invoke-virtual {v1, p1, p2}, Lcom/etermax/chat/a/a/h;->b(J)V

    .line 219
    iget-object v2, p0, Lcom/etermax/chat/a/a;->h:Lcom/etermax/chat/a/l;

    invoke-virtual {v2}, Lcom/etermax/chat/a/l;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/etermax/chat/a/a/h;->c(J)V

    .line 220
    new-instance v2, Lcom/etermax/chat/a/a/h;

    invoke-direct {v2}, Lcom/etermax/chat/a/a/h;-><init>()V

    .line 221
    invoke-virtual {v2, p1, p2}, Lcom/etermax/chat/a/a/h;->b(J)V

    .line 222
    invoke-virtual {v2, p1, p2}, Lcom/etermax/chat/a/a/h;->c(J)V

    .line 223
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {v0, v3}, Lcom/etermax/chat/a/a/a;->a(Ljava/util/ArrayList;)V

    .line 229
    :cond_0
    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/etermax/chat/a/a;->f:Lcom/etermax/chat/a/b;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/etermax/chat/a/a;->f:Lcom/etermax/chat/a/b;

    invoke-interface {v0}, Lcom/etermax/chat/a/b;->g_()V

    .line 92
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/etermax/chat/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/etermax/chat/a/a;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()Lcom/etermax/chat/a/l;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/etermax/chat/a/a;->h:Lcom/etermax/chat/a/l;

    return-object v0
.end method
