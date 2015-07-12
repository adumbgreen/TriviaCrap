.class Lorg/b/e/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z

.field private static final b:Z

.field private static final c:Z

.field private static final d:Z

.field private static final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 666
    const-string v0, "javax.xml.transform.Source"

    const-class v3, Lorg/b/e/a/k;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/b/d/b;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    sput-boolean v0, Lorg/b/e/a/m;->a:Z

    .line 669
    const-string v0, "org.simpleframework.xml.Serializer"

    const-class v3, Lorg/b/e/a/k;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/b/d/b;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    sput-boolean v0, Lorg/b/e/a/m;->b:Z

    .line 672
    const-string v0, "org.codehaus.jackson.map.ObjectMapper"

    const-class v3, Lorg/b/e/a/k;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/b/d/b;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "org.codehaus.jackson.JsonGenerator"

    const-class v3, Lorg/b/e/a/k;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/b/d/b;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/b/e/a/m;->c:Z

    .line 676
    const-string v0, "com.fasterxml.jackson.databind.ObjectMapper"

    const-class v3, Lorg/b/e/a/k;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/b/d/b;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.fasterxml.jackson.core.JsonGenerator"

    const-class v3, Lorg/b/e/a/k;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/b/d/b;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lorg/b/e/a/m;->d:Z

    .line 680
    const-string v0, "com.google.code.rome.android.repackaged.com.sun.syndication.feed.synd.SyndFeed"

    const-class v1, Lorg/b/e/a/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/b/d/b;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    sput-boolean v0, Lorg/b/e/a/m;->e:Z

    return-void

    :cond_0
    move v0, v2

    .line 672
    goto :goto_0

    :cond_1
    move v1, v2

    .line 676
    goto :goto_1
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/b/c/b/f",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 684
    new-instance v0, Lorg/b/c/b/b;

    invoke-direct {v0}, Lorg/b/c/b/b;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v0, Lorg/b/c/b/j;

    invoke-direct {v0}, Lorg/b/c/b/j;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    new-instance v0, Lorg/b/c/b/i;

    invoke-direct {v0}, Lorg/b/c/b/i;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    sget-boolean v0, Lorg/b/e/a/m;->a:Z

    if-eqz v0, :cond_3

    .line 690
    new-instance v0, Lorg/b/c/b/c/c;

    invoke-direct {v0}, Lorg/b/c/b/c/c;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    new-instance v0, Lorg/b/c/b/c/e;

    invoke-direct {v0}, Lorg/b/c/b/c/e;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    :goto_0
    sget-boolean v0, Lorg/b/e/a/m;->b:Z

    if-eqz v0, :cond_0

    .line 697
    new-instance v0, Lorg/b/c/b/c/b;

    invoke-direct {v0}, Lorg/b/c/b/c/b;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_0
    sget-boolean v0, Lorg/b/e/a/m;->d:Z

    if-eqz v0, :cond_4

    .line 701
    new-instance v0, Lorg/b/c/b/b/b;

    invoke-direct {v0}, Lorg/b/c/b/b/b;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_1
    :goto_1
    sget-boolean v0, Lorg/b/e/a/m;->e:Z

    if-eqz v0, :cond_2

    .line 707
    new-instance v0, Lorg/b/c/b/a/a;

    invoke-direct {v0}, Lorg/b/c/b/a/a;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_2
    return-void

    .line 693
    :cond_3
    new-instance v0, Lorg/b/c/b/c;

    invoke-direct {v0}, Lorg/b/c/b/c;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 702
    :cond_4
    sget-boolean v0, Lorg/b/e/a/m;->c:Z

    if-eqz v0, :cond_1

    .line 703
    new-instance v0, Lorg/b/c/b/b/c;

    invoke-direct {v0}, Lorg/b/c/b/b/c;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
