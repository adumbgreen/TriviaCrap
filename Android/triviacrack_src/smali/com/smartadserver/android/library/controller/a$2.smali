.class Lcom/smartadserver/android/library/controller/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/a;->a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/a;ILorg/json/JSONObject;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/b;

.field final synthetic b:Lcom/smartadserver/android/library/d/a;

.field final synthetic c:Lcom/smartadserver/android/library/controller/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/controller/b;Lcom/smartadserver/android/library/d/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/a$2;->c:Lcom/smartadserver/android/library/controller/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/controller/a$2;->a:Lcom/smartadserver/android/library/controller/b;

    iput-object p3, p0, Lcom/smartadserver/android/library/controller/a$2;->b:Lcom/smartadserver/android/library/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$2;->a:Lcom/smartadserver/android/library/controller/b;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$2;->b:Lcom/smartadserver/android/library/d/a;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/b;->adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V

    .line 169
    return-void
.end method
