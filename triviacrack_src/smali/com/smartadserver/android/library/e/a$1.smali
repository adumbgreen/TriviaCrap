.class Lcom/smartadserver/android/library/e/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/e/a;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/e/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/smartadserver/android/library/e/a$1;->a:Lcom/smartadserver/android/library/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter

    .prologue
    .line 453
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
