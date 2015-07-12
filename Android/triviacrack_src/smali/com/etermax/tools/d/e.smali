.class public final Lcom/etermax/tools/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/etermax/tools/d/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Lcom/etermax/tools/d/a;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lcom/etermax/tools/d/e;->a:Lcom/etermax/tools/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p2, p0, Lcom/etermax/tools/d/e;->b:Ljava/lang/String;

    .line 737
    iput-wide p3, p0, Lcom/etermax/tools/d/e;->c:J

    .line 738
    iput-object p5, p0, Lcom/etermax/tools/d/e;->d:[Ljava/io/InputStream;

    .line 739
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/tools/d/a;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/etermax/tools/d/a$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 730
    invoke-direct/range {p0 .. p5}, Lcom/etermax/tools/d/e;-><init>(Lcom/etermax/tools/d/a;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 754
    iget-object v0, p0, Lcom/etermax/tools/d/e;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 765
    iget-object v1, p0, Lcom/etermax/tools/d/e;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 766
    invoke-static {v3}, Lcom/etermax/tools/d/a;->a(Ljava/io/Closeable;)V

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_0
    return-void
.end method
