.class Lcom/mopub/mobileads/util/vast/c;
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
    .line 127
    iput-object p1, p0, Lcom/mopub/mobileads/util/vast/c;->a:Lcom/mopub/mobileads/util/vast/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    if-nez p2, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Media node cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iput-object p2, p0, Lcom/mopub/mobileads/util/vast/c;->b:Lorg/w3c/dom/Node;

    .line 132
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/c;->b:Lorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/e;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/c;->b:Lorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/e;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/c;->b:Lorg/w3c/dom/Node;

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/e;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/c;->b:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/mopub/mobileads/util/vast/e;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
