.class public interface abstract Lcom/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/b/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/b/a/e$1;

    invoke-direct {v0}, Lcom/b/a/e$1;-><init>()V

    sput-object v0, Lcom/b/a/e;->a:Lcom/b/a/e;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract b()I
.end method
