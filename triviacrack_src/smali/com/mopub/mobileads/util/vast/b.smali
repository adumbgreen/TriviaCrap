.class Lcom/mopub/mobileads/util/vast/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/util/vast/a;

.field private final b:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/util/vast/a;Lorg/w3c/dom/Node;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mopub/mobileads/util/vast/b;->a:Lcom/mopub/mobileads/util/vast/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Companion node cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p2, p0, Lcom/mopub/mobileads/util/vast/b;->b:Lorg/w3c/dom/Node;

    .line 59
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/b;->b:Lorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/e;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/b;->b:Lorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/e;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/b;->b:Lorg/w3c/dom/Node;

    const-string v1, "StaticResource"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/e;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 74
    const-string v1, "creativeType"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/e;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/b;->b:Lorg/w3c/dom/Node;

    const-string v1, "StaticResource"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/e;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/mopub/mobileads/util/vast/e;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/b;->b:Lorg/w3c/dom/Node;

    const-string v1, "CompanionClickThrough"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/e;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/mopub/mobileads/util/vast/e;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/b;->b:Lorg/w3c/dom/Node;

    const-string v2, "TrackingEvents"

    invoke-static {v0, v2}, Lcom/mopub/mobileads/util/vast/e;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 100
    if-nez v0, :cond_0

    move-object v0, v1

    .line 117
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const-string v2, "Tracking"

    const-string v3, "event"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "creativeView"

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/mopub/mobileads/util/vast/e;->b(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 112
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 113
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 117
    goto :goto_0
.end method
