.class public Lcom/etermax/chat/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/chat/ui/f;


# instance fields
.field private a:Lcom/etermax/chat/a/a/b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/etermax/chat/a/a/d;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1, p2, p3}, Lcom/etermax/chat/a/a/d;->b(J)Lcom/etermax/chat/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/a/a/a;->a:Lcom/etermax/chat/a/a/b;

    .line 16
    invoke-virtual {p1, p2, p3}, Lcom/etermax/chat/a/a/d;->c(J)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/a/a/a;->b:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1, p2, p3}, Lcom/etermax/chat/a/a/d;->a(J)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/a/a/a;->c:Ljava/util/ArrayList;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/chat/a/a/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/chat/a/a/a;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lcom/etermax/chat/a/a/d;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/chat/a/a/a;->a:Lcom/etermax/chat/a/a/b;

    invoke-virtual {p1, v0}, Lcom/etermax/chat/a/a/d;->a(Lcom/etermax/chat/a/a/b;)V

    .line 22
    iget-object v0, p0, Lcom/etermax/chat/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/etermax/chat/a/a/d;->a(Ljava/util/List;)V

    .line 23
    iget-object v0, p0, Lcom/etermax/chat/a/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/etermax/chat/a/a/d;->a(Ljava/util/ArrayList;)V

    .line 24
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/a/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etermax/chat/a/a/a;->b:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/a/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/chat/a/a/a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Lcom/etermax/chat/a/a/d;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/chat/a/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/etermax/chat/a/a/d;->b(Ljava/util/ArrayList;)V

    .line 28
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/a/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/etermax/chat/a/a/a;->c:Ljava/util/ArrayList;

    .line 44
    return-void
.end method
