.class Lcom/etermax/tools/bugcatcher/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/etermax/tools/bugcatcher/a;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/etermax/tools/bugcatcher/a;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/etermax/tools/bugcatcher/b;->a:Lcom/etermax/tools/bugcatcher/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/etermax/tools/bugcatcher/b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 101
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 106
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 107
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 108
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/etermax/tools/bugcatcher/b;->a:Lcom/etermax/tools/bugcatcher/a;

    invoke-static {v2}, Lcom/etermax/tools/bugcatcher/a;->a(Lcom/etermax/tools/bugcatcher/a;)Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/etermax/tools/bugcatcher/CrashActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    const-string v2, "message"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v2, "stacktrace"

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/b;->a:Lcom/etermax/tools/bugcatcher/a;

    iget-object v2, p0, Lcom/etermax/tools/bugcatcher/b;->a:Lcom/etermax/tools/bugcatcher/a;

    invoke-static {v2}, Lcom/etermax/tools/bugcatcher/a;->a(Lcom/etermax/tools/bugcatcher/a;)Landroid/app/Application;

    move-result-object v2

    const v3, 0x1080027

    const/16 v4, 0x37

    invoke-static {v0, v2, v3, v1, v4}, Lcom/etermax/tools/bugcatcher/a;->a(Lcom/etermax/tools/bugcatcher/a;Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 113
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 114
    return-void
.end method
