.class final Lcom/millennialmedia/a/a/b/t;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Lcom/millennialmedia/a/a/b/u;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 91
    new-instance v0, Lcom/millennialmedia/a/a/b/u;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/u;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/t;->b:Lcom/millennialmedia/a/a/b/u;

    .line 95
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/t;->a:Ljava/lang/Appendable;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lcom/millennialmedia/a/a/b/s$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/t;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public write(I)V
    .locals 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/t;->a:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 110
    return-void
.end method

.method public write([CII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/t;->b:Lcom/millennialmedia/a/a/b/u;

    iput-object p1, v0, Lcom/millennialmedia/a/a/b/u;->a:[C

    .line 103
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/t;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/t;->b:Lcom/millennialmedia/a/a/b/u;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 104
    return-void
.end method
