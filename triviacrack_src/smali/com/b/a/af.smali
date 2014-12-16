.class public interface abstract Lcom/b/a/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/b/a/af;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/b/a/af$1;

    invoke-direct {v0}, Lcom/b/a/af$1;-><init>()V

    sput-object v0, Lcom/b/a/af;->a:Lcom/b/a/af;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/b/a/ai;)Lcom/b/a/ai;
.end method
