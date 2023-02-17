.class final Lcom/koushikdutta/ion/ContextReference$1;
.super Lcom/koushikdutta/ion/ContextReference$NormalContextReference;
.source "ContextReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/ContextReference;->fromContext(Landroid/content/Context;)Lcom/koushikdutta/ion/ContextReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/ion/ContextReference$NormalContextReference<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/ContextReference$NormalContextReference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isAlive()Ljava/lang/String;
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/koushikdutta/ion/ContextReference$1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Context reference null"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
