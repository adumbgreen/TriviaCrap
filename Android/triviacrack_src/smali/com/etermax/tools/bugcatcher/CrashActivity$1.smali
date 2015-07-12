.class Lcom/etermax/tools/bugcatcher/CrashActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/bugcatcher/CrashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/bugcatcher/CrashActivity;


# direct methods
.method constructor <init>(Lcom/etermax/tools/bugcatcher/CrashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etermax/tools/bugcatcher/CrashActivity$1;->a:Lcom/etermax/tools/bugcatcher/CrashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/CrashActivity$1;->a:Lcom/etermax/tools/bugcatcher/CrashActivity;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/CrashActivity;->a(Lcom/etermax/tools/bugcatcher/CrashActivity;)V

    .line 39
    return-void
.end method
